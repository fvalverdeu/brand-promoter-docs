# Prompt plantilla — Implementación por HU

HU objetivo: **[HU-ID]**. Repos afectados: **[REPOS]**. Spec: `brand-promoter-docs/docs/specs/[ARCHIVO].md`.

1. Verifica acceso real a la spec, DoR/DoD, ADRs, contrato y matriz. Si falta algo, no implementes.
2. Repite CA y escenarios; señala ambigüedades y dependencias.
3. Presenta plan de cambios por repositorio y tests (unit/integration/E2E) para aprobación.
4. Tras aprobación, implementa API y contrato primero; luego cliente(s), en cambios pequeños y con autorización por rol/tienda.
5. Ejecuta tests, lint, build, revisa Git y presenta evidencia. Nunca marques un test como aprobado sin ejecutarlo.
6. Actualiza matriz, estado de HU y PRs cruzados.

No agregues funcionalidades fuera de la spec. No hagas push/deploy sin permiso.
