# SDD incremental + Copilot

## Flujo obligatorio por HU
1. **Discover**: leer backlog, spec, ADRs y repos afectados. Listar vacíos, no inventar reglas.
2. **Specify**: actualizar HU + CA + escenarios + contrato (borrador), obtener aprobación.
3. **Plan**: descomponer en tareas por repo, dependencias, pruebas y archivos previstos.
4. **Implement**: cambios pequeños, primero API/contrato, después clientes, pruebas al mismo tiempo.
5. **Verify**: ejecutar pruebas/lint/build, reportar resultados literales, revisar permisos y migraciones.
6. **Record**: actualizar matriz, estado, ADR si cambia decisión, commit/PR y evidencias.

## Política de Copilot
- No actuar sobre más de una HU por prompt salvo scaffolding aprobado.
- No crear endpoints ni campos no presentes en spec aprobada.
- No modificar cuatro repos a la vez sin plan explícito de commits y compatibilidad.
- Verificar contexto de cada repo: workspace no garantiza que Copilot haya leído todos los archivos.
- No ejecutar migraciones destructivas ni publicar código/secretos sin autorización.
- Mostrar `git status`, comandos ejecutados y pruebas; si no se ejecutan, declarar NO EJECUTADO.

## Skills vs instrucciones
- `.github/copilot-instructions.md`: reglas globales de cada repo.
- `.github/instructions/*.instructions.md`: reglas por rutas/tecnologías cuando aporten valor.
- `.github/prompts/*.prompt.md`: tareas repetibles, una HU por prompt.
- `.github/skills/` o mecanismo equivalente: **solo si la versión de Copilot/VS Code soporta el formato elegido**. No crear skills especulativas en Sprint 0.

**No es obligatorio instalar un framework SDD** para trabajar con specs versionadas y verificables.

## AI collaboration and autonomy policy (v0.2.0)
- The developer owns prioritization, approvals, review and integration. Samantha validates business rules when necessary.
- Copilot is the primary implementation assistant for approved specs; ChatGPT supports architecture, spec review, critical decisions and complex troubleshooting.
- Routine CRUD/UI implementation, tests and straightforward fixes may proceed without ChatGPT review if fully covered by approved specs.
- Escalate **before** altering business rules, database relationships, destructive migrations, breaking shared API contracts, authentication/authorization behavior, major dependencies or deployment architecture.
- Stop after **2–3 meaningful unsuccessful correction attempts** for the same defect and report observed evidence.
- Produce **one report per completed or blocked HU**, not per prompt, using `docs/process/implementation-report-template.md`.
- Review gates: `docs/process/review-gates.md`; change control: `docs/process/change-control.md`.
- The versioned documentation and observed repository state are authoritative; conversation history is not a substitute for specs.
