# Prompt 00 — Inspection and planning, NO implementation
Act as a senior architect and quality lead. The VS Code multi-root workspace contains four independent Git repositories: `brand-promoter-docs`, `brand-promoter-api`, `brand-promoter-web`, `brand-promoter-mobile`.

**Goal:** prepare Sprint 0 without coding. Approved stack: Flutter, Next.js + TypeScript, NestJS + TypeScript, PostgreSQL + Prisma. Original MVP milestone: 2026-11-15; it has elapsed. Replanning is pending approval.

1. Confirm actual access to repositories and directories; do not assume access based on workspace configuration.
2. Inspect `git status`, branches and existing files in each repository without changes.
3. Read the docs README, MVP scope, RF/RNF, traceability matrix, backlog, ADRs, DoR/DoD, architecture and HU-001/005/007 specs.
4. Identify open decisions blocking scaffolding, security, model or contracts; do not invent answers.
5. Propose a bootstrap plan per repository: commands, compatible supported/LTS versions where applicable, files, validations and cross-repository dependencies. Preserve independent pipelines and deployments. Account for existing README and `.github` files: propose safe scaffolding/merge steps without overwriting them.
6. Propose OpenAPI generation from NestJS and pinned client contracts for web/Flutter; do not copy models manually.
7. Provide ordered checklist, risks and indicative effort in hours; assess the elapsed schedule and propose replanning without editing dates or docs.
8. Verify ADR-0003, naming conventions, language policy, bilingual glossary, SDD workflow, review gates, change control and implementation report template. Preserve stable IDs and the canonical documentation repository.

**Prohibitions:** no dependency installation, application creation, file edits, commits/push, Container Registry/Firebase/Cloud Storage, monorepo or microservices. Read-only inspection only. Do not assert tests were run if not observed.

**Output:** actual status of four repositories; findings; unresolved decisions; per-repository plan; proposed commands (not executed); proposed tests; blocking questions; replanning proposal. Generate the Gate 1 external review package in Spanish under review-package-policy.md. Read-only repository inspection; external evidence writes are permitted. No historical baseline guesses.

**Stop and wait for approval.**
