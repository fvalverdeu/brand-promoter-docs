# ADR-0001 — Multiple repositories and centralized documentation
**Status:** Accepted · 2026-11-03

**Context:** Flutter, Next.js and NestJS require independent build, test and deployment cycles. VS Code + Copilot is the primary environment.

**Decision:** four private repositories `brand-promoter-docs`, `brand-promoter-api`, `brand-promoter-web`, `brand-promoter-mobile`, opened in a multi-root workspace. Central documentation lives in `brand-promoter-docs`; each repository retains local instructions and its own CI.

**Consequences:** independent operations and versioning, requiring disciplined OpenAPI contracts, version compatibility and coordinated PRs. A monorepo could also support independent deployments but is rejected here for operational preference and simpler per-application pipelines.

**Naming update (2026-11-04):** Repository names follow ADR-0003; the four-repository decision is unchanged.
