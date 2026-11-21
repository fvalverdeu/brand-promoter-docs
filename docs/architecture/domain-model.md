# Initial domain model — proposal (no approved DDL)
- `User(id, name, email, passwordHash, role, active, createdAt)`.
- `Store(id, name, locationLabel?, active)`.
- `Assignment(id, userId, storeId, active, validFrom?, validTo?)`: associate a promoter with a store. Decide historical assignment policy before final migration.
- `Product(id, brand?, modelCode, name, active)`.
- `ProductVariant(id, productId, size, color?, sku?, active)`; uniqueness scope pending.
- `Reception(id, storeId, receivedByUserId, receivedAt, createdAt, note?)`.
- `ReceptionItem(id, receptionId, productVariantId, quantity)`.

## MVP invariants
- Positive integer quantity.
- At least one item per reception.
- Actor comes from the token and must be active and assigned to the store.
- Header and item inserts form a single transaction.
- Variant must exist and be active.
- A reception does not automatically generate a sale.

## Evolution without coupling the MVP
- `StorageLocation(id, storeId, area, shelf?, code?, active)`.
- `StockMovement(id, storeId, variantId, locationId?, movementType, quantity, actorId, occurredAt, referenceId?)`.
- Possible link between reception items and location assignments via movements, **without mandatory `locationId` in MVP**.
- Targets and reported progress are modeled separately from physical inventory.

## Pending decisions
SKU uniqueness, international sizes, multiple brands, historical reassignment, corrections/cancellations, offline handling, initial data volume and source.
