# KIPBase agent guidance

Read this file when performing a Lean code task under `KIPBase/`.

## Progress ledger

- [`docs/kipbase-progress.json`](kipbase-progress.json) is the declaration
  inventory for `KIPBase/**/*.lean`.
- Read the ledger before choosing work. Check whether the declaration already
  exists, is blocked, or is an axiom before starting another proof.
- Before completing the task, synchronize the ledger with the current working
  tree. It must still contain every named declaration under `KIPBase/**/*.lean`
  with its current path, line, kind, and source-level status.

## Status boundary

- `blocked` means the declaration body still contains `sorry`.
- `no_sorry_body` means the declaration body contains no `sorry`; it does not
  certify its transitive dependencies, compilation, or model applicability.
- `axiom_backed` means the declaration is supplied as an axiom or has no proof
  body.
- Do not rewrite a status to make the inventory appear complete. A ledger entry
  is source status, not proof-completion evidence.
