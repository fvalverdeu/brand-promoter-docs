# Contratos API — borrador para specs; NO implementados

**Prefijo propuesto:** `/api/v1`. Respuestas JSON, errores consistentes `{statusCode, message, error, requestId?}`. JWT Bearer.

| Método | Ruta propuesta | Rol | Objetivo |
|---|---|---|---|
| POST | `/auth/login` | público | autenticar |
| GET | `/auth/me` | autenticado | perfil/rol |
| GET/POST | `/stores` | admin (GET según rol) | tiendas |
| GET/POST | `/products` | admin (GET según rol) | productos |
| GET/POST | `/product-variants` | admin (GET según rol) | variantes |
| GET/POST | `/users` | admin | usuarios |
| GET/POST | `/assignments` | admin | store-assignmentes |
| GET | `/me/stores` | promotor | tiendas autorizadas |
| POST | `/receptions` | promotor | recepción transaccional |
| GET | `/receptions` | autenticado con filtro servidor | historial autorizado |

Ejemplo conceptual `POST /receptions`:
```json
{"storeId":"uuid","receivedAt":"2026-11-05T15:00:00-05:00","items":[{"productVariantId":"uuid","quantity":5}]}
```
El backend obtiene `receivedByUserId` del JWT. La representación final de IDs/fechas y status HTTP se cerrará en HU-007 y OpenAPI antes de codificar.

**Política:** no editar a mano tipos generados; cambios de contrato se anuncian con issue/PR y validación de consumidores.
