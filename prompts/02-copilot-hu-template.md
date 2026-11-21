# Prompt template — Implementation per HU
Target HU: **[HU-ID]**. Affected repositories: **[REPOS]**. Spec: `brand-promoter-docs/docs/specs/[FILE].md`.
1. Verify actual access to spec, DoR/DoD, ADRs, contract and matrix. Do not implement if required context is missing.
2. Restate acceptance criteria and scenarios; flag ambiguity and dependencies.
3. Present per-repository change and test plan (unit/integration/E2E) for approval.
4. After approval, implement API/contract first, then client(s), in small changes with role/store authorization.
5. Run tests, lint, build, review Git and provide evidence. Never mark an unexecuted test as passing.
6. Update matrix, HU status and linked PRs.

No out-of-spec features. No push/deploy without permission.
