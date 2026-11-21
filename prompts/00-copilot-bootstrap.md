# Prompt 00 — Inspección y plan, SIN implementar

Actúa como arquitecto senior y responsable de calidad. Estamos trabajando en VS Code con un workspace multi-root que contiene cuatro repositorios Git **independientes**: `brand-promoter-docs`, `brand-promoter-api`, `brand-promoter-web`, `brand-promoter-mobile`.

**Objetivo:** preparar Sprint 0 sin programar todavía. Stack aprobado: Flutter, Next.js + TypeScript, NestJS + TypeScript, PostgreSQL + Prisma. Hito MVP: 15/11/2026.

1. Confirma qué carpetas/repos realmente puedes leer. No asumas acceso por el solo hecho de estar en el workspace.
2. Inspecciona `git status`, ramas y archivos existentes de cada repo, sin modificar.
3. Lee en `brand-promoter-docs` el README, alcance MVP, RF/RNF, matriz, backlog, ADRs, DoR/DoD, arquitectura y specs HU-001/005/007.
4. Identifica decisiones abiertas que bloquean scaffolding, seguridad, modelo o contratos; no inventes respuestas.
5. Propón plan de bootstrap **por repo**: comandos, versiones LTS compatibles, archivos a crear, validaciones y dependencias entre repos. Mantén pipelines y despliegues independientes.
6. Propón estrategia OpenAPI: generado desde NestJS, clientes web/Flutter fijan versión; no copies modelos a mano.
7. Presenta checklist ordenado y riesgos, con una estimación orientativa en horas.

**Prohibiciones:** no instalar dependencias, no crear aplicaciones, no editar archivos, no hacer commits/push, no crear Container Registry/Firebase/Cloud Storage, no introducir monorepo ni microservicios.

**Formato de salida:** estado real de los 4 repos; hallazgos; decisiones por resolver; plan por repo; comandos propuestos (sin ejecutar); pruebas propuestas; preguntas bloqueantes.

**Detente y espera mi aprobación.**

**Additional v0.2.0 checks:** Verify `ADR-0003-project-naming.md`, `naming-conventions.md`, `sdd-copilot.md`, `review-gates.md`, `change-control.md`, and `implementation-report-template.md`. Enforce English technical naming. Do not assume the approved workspace layout is already present on disk. The repositories must remain independent; the documentation repository is the functional source of truth.
