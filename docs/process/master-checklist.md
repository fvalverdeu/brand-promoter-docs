# Checklist maestro Sprint 0

## Documentación
- [ ] Revisar alcance y validar RF/RNF con Samantha cuando sea posible.
- [ ] Aprobar decisiones DEC-01 a DEC-08 que bloqueen modelo/API.
- [ ] Aprobar HU-001, HU-005 y HU-007 y sus CA.
- [ ] Revisar matriz de trazabilidad y plan de pruebas.

## Git / workspace
- [ ] Crear `brand-promoter-docs` privado y subir docs + prompts.
- [ ] Crear `brand-promoter-api` privado con instrucciones locales.
- [ ] Crear `brand-promoter-web` privado con instrucciones locales.
- [ ] Crear `brand-promoter-mobile` privado con instrucciones locales.
- [ ] Crear workspace multi-root y comprobar los cuatro repos.
- [ ] Configurar `.gitignore`, `.env.example`, convenciones Git.

## Scaffolding (solo tras aprobar prompt 00)
- [ ] Inicializar NestJS y verificar build/lint.
- [ ] Inicializar Next.js y verificar build/lint.
- [ ] Inicializar Flutter y ejecutar test inicial.
- [ ] Configurar PostgreSQL local y Prisma.
- [ ] Definir OpenAPI inicial y procedimiento de consumo de clientes.
- [ ] Documentar comandos reproducibles.

## MVP
- [ ] HU-001 autenticación.
- [ ] HU-002/003/004 datos administrativos mínimos.
- [ ] HU-005 store-assignmentes.
- [ ] HU-006 consulta móvil.
- [ ] HU-007 recepción transaccional.
- [ ] HU-008 consulta administrativa.
- [ ] Tests críticos y demo reproducible.

## SIDET (no bloquear MVP)
- [ ] Spec ubicaciones físicas.
- [ ] Movimientos y existencias operativas.
- [ ] Cuotas y avances reportados.
- [ ] Evaluar Container Registry con ADR de despliegue.
