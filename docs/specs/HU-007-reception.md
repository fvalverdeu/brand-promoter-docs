# Spec HU-007 — Registrar recepción
**Estado:** BORRADOR · RF-07 · RNF-02/03/04/05

## Historia
Como promotor asignado, quiero registrar productos y cantidades recibidas para conservar un historial confiable de ingresos.

## CA
- CA1: solo registra en tienda con asignación activa.
- CA2: uno o más ítems con variante activa y cantidad entera > 0.
- CA3: cabecera e ítems se guardan atómicamente.
- CA4: el backend registra actor autenticado y timestamp de creación.
- CA5: error de validación o persistencia no deja recepción parcial.
- CA6: recepción aparece en consulta autorizada.
- CA7: ubicación física **no es obligatoria** en MVP.

## Request example (draft)
```json
{"storeId":"uuid","receivedAt":"2026-11-05T15:00:00-05:00","items":[{"productVariantId":"uuid","quantity":5}]}
```

## Escenarios Gherkin
```gherkin
Scenario: Registrar recepción válida
  Given un promotor activo asignado a la tienda A
  And existe una variante activa del modelo X talla 38
  When registra 5 unidades recibidas en tienda A
  Then la recepción y su detalle se guardan en una transacción
  And el actor y fecha quedan registrados

Scenario: Rechazar recepción en tienda ajena
  Given un promotor sin asignación a tienda B
  When intenta registrar una recepción en tienda B
  Then la API rechaza la operación con 403
  And no persiste cabecera ni detalle

Scenario: Revertir operación fallida
  Given un promotor autorizado
  When falla la persistencia de un detalle
  Then la transacción revierte la cabecera y todos los detalles
```

## Technical verification
TC-REC-01 valid; TC-REC-02 unassigned store; TC-REC-03 rollback; TC-REC-04 consultation. Integration with real test PostgreSQL, not just mocks.

## Fuera de alcance
Ubicaciones, fotos, escaneo, movimientos de salida, stock oficial, edición/anulación de recepción.
