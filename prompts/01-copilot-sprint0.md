# Prompt 01 — Bootstrap controlado, SOLO después de aprobar Prompt 00

Implementa **únicamente el bootstrap aprobado** para los cuatro repositorios independientes del workspace. Antes de cada cambio, comprueba repositorio y rama; no sobrescribas archivos existentes. Trabaja por etapas:

1. `brand-promoter-api`: inicializa NestJS TypeScript y Prisma/PostgreSQL local según decisiones aprobadas; scripts build/lint/test; `.env.example` sin secretos. No crear lógica de negocio.
2. `brand-promoter-web`: inicializa Next.js TypeScript y scripts build/lint/test; no crear rutas de negocio ni servidor API paralelo.
3. `brand-promoter-mobile`: inicializa Flutter y verifica analyze/test; no añadir features todavía.
4. `brand-promoter-docs`: documenta comandos exactos y actualiza checklist/estado, sin cambiar alcance.
5. Verifica que los tres proyectos pueden construirse de manera independiente. No publiques nada ni hagas push sin aprobación.

No implementar HU-001/005/007 todavía. No agregar Firebase, Cloud Storage, Docker ni Container Registry en Sprint 0.

Entrega resumen por repo: archivos creados, comandos ejecutados, resultados literales de pruebas, pendientes, `git status`, commits propuestos. Si falla un paso, detente y consulta antes de introducir soluciones de alto impacto.
