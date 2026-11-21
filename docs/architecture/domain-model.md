# Modelo de dominio inicial — propuesta (no DDL aprobado)

- `User(id, name, email, passwordHash, role, active, createdAt)`.
- `Store(id, name, locationLabel?, active)`.
- `Assignment(id, userId, storeId, active, validFrom?, validTo?)`: asociar promotor a tienda. Decidir política de store-assignmentes históricas antes de migración definitiva.
- `Product(id, brand?, modelCode, name, active)`.
- `ProductVariant(id, productId, size, color?, sku?, active)`; código único por alcance pendiente.
- `Reception(id, storeId, receivedByUserId, receivedAt, createdAt, note?)`.
- `ReceptionItem(id, receptionId, productVariantId, quantity)`.

## Invariantes MVP
- Cantidad entera positiva.
- Una recepción tiene al menos un detalle.
- El usuario actor proviene del token; debe estar activo y asignado a la tienda.
- Todas las inserciones de cabecera y detalles son una transacción.
- Una variante debe existir y estar activa.
- Una recepción no genera automáticamente venta.

## Evolución sin acoplar MVP
- `StorageLocation(id, storeId, area, shelf?, code?, active)`.
- `StockMovement(id, storeId, variantId, locationId?, movementType, quantity, actorId, occurredAt, referenceId?)`.
- Posible vínculo entre ítems de recepción y store-assignmentes de ubicación mediante movimiento, **sin añadir `locationId` obligatorio en MVP**.
- Modelo de metas y avances reportados separado del inventario físico.

## Por decidir
Unicidad SKU, tallas internacionales, multi-marca, reasignación histórica, correcciones/anulaciones, manejo offline, cantidad y procedencia de datos iniciales.
