# ADR-0001 — Multirepositorio y documentación central
Estado: **APROBADO** · 2026-11-03

**Contexto:** Flutter, Next.js y NestJS requieren ciclos de build, pruebas y despliegue independientes. VS Code + Copilot será el entorno principal.

**Decisión:** 4 repos privados `brand-promoter-docs`, `brand-promoter-api`, `brand-promoter-web`, `brand-promoter-mobile`, abiertos en workspace multi-root. La documentación central vive en `brand-promoter-docs`; cada repo conserva instrucciones locales y CI propio.

**Consecuencias:** independencia operativa y versionado; a cambio se necesita disciplina de contratos OpenAPI, compatibilidad entre versiones y PRs coordinados. Un monorepo también permitiría despliegue independiente, pero se descarta para este proyecto por preferencia operativa y simplicidad de pipelines por aplicación.

**Naming update (2026-11-04):** Repository names now use `brand-promoter-*` per ADR-0003; the four-repository decision is unchanged.
