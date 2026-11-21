# ADR-0003 — Product name, technical prefix and language convention

**Date:** 2026-11-04 · **Status:** Accepted

## Context
The product supports brand promoters working inside retail stores. Reception, product location, stock observations and target tracking are activities within the promoter's responsibilities; they do not make this a general warehouse management system. Technical names must be concise, clear and consistent.

## Decision
- Official product name: **Brand Promoter Management System**.
- Technical prefix: **`brand-promoter`**; do not append `management` to each repository.
- Four repositories and workspace as defined in `docs/process/naming-conventions.md`.
- Technical identifiers in English; Spanish for business/academic/UI content. The accepted v0.3.0 language policy in `docs/process/language-policy.md` extends this decision.
- Use singular **brand promoter** as a noun modifier in the product name and technical prefix. Collections use plurals where idiomatic.

## Alternatives
- `brand-promoter-management`: more explicit, but unnecessarily repetitive in repository names.
- `brand-promoter-ops`: shorter, but `ops` is less self-explanatory and overemphasizes operations.
- `warehouse-management`: misrepresents the primary user and scope.

## Consequences
Shorter repository identifiers; domain entities and REST resources retain specific names. Potential ambiguity if multiple brand-promoter products exist later is accepted, not a current blocker. The project prefix must not be repeated on every class or endpoint.
