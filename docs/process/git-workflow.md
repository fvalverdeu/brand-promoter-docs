# Git workflow simplificado (adaptado de Tiens)

Cada repo: `main` protegida en lo posible; ramas `feature/HU-007-reception`, `fix/...`, `docs/...`. Evitar `develop` por defecto con un solo desarrollador y plazo corto; puede añadirse si se justifica.

1. Revisar `git status`, rama actual y remoto antes de tocar archivos.
2. Crear rama desde `main` actualizado.
3. Commit convencional en inglés con HU: `feat(api): add reception transaction (HU-007)`.
4. Ejecutar tests/lint/build y registrar evidencia.
5. PR pequeño con enlace a HU/spec y cambios de contrato.
6. Merge solo después de revisión; no mezclar cambios de varios repos en un commit ficticio.
7. Si una HU atraviesa repos, abrir issues/PRs enlazados y mantener compatibilidad de API.

No copiar credenciales, `.env` ni historiales privados de Tiens/IoT.
