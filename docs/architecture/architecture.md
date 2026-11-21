# Arquitectura de software — C4 nivel 2 (texto)

```mermaid
flowchart TB
 P[Promotor] --> M[Flutter · Android]
 A[Administrador / Supervisor] --> W[Next.js · Backoffice]
 M -->|HTTPS REST JSON| API[NestJS · API REST]
 W -->|HTTPS REST JSON| API
 API -->|Prisma ORM| DB[(PostgreSQL)]
```

- **API**: fuente de verdad de identidad, permisos, validación y reglas.
- **Web**: interfaz administrativa; no duplicar reglas de autorización del backend.
- **Móvil**: operaciones de promotor, datos únicamente de tiendas autorizadas.
- **Prisma**: biblioteca en el proceso NestJS; no es contenedor C4 independiente.
- **OpenAPI**: contrato técnico publicado/generado desde API; clientes Flutter y web consumen versión fijada, no contratos inventados.
- **Repos**: separados; cambios coordinados por HU e issue cruzado.

## Capas API
`controller` (HTTP/DTO) → `service` (reglas/authorization) → `repository/Prisma` (persistencia). Módulos iniciales: auth, users, stores, products, assignments, receptions.

## Seguridad
JWT firmado, validación de expiración, hash seguro, guards por rol y comprobación de asignación de tienda desde DB en cada operación protegida. Nunca confiar en `userId` aportado por el cliente como actor.

## Entornos
Local primero; demo reproducible según disponibilidad. Infraestructura remota no seleccionada. No incluir registry ni Cloud Storage como dependencias MVP.
