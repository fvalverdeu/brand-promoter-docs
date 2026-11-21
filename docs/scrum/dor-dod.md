# Definition of Ready (DoR)
- HU with clear actor, benefit and boundaries.
- Observable positive and negative acceptance criteria.
- Minimum data and permissions defined.
- Dependencies and affected repositories identified.
- Spec with endpoint/prototype where applicable.
- No blocking decisions without an owner.
# Definition of Done (DoD)
- Reviewed code; no secrets or out-of-scope changes.
- Acceptance criteria met with reproducible evidence.
- Passing unit tests for rules and integration tests for critical endpoints.
- 401/403/store-scope validation for protected functions.
- Reproducible migrations and seeds where applicable.
- Passing lint/typecheck/build for affected application.
- Updated documentation, matrix and changelog/status.
- Commit/PR with HU reference and evidence; no blocking defects.

Documented manual mobile testing is acceptable for MVP; critical security and integrity checks cannot be omitted.
