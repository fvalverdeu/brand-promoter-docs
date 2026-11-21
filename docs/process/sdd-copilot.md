# Incremental SDD + Copilot
1. Discover: read backlog, specs, ADRs and affected repositories; inspect actual context.
2. Specify: derive technical details and verifiable scenarios within approved requirements; record drafts and escalate decisions outside autonomy before implementation.
3. Plan: identify repositories, order, compatibility, tests and baseline SHAs; no separate approval for routine authorized work.
4. Implement: small HU-sized increments, API/contract first, then clients; preserve independent repositories.
5. Verify: run tests/lint/build, check permissions and migrations; record observed outcomes and NOT RUN where applicable.
6. Record: update matrix, status, implementation record and proposed commits/PRs. Continue with next authorized ready item without a new prompt.

Follow autonomy-policy.md, review-gates.md, review-package-policy.md and change-control.md. One English internal record per completed or blocked HU; external Spanish review package only at gates or escalation. Do not claim tests passed without evidence. Do not change approved requirements, endpoints, authorization, architecture or schema outside approval. No destructive changes or publishing without authorization. Versioned documentation and observed state are authoritative; conversation history is not a substitute.

## Skills and instructions
Repository-wide instructions live in .github/copilot-instructions.md. The review skill is under .github/skills/generate-review-package/; if discovery is unsupported, read its SKILL.md explicitly. An SDD framework is not required. The developer owns decisions and integration; ChatGPT is optional consultation only.
