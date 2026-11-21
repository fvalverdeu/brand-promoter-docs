# Spec HU-001 — Autenticación
**Estado:** BORRADOR · RF-01 · RNF-01/02

## Historia
Como usuario activo, quiero iniciar sesión para acceder únicamente a las funciones de mi rol.

## CA
- CA1: credenciales válidas de usuario activo permiten sesión.
- CA2: credenciales inválidas o usuario inactivo son rechazados sin revelar si existe el correo.
- CA3: API protegida sin token retorna 401.
- CA4: token vencido/inválido retorna 401.
- CA5: acceso a función sin rol permitido retorna 403.
- CA6: respuesta nunca incluye `passwordHash`.

## Proposed contract
`POST /api/v1/auth/login`, `GET /api/v1/auth/me`. Finalize exact payload and expiration before coding.

## Technical verification
Unit: active user validation, hash comparison; integration: login 200/401, me 200/401; authorization 403. Minimum web and mobile E2E.

## No incluye
Recuperación de contraseña, SSO, Firebase Auth.
