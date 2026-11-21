# Open decision register
| ID | Topic | Provisional proposal | Blocks |
|---|---|---|---|
| DEC-01 | Variant identification | Internal UUID; optional external SKU | Variant model |
| DEC-02 | Roles and initial provisioning | Admin, supervisor, promoter; local-only admin seed | HU-001/002 |
| DEC-03 | Assignment policy | Multiple stores per promoter; history without physical deletion | HU-005 |
| DEC-04 | Reception event date | Reported date/time separate from registration date | HU-007 |
| DEC-05 | Reception corrections | No editing/cancellation in MVP; SIDET backlog | HU-007 |
| DEC-06 | Login and recovery | Email + password; recovery outside MVP | HU-001 |
| DEC-07 | Catalog and sizes | Footwear, model + size, optional color | HU-004 |
| DEC-08 | Offline | Online only in MVP | Flutter |
| DEC-09 | Physical location | Future store-scoped entity; not required for reception | SIDET |
| DEC-10 | Sales data | Reported progress only; no POS integration | SIDET |
| DEC-11 | Demo hosting | Undecided; reproducible local demo acceptable | Deployment |
| DEC-12 | Container Registry | Evaluate during SIDET via spike/ADR | Does not block MVP |

Do not turn provisional proposals into confirmed requirements without validation. The developer owns decisions; Samantha validates business rules.
