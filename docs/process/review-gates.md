# Technical review gates

## Gate 1 — Bootstrap (Sprint 0)
Review proposed toolchain versions, repository boundaries, secrets policy, Prisma setup, reproducible commands, lint/build/test scaffolding, and all blocking decisions. **No implementation until approved.**

## Gate 2 — First end-to-end vertical slice (Sprint 1)
Review authentication and store-scoped authorization, API contract compatibility, promoter assignment, atomic merchandise reception, admin consultation, and integration test evidence. Validate that reception does not imply retailer-authoritative stock or a sale.

## Gate 3 — Sprint close
Check RF → HU → spec → test evidence, DoD, known defects, reproducible demo, security risks and documented decisions. Only declare complete what is demonstrated and tested.

## Escalation outside gates
Escalate before changing business rules, schema relationships or destructive migrations, breaking shared API contracts, auth/authz policy, major dependencies, or deployment architecture. Also escalate after 2–3 meaningful unsuccessful fixes for the same issue. Developer approves; Samantha validates business semantics when needed.
