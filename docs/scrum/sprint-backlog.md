# Sprint Backlog — plantilla de seguimiento

> Nota v0.3.0 (21/11/2026): fechas originales conservadas como línea base histórica; replanificación pendiente de aprobación.

Estados permitidos: TODO / IN_PROGRESS / BLOCKED / REVIEW / DONE. **Todos inicialmente TODO.**

| ID | Trabajo | Repo | Dependencia | Estado | Evidencia |
|---|---|---|---|---|---|
| S0-01 | Crear 4 repos privados y workspace | todos | — | TODO | enlace/commit |
| S0-02 | Publicar docs + instrucciones | docs/todos | S0-01 | TODO | commit |
| S0-03 | Aprobar decisiones abiertas críticas | docs | — | TODO | ADR |
| S0-04 | Definir esquema Prisma mínimo | api | S0-03 | TODO | migración |
| S0-05 | Bootstrap NestJS, Next.js, Flutter | api/web/mobile | S0-01 | TODO | comandos exitosos |
| S1-01 | HU-001 autenticación | api/web/mobile | S0-05 | TODO | tests |
| S1-02 | HU-002/003/004 administración mínima | api/web | S1-01 | TODO | demo |
| S1-03 | HU-005 asignación | api/web | S1-02 | TODO | tests |
| S1-04 | HU-006 consulta tiendas | api/mobile | S1-03 | TODO | captura |
| S1-05 | HU-007 recepción transaccional | api/mobile | S1-04 | TODO | tests |
| S1-06 | HU-008 consulta administrativa | api/web | S1-05 | TODO | demo |
| S1-07 | Pruebas, datos demo, documentación | todos | S1-01..06 | TODO | evidencia |

Para cada tarea registrar issue/PR por repo, SHA y resultado de prueba; no declarar DONE sin DoD.
