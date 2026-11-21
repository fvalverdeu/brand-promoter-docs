# API contracts — draft for specs; NOT implemented

**Proposed prefix:** `/api/v1`. JSON responses, consistent errors `{statusCode, message, error, requestId?}`. JWT Bearer.

| Method | Proposed route | Role | Purpose |
|---|---|---|---|
| POST | `/auth/login` | public | authenticate |
| GET | `/auth/me` | authenticated | profile/role |
| GET/POST | `/stores` | admin (GET depending on role) | stores |
| GET/POST | `/products` | admin (GET depending on role) | products |
| GET/POST | `/product-variants` | admin (GET depending on role) | variants |
| GET/POST | `/users` | admin | users |
| GET/POST | `/assignments` | admin | store assignments |
| GET | `/me/stores` | promoter | authorized stores |
| POST | `/receptions` | promoter | transactional reception |
| GET | `/receptions` | authenticated with server-side filtering | authorized history |

Conceptual example `POST /receptions`:
```json
{"storeId":"uuid","receivedAt":"2026-11-05T15:00:00-05:00","items":[{"productVariantId":"uuid","quantity":5}]}
```
The backend derives `receivedByUserId` from the JWT. Final ID/date representation and HTTP statuses must be settled in HU-007 and OpenAPI before coding.

**Policy:** do not edit generated types manually; announce contract changes through issues/PRs and validate consumers. The naming example `/store-assignments` in naming conventions is not an approved replacement for `/assignments`; resolve the discrepancy before implementation.
