# Catálogo de requerimientos v0.1
Estado: **propuesto** hasta validación de reglas de negocio con Samantha. Prioridad M = MVP, S = SIDET.

| ID | Tipo | Descripción verificable | Prioridad | Estado |
|---|---|---|---|---|
| RF-01 | F | Autenticar usuario activo con credenciales válidas | M | Propuesto |
| RF-02 | F | Administrar usuarios con roles administrador, supervisor y promotor | M básico | Propuesto |
| RF-03 | F | Registrar y consultar tiendas | M | Propuesto |
| RF-04 | F | Registrar y consultar productos y variantes por talla | M | Propuesto |
| RF-05 | F | Asignar y consultar promotores por tienda | M | Propuesto |
| RF-06 | F | Mostrar en móvil las tiendas autorizadas del promotor | M | Propuesto |
| RF-07 | F | Registrar recepción con uno o más detalles y cantidades positivas | M | Propuesto |
| RF-08 | F | Consultar recepciones desde móvil y/o backoffice según permisos | M | Propuesto |
| RF-09 | F | Consultar existencias operativas con reglas de cálculo documentadas | S | Pendiente definición |
| RF-10 | F | Definir ubicaciones físicas y asignar mercadería a ubicaciones | S | Pendiente definición |
| RF-11 | F | Registrar movimientos internos y salidas, con trazabilidad | S | Pendiente definición |
| RF-12 | F | Configurar cuotas por promotor, tienda y periodo | S | Pendiente definición |
| RF-13 | F | Registrar avance de ventas reportado, con fuente y fecha | S | Pendiente definición |
| RF-14 | F | Calcular y consultar porcentaje de cumplimiento de metas | S | Pendiente definición |
| RF-15 | F | Filtrar y consultar reportes por tienda, promotor y periodo | S | Pendiente definición |
| RF-16 | F | Auditar actor, fecha y operación de registros críticos | M mínimo / S extendido | Propuesto |

| ID | Descripción no funcional | Verificación mínima | Prioridad |
|---|---|---|---|
| RNF-01 | Contraseñas seguras y tokens validados | Hash, expiración, credenciales nunca retornadas | M |
| RNF-02 | Autorización por rol y tienda | Pruebas 401/403 y alcance tienda | M |
| RNF-03 | Integridad transaccional | Fallo en detalle revierte recepción completa | M |
| RNF-04 | Validación de entradas | Rechazo de cantidad <=0, referencias inválidas | M |
| RNF-05 | Trazabilidad | `createdBy`, timestamps y consulta responsable | M |
| RNF-06 | Compatibilidad | Android de prueba y navegador actual | M |
| RNF-07 | Mantenibilidad | Módulos separados, lint y tipos | M |
| RNF-08 | Testabilidad | Unitarias + integración API de flujos críticos | M |
| RNF-09 | Gestión de secretos | `.env.example` sin credenciales reales; `.gitignore` | M |
| RNF-10 | Rendimiento orientativo | Consultas simples <1 s local con dataset documentado; no SLA | S |
| RNF-11 | Recuperación | Migraciones reproducibles y respaldo documentado | M básico |
| RNF-12 | Despliegue | Instrucciones local/demo; CI/CD y registry en SIDET | M/S |

**No funcional pendiente de concretar:** tamaño esperado de catálogo, dispositivos Android objetivo, conectividad offline, política de retención y respaldo, volumen de usuarios.
