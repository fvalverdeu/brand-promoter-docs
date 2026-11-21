[CmdletBinding()]
param(
 [Parameter(Mandatory)][string]$WorkspaceRoot,
 [Parameter(Mandatory)][ValidatePattern('^REVIEW-[0-9]+-[a-zA-Z0-9-]+$')][string]$ReviewId,
 [Parameter(Mandatory)][string]$BaselinesJson,
 [switch]$SafeToExport
)
$ErrorActionPreference = 'Stop'
if (-not $SafeToExport) { throw 'Inspect candidate content for secrets first; see review-package-policy.md.' }
if ($env:GIT_INDEX_FILE) { throw 'Existing GIT_INDEX_FILE must be unset.' }
$root = (Resolve-Path -LiteralPath $WorkspaceRoot).Path
$baseMap = ConvertFrom-Json $BaselinesJson
$names = @('brand-promoter-docs','brand-promoter-api','brand-promoter-web','brand-promoter-mobile')
$out = Join-Path (Split-Path -Parent $root) 'brand-promoter-reviews'
$dest = Join-Path $out $ReviewId
if ((Test-Path $dest) -or (Test-Path "$dest.zip")) { throw 'Review ID already exists.' }
function GitText([string]$Repo,[string[]]$GitArgs) {
 $result = & git --no-optional-locks -C $Repo @GitArgs
 if ($LASTEXITCODE -ne 0) { throw "Git failed: $($GitArgs -join ' ')" }
 return ($result -join "`n")
}
function SaveDiff([string]$Repo,[string]$File,[string[]]$DiffArgs) {
 # Git writes patch bytes directly; avoids PowerShell redirection encoding changes.
 & git --no-optional-locks -C $Repo -c core.quotePath=true diff --no-ext-diff --no-textconv --no-color --binary --full-index "--output=$File" @DiffArgs
 if ($LASTEXITCODE -ne 0) { throw "Diff failed: $File" }
}
foreach ($name in $names) {
 $repo = Join-Path $root $name
 $top = GitText $repo @('rev-parse','--show-toplevel')
 if ((Resolve-Path $top).Path -ne (Resolve-Path $repo).Path) { throw "Not independent repository: $name" }
 $base = [string]$baseMap.$name
 if ($base -notmatch '^([0-9a-f]{40}|[0-9a-f]{64})$') { throw "Missing full baseline SHA: $name" }
 $null = GitText $repo @('cat-file','-e',"$base^{commit}")
 if (GitText $repo @('ls-files','-u')) { throw "Unmerged index: $name" }
}
# Refuse output within any Git worktree, including a parent repository.
if (-not (Test-Path $out)) { New-Item -ItemType Directory -Path $out | Out-Null }
& git --no-optional-locks -C $out rev-parse --is-inside-work-tree 2>$null | Out-Null
if ($LASTEXITCODE -eq 0) { throw 'Review output must be outside Git worktrees.' }
New-Item -ItemType Directory -Path $dest | Out-Null
$diffdir = Join-Path $dest 'diffs'; New-Item -ItemType Directory -Path $diffdir | Out-Null
$manifest = @('# Review manifest',"Review: $ReviewId",'Capture only; coverage/security review and Spanish report pending.')
foreach ($name in $names) {
 $repo = Join-Path $root $name; $base = [string]$baseMap.$name
 $head = GitText $repo @('rev-parse','HEAD')
 $branch = GitText $repo @('rev-parse','--abbrev-ref','HEAD')
 $before = GitText $repo @('status','--porcelain=v1','--untracked-files=all')
 $index = GitText $repo @('rev-parse','--path-format=absolute','--git-path','index')
 $hash = if (Test-Path $index) { (Get-FileHash $index).Hash } else { 'ABSENT' }
 $prefix = Join-Path $diffdir $name
 SaveDiff $repo "$prefix.committed.diff" @($base,'HEAD','--')
 SaveDiff $repo "$prefix.staged.diff" @('--cached','HEAD','--')
 SaveDiff $repo "$prefix.unstaged.diff" @('--')
 $untracked = GitText $repo @('ls-files','--others','--exclude-standard')
 $temp = Join-Path ([IO.Path]::GetTempPath()) ([Guid]::NewGuid().ToString() + '.index')
 try {
  $env:GIT_INDEX_FILE = $temp
  $null = GitText $repo @('read-tree','HEAD')
  $null = GitText $repo @('add','-A','--','.')
  SaveDiff $repo "$prefix.diff" @('--cached',$base,'--')
  $coverage = GitText $repo @('diff','--cached','--name-status',$base,'--')
 } finally {
  Remove-Item Env:GIT_INDEX_FILE -ErrorAction SilentlyContinue
  Remove-Item -LiteralPath $temp,"$temp.lock" -Force -ErrorAction SilentlyContinue
 }
 $after = GitText $repo @('status','--porcelain=v1','--untracked-files=all')
 $afterHash = if (Test-Path $index) { (Get-FileHash $index).Hash } else { 'ABSENT' }
 if ($before -cne $after -or $hash -cne $afterHash -or $head -ne (GitText $repo @('rev-parse','HEAD'))) { throw "Repository changed during capture: $name. Do not publish partial evidence." }
 $manifest += @('',"## $name","Base: $base","HEAD: $head","Branch: $branch",'Real index unchanged: yes','Status:', '```', $before,'```','Untracked:', '```',$untracked,'```','Net patch coverage:', '```',$coverage,'```')
}
$manifest += @('','## Pending manual verification','Compare coverage against status, stage-specific patches and ignored relevant files. Record exclusions, sanitized evidence and security review. Do not publish until complete.')
$manifest | Set-Content -LiteralPath (Join-Path $dest 'manifest.md') -Encoding UTF8
Write-Output $dest
