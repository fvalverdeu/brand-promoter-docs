# Technical naming and language conventions

**Status:** Approved · **Applies to:** all four repositories · **Decision:** ADR-0003.

- Official product name: **Brand Promoter Management System**.
- Technical prefix: **`brand-promoter`**; repositories: `brand-promoter-docs`, `brand-promoter-api`, `brand-promoter-web`, `brand-promoter-mobile`.
- Use English for repository and directory names, technical filenames, code identifiers, database objects, API resources, branches, commits, PR titles and developer-facing technical documentation.
- Spanish is permitted for business requirements, user stories, acceptance criteria, academic deliverables and user-visible interface text. Do not translate established business concepts mechanically; document exceptions in the domain glossary.
- TypeScript classes/interfaces/enums: `PascalCase`; functions/variables/properties: `camelCase`; constants and enum values: `UPPER_SNAKE_CASE` where applicable; filenames/directories: `kebab-case`.
- PostgreSQL tables/columns: `snake_case`, use one consistent convention across migrations; Prisma model names: singular `PascalCase`, map names when necessary.
- REST resources: plural `kebab-case` (`/api/v1/receptions`, `/api/v1/store-assignments`); do not add the project prefix to every endpoint.
- Dart library/package identifiers: `snake_case`; Dart class names: `UpperCamelCase`, members: `lowerCamelCase`.
- Domain entity names should reflect business concepts (`Promoter`, `Reception`, `StorageLocation`) rather than redundant prefixes such as `BrandPromoterManagementReception`.
- Git branches: `feature/HU-007-reception`, `fix/...`, `docs/...`; Conventional Commits in English.
- Preserve stable traceability IDs (`RF-01`, `RNF-01`, `HU-007`, `CA-01`) unchanged.
- Any naming exception must be justified in a spec, glossary or ADR. Do not rename public APIs without compatibility review.
