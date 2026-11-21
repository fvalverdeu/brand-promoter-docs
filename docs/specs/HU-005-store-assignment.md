# Spec HU-005 — Asignación promotor-tienda
**Estado:** BORRADOR · RF-05 · RNF-02

## Historia
Como administrador, quiero asignar un promotor a una o varias tiendas para habilitar sus operaciones.

## CA
- CA1: admin puede asignar promotor activo a tienda activa.
- CA2: no se permite duplicar una asignación activa equivalente.
- CA3: promotor solo consulta tiendas asignadas activas.
- CA4: promotor no puede crear o modificar asignaciones.
- CA5: cambios de asignación son trazables.

## Proposed contract
`POST /api/v1/assignments`, `GET /api/v1/me/stores`.

## Pending technical decision
Decide deactivation, validity and history; do not implement physical deletion until resolved.

## Technical verification
TC-ASG-01 valid assignment; TC-ASG-02 promoter access to unassigned store; TC-ASG-03 duplicate.
