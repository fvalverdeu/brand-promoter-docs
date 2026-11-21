# Product Backlog v0.1 — orden sugerido, no estimaciones cerradas

| Orden | Épica | HU | Historia resumida | Fase | Dependencia |
|---|---|---|---|---|---|
| 1 | Seguridad | HU-001 | Como usuario quiero iniciar sesión para acceder a mis funciones | MVP | Ninguna |
| 2 | Catálogos | HU-003 | Como admin quiero crear tiendas para organizar operaciones | MVP | HU-001 |
| 3 | Catálogos | HU-004 | Como admin quiero crear variantes para registrar calzado | MVP | HU-001 |
| 4 | Usuarios | HU-002 | Como admin quiero dar de alta promotores | MVP | HU-001 |
| 5 | Asignaciones | HU-005 | Como admin quiero asignar promotor a tienda | MVP | HU-002/003 |
| 6 | Móvil | HU-006 | Como promotor quiero ver mis tiendas asignadas | MVP | HU-001/005 |
| 7 | Recepciones | HU-007 | Como promotor quiero registrar una recepción | MVP | HU-004/005/006 |
| 8 | Recepciones | HU-008 | Como admin/promotor quiero consultar receptiones autorizadas | MVP | HU-007 |
| 9 | Auditoría | HU-016 | Como supervisor quiero identificar autor y fecha de operaciones | MVP parcial | HU-007 |
| 10 | Ubicaciones | HU-010 | Como promotor quiero saber dónde se guardó cada producto | SIDET | modelo ubicaciones |
| 11 | Movimientos | HU-011 | Como promotor quiero registrar traslados y salidas | SIDET | HU-010 |
| 12 | Existencias | HU-009 | Como promotor quiero consultar stock operativo calculado | SIDET | HU-007/011 |
| 13 | Metas | HU-012 | Como supervisor quiero asignar metas | SIDET | HU-002/003 |
| 14 | Ventas | HU-013 | Como promotor/supervisor quiero registrar avances reportados | SIDET | HU-012 |
| 15 | Metas | HU-014 | Como promotor quiero conocer cumplimiento de meta | SIDET | HU-012/013 |
| 16 | Reportes | HU-015 | Como supervisor quiero reportes filtrados | SIDET | HU-008/014 |

**Importante:** no asumir que las 16 HUs caben en el MVP. No comprometer horas por HU sin desglose técnico. El Sprint 1 se acepta por flujo vertical demostrado.
