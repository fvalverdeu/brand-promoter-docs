# Definition of Ready (DoR)
- HU con actor, beneficio y límites claros.
- CA observables, positivos y negativos.
- Datos mínimos y permisos definidos.
- Dependencias y repos afectados identificados.
- Spec con endpoint/prototipo cuando corresponda.
- No hay decisiones bloqueantes sin dueño.

# Definition of Done (DoD)
- Código revisado; sin secretos ni cambios fuera del alcance.
- CA satisfechos con evidencia reproducible.
- Tests unitarios de reglas y tests integración de endpoints críticos aprobados.
- Validación 401/403/alcance tienda para funciones protegidas.
- Migraciones y seeds reproducibles cuando aplica.
- Lint/typecheck/build de app afectada pasan.
- Documentación, matriz y changelog/estado actualizados.
- Commit/PR con referencia HU y evidencia; sin defectos bloqueantes.

Para MVP se admite prueba manual móvil documentada; no se permite omitir controles críticos de seguridad o integridad.
