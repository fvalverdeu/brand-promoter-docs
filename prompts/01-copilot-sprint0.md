# Prompt 01 — Controlled bootstrap, ONLY after Prompt 00 approval
Implement only the approved bootstrap for the four independent repositories. Before changes, check repository and branch; do not overwrite existing files. Work in stages:
1. `brand-promoter-api`: initialize NestJS TypeScript and local Prisma/PostgreSQL according to approved decisions; build/lint/test scripts; `.env.example` without secrets. No business logic.
2. `brand-promoter-web`: initialize Next.js TypeScript and build/lint/test scripts; no business routes or parallel business API.
3. `brand-promoter-mobile`: initialize Flutter and verify analyze/test; no features yet.
4. `brand-promoter-docs`: document exact commands and update checklist/status without changing scope.
5. Verify all three applications build independently. No publishing or push without approval.

Do not implement HU-001/005/007 yet. No Firebase, Cloud Storage, Docker or Container Registry in Sprint 0.

Provide per-repository summary: files created, commands run, observed test results, pending work, `git status`, proposed commits. If a step fails, stop and consult before high-impact remedies.
