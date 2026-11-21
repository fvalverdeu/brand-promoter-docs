# Alcance y visión — v0.1

## Problema
Los promotores de marcas en tiendas por departamento necesitan registrar/consultar receptiones, identificar productos y, posteriormente, ubicaciones y avance de metas. No se presupone acceso a datos internos oficiales de las tiendas.

## Personas
- **Promotor:** opera en tienda asignada, registra y consulta sus receptiones.
- **Supervisor:** consulta operaciones y coordina store-assignmentes/metas en fases sucesivas.
- **Administrador:** configura usuarios, tiendas, variantes de producto y store-assignmentes.

## MVP — demostración 15/11/2026
1. Login y autorización mínima API, web y móvil.
2. Alta/consulta mínima de usuarios, tiendas y variantes de producto (modelo/talla; color opcional por definir).
3. Asignación de promotor a tienda.
4. Flutter: login, tienda asignada, formulario de recepción y confirmación.
5. API: persistencia transaccional de recepción + detalles + usuario + fecha.
6. Web: consulta de receptiones para verificar el flujo extremo a extremo.
7. Datos de demostración; no requiere despliegue remoto para declarar listo el MVP si la demostración local es reproducible.

## Posterior durante SIDET (prioridad a confirmar)
Ubicación física (área/estante/posición), stock operativo derivado de movimientos validados, traslados/salidas, cuotas, avance de ventas reportado, reportes avanzados, evidencias/fotos, posible escaneo.

## Fuera del MVP
Integración con POS/ERP de terceros, sincronización de inventario oficial, chat, push, OCR, reconocimiento visual, PDF/Excel export, Cloud Storage, Firebase, Container Registry, publicación en tiendas de apps, alta disponibilidad.

## Distinciones obligatorias
- Recepción = mercadería recibida, no venta.
- Avance comercial = cifra reportada, no evento POS verificado.
- Existencia operativa = cálculo interno condicionado a registros disponibles; no inventario oficial.
- Ubicación física no es requerida al registrar una recepción en MVP, pero debe poder relacionarse en fase futura.

## Condiciones de entrega
Se prioriza un recorrido funcional comprobable sobre cantidad de pantallas. Cambios de alcance se registran en backlog y ADR si afectan arquitectura.
