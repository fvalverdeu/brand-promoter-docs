# Test strategy — Sprint 0/MVP
| Level | Suggested technology | Priority |
|---|---|---|
| API unit | Jest/Vitest depending on NestJS scaffolding | Rules, validation, guards |
| API+DB integration | NestJS test + isolated PostgreSQL | Receptions, rollback, assignments |
| Contracts | OpenAPI + generated type validation | Web/mobile compatibility |
| Web E2E | Playwright | Minimum setup + assignment + consultation |
| Flutter | flutter_test and manual Android validation | Login, store, reception |
| Security | 401/403 and cross-store access tests | Blocking |
| Demo | Reproducible script with synthetic data | Original 15/11 milestone; replanning pending |
## Minimum evidence per case
ID, date, environment, commit, data, steps, expected and actual results, status (NOT RUN/PASS/FAIL/BLOCKED), evidence.
## Do not assume
Do not claim coverage or passing tests without execution; do not use Samantha's real data without authorization. Use synthetic demo seeds.
