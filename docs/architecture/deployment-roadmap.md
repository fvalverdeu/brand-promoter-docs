# Despliegue y roadmap técnico

## MVP
- PostgreSQL local o instancia de demo aprobada; API y web con configuraciones de entorno independientes.
- Flutter Android en dispositivo/emulador; la URL de API no debe usar `localhost` cuando se prueba en teléfono físico.
- No publicar secretos, puertos de BD a Internet ni credenciales demo reales.

## SIDET: spike de contenedores
Evaluar Dockerfile para NestJS, pipeline de CI, repositorio de imágenes (Container Registry/Artifact Registry/GHCR) y despliegue a entorno demo; registrar ADR con costo, credenciales, rollback y tiempo. No se considera entregable MVP ni funcionalidad garantizada del contrato.

## Otras evoluciones
Cloud Storage solo si fotos/evidencias entran al alcance; Firebase/FCM solo si se aprueban notificaciones. Separar C4 lógico de diagrama de despliegue.
