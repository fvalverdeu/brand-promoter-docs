---
name: generate-review-package
description: Generate an external Spanish escalation or mandatory gate review package with safe Git evidence and manifest; use only when review is required.
---
# Generate review package
1. Read docs/process/review-package-policy.md and escalation-report-template.md. Locate workspace and four repos; confirm actual paths and baseline SHAs.
2. Inspect candidate diffs, staged content, untracked and relevant ignored paths for secrets and irrelevant large files. Do not export unsafe data. Choose sanitized manual evidence if needed.
3. Run scripts/New-ReviewPackage.ps1 with WorkspaceRoot, ReviewId and BaselinesJson (JSON object mapping each of the four exact repo names to full SHA). Use -SafeToExport only after inspection. The helper captures evidence, not final ZIP. If unavailable, use equivalent safe commands and explain limitations.
4. Write Spanish report.md and complete manifest.md with exclusions, coverage checks, commands/tests and decisions. Include optional safe attachments. Compare Git status before/after and verify real index unchanged. Resolve missing relevant evidence safely.
5. Check all exported files for secrets, size and completeness. Zip the review directory into its external sibling ZIP (PowerShell Compress-Archive or equivalent), verify archive entries and report absolute path. Do not overwrite existing review IDs. Stop for approval.
