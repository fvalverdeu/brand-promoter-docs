# Spec HU-005 — Asignación promotor-tienda
**Estado:** BORRADOR · RF-05 · RNF-02

## Historia
Como administrador, quiero asignar un promotor a una o varias tiendas para habilitar sus operaciones.

## CA
- CA1: admin puede asignar promotor activo a tienda activa.
- CA2: no se permite duplicar una asignación activa equivalente.
- CA3: promotor solo consulta tiendas asignadas activas.
- CA4: promotor no puede crear o modificar store-assignmentes.
- CA5: cambios de asignación son trazables.

## Contrato propuesto
`POST /api/v1/assignments`, `GET /api/v1/me/stores`.

## Pendiente
Decidir desactivación, vigencia e historial; hasta entonces no programar borrado físico.

## Pruebas
TC-ASG-01 asignación válida; TC-ASG-02 acceso promotor a tienda no asignada; TC-ASG-03 duplicado.
