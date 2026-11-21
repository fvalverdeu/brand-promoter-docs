# Deployment and technical roadmap
## MVP
- Local PostgreSQL or approved demo instance; independent environment configuration for API and web.
- Flutter Android on device/emulator; do not use `localhost` as the API URL on a physical phone.
- Do not publish secrets, DB ports to the Internet or real demo credentials.

## SIDET: container spike
Evaluate a NestJS Dockerfile, CI pipeline, image repository (Container Registry/Artifact Registry/GHCR) and demo deployment; record an ADR covering cost, credentials, rollback and time. This is neither an MVP deliverable nor a guaranteed contractual feature.

## Other evolution
Cloud Storage only if photos/evidence enter scope; Firebase/FCM only if notifications are approved. Separate logical C4 from deployment diagrams.
