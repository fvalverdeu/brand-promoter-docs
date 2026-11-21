# Autonomy policy
Approved scope and explicit developer authorization define the execution boundary. ChatGPT is optional, never a required operational handoff. The developer owns prioritization, approvals and merges; Samantha validates business semantics.

## Autonomous execution
Within an authorized sprint or bootstrap plan, select the next ready item, derive technical details and draft specs from approved rules, plan, implement, test, fix, and record evidence. Derived specs may be used without separate approval only when they add no business rule, contract or schema decision and meet DoR. Keep work in small HU-sized increments; no new chat prompt or approval per routine increment. Update backlog, traceability and an English implementation record per completed or blocked HU. Do not mark unreviewed work Done if DoD requires review. Continue with independent authorized work unless a mandatory gate or safety/blocking issue requires a stop.

## Approval boundaries
Stop before new or ambiguous business rules, changes to approved scope, priorities or dates, approved schema/model changes, destructive migrations, changes to approved API contracts, auth/authz behavior, consequential dependencies or infrastructure, or work beyond the authorized sprint. Stop after at most three meaningful unsuccessful attempts on the same defect (earlier if risk or uncertainty warrants). Do not commit, push, merge, deploy or install outside explicit authorization. Preserve unrelated local changes. At mandatory gates stop and request developer approval; approval does not imply authorization to push/deploy. Record decisions in canonical specs/ADRs before affected work resumes.

## Escalation
Generate one external review ZIP per gate or blocking decision using review-package-policy.md and the review skill. Spanish report; technical evidence unchanged. For a blocked task report what is actually missing, not a guessed resolution. Return the external ZIP path and concise Spanish summary in chat. The developer can decide directly or consult ChatGPT. Never require copy/paste of routine reports. If package creation fails, explain the blocker and retain safe evidence; do not claim success.
