# Simplified Git workflow (adapted from Tiens)
Each repository: protect `main` where possible; branches `feature/HU-007-reception`, `fix/...`, `docs/...`. Avoid `develop` by default for one developer and a short schedule; add it if justified.
1. Check `git status`, current branch and remote before edits.
2. Branch from updated `main`.
3. Use English Conventional Commits with HU: `feat(api): add reception transaction (HU-007)`.
4. Run tests/lint/build and record evidence.
5. Small PR with HU/spec link and contract changes.
6. Merge only after review; do not combine multiple repositories into a fictitious commit.
7. For cross-repository stories, link issues/PRs and preserve API compatibility.

Do not copy credentials, `.env` or private histories from Tiens/IoT.
