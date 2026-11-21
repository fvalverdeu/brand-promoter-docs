# Incremental SDD + Copilot
## Required workflow per HU
1. **Discover:** read backlog, spec, ADRs and affected repositories; list gaps without inventing rules.
2. **Specify:** update HU, acceptance criteria, scenarios and draft contract; obtain approval.
3. **Plan:** break down tasks per repository, dependencies, tests and expected files.
4. **Implement:** small changes, API/contract first, clients next, tests alongside implementation.
5. **Verify:** run tests/lint/build, report observed results, review permissions and migrations.
6. **Record:** update matrix, status, ADR if decisions change, commit/PR and evidence.
## Copilot policy
- One HU per prompt except approved scaffolding.
- No endpoints or fields outside approved specs.
- No four-repository edits without explicit commit and compatibility plan.
- Verify context per repository; workspace does not guarantee all files were read.
- No destructive migrations or publishing code/secrets without authorization.
- Report `git status`, commands and tests; label unexecuted tests NOT RUN.
## Skills vs instructions
- `.github/copilot-instructions.md`: repository-wide rules.
- `.github/instructions/*.instructions.md`: path/technology-specific rules when useful.
- `.github/prompts/*.prompt.md`: repeatable tasks, one HU per prompt.
- `.github/skills/` or equivalent: only if the installed Copilot/VS Code supports the chosen format. No speculative skills in Sprint 0.

An SDD framework is not required for versioned, verifiable specs.

## AI collaboration and autonomy policy (v0.3.0)
- The developer owns prioritization, approvals, review and integration. Samantha validates business rules when necessary.
- Copilot is the primary implementation assistant for approved specs; ChatGPT supports architecture, spec review, critical decisions and complex troubleshooting.
- Routine CRUD/UI implementation, tests and straightforward fixes may proceed without ChatGPT review if fully covered by approved specs.
- Escalate **before** altering business rules, database relationships, destructive migrations, breaking shared API contracts, authentication/authorization behavior, major dependencies or deployment architecture.
- Stop after **2–3 meaningful unsuccessful correction attempts** for the same defect and report observed evidence.
- Produce **one report per completed or blocked HU**, not per prompt, using `docs/process/implementation-report-template.md`.
- Review gates: `docs/process/review-gates.md`; change control: `docs/process/change-control.md`.
- The versioned documentation and observed repository state are authoritative; conversation history is not a substitute for specs.
