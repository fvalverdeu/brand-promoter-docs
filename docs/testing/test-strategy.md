# Estrategia de pruebas — Sprint 0/MVP

| Nivel | Tecnología sugerida | Prioridad |
|---|---|---|
| Unitarias API | Jest/Vitest según scaffolding NestJS | Reglas, validaciones, guards |
| Integración API+DB | NestJS test + PostgreSQL aislado | Recepciones, rollback, store-assignmentes |
| Contratos | OpenAPI + validación de tipos generados | Compatibilidad web/móvil |
| Web E2E | Playwright | Alta mínima + asignación + consulta |
| Flutter | flutter_test y validación manual en Android | Login, tienda, recepción |
| Seguridad | Tests 401/403 y acceso entre tiendas | Bloqueante |
| Demo | Guion reproducible con datos sintéticos | Hito 15/11 |

## Evidencia mínima por caso
ID, fecha, ambiente, commit, datos, pasos, resultado esperado, resultado obtenido, estado (NO EJECUTADO/PASÓ/FALLÓ/BLOQUEADO), evidencia.

## No asumir
No declarar cobertura o tests exitosos sin ejecución; no usar datos reales de Samantha sin autorización. Semillas de demo sintéticas.
