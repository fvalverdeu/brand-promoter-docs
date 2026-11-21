# Prácticas reutilizadas de Tiens — análisis documental

Fuente examinada: `docs.zip` del proyecto Tiens, especialmente `alcance.md`, `contrato-minimo-datos-fase-1.md`, `modelo-datos-fase2.md`, `backlog-tecnico-prs-fase-2-admin.md`, `mantenedor-pruebas.md`, `workflow-git.md` y `Matriz-de-riesgos-y-mitigaciones.md`.

| Práctica de Tiens | Adaptación |
|---|---|
| Alcance explícito y exclusiones | `product/mvp-scope.md` con hito y fase SIDET |
| Contrato mínimo de datos | Specs + OpenAPI generado desde NestJS |
| Modelo relacional y restricciones | Modelo conceptual y migraciones Prisma |
| Backlog técnico por PR | HU → spec → tareas por repo → PR con CA |
| Pruebas con positivos/negativos | Casos trazables y evidencia por ejecución |
| Git feature branches + conventional commits | Flujo simplificado con PR pequeños |
| Riesgos y mitigaciones | ADR de decisiones abiertas y contingencia |

No trasladar reglas de productos multipaís, roles por país, datos ni credenciales de Tiens. No se afirma que Tiens ya usara SDD formal: se adapta su disciplina documental.
