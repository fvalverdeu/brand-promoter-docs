# Change control and cross-repository coordination

1. A story spec in `brand-promoter-docs` is the approved functional reference. A draft does not authorize implementation.
2. For cross-repository stories, identify affected repositories, compatible API contract and execution order before edits.
3. Implement backend contract first, publish/version OpenAPI artifact or snapshot, then update clients against the compatible version.
4. Record deviations and request approval before changing the spec, authorization policy or database relationships.
5. Use separate commits and PRs in each repository; link the same HU identifier and report.
6. Record actual commands, test outcomes and deployment status. Do not claim remote deployments or Git commits before they exist.
