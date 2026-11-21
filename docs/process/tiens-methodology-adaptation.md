# Practices adapted from Tiens — documentary analysis
Source recorded in v0.2.0: Tiens `docs.zip`, particularly `alcance.md`, `contrato-minimo-datos-fase-1.md`, `modelo-datos-fase2.md`, `backlog-tecnico-prs-fase-2-admin.md`, `mantenedor-pruebas.md`, `workflow-git.md` and `Matriz-de-riesgos-y-mitigaciones.md`.
| Tiens practice | Adaptation |
|---|---|
| Explicit scope and exclusions | `product/mvp-scope.md` with milestone and SIDET phase |
| Minimum data contract | Specs + NestJS-generated OpenAPI |
| Relational model and constraints | Conceptual model and Prisma migrations |
| Technical backlog by PR | HU → spec → repository tasks → PR with acceptance criteria |
| Positive and negative tests | Traceable cases and execution evidence |
| Feature branches + Conventional Commits | Simplified workflow with small PRs |
| Risks and mitigations | Open decision register and contingency |

Do not transfer multi-country product rules, country-scoped roles, data or credentials from Tiens. This adapts documentary discipline; it does not claim Tiens already used formal SDD.
