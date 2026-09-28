# Lean Blueprint marker policy

## Contents

1. Marker meanings
2. Mechanical versus semantic evidence
3. Axiom policy
4. Safe synchronization

## Marker meanings

### Statement `\leanok`

The exact Lean declaration exists and its type has passed the project's
mechanical checks. A semantic audit must still confirm that the Blueprint prose
faithfully states that type.

### Proof `\leanok`

The proof is accepted under the project's policy: no `sorryAx`, no unapproved
project axiom, and successful compilation. Put the marker inside the associated
`proof` environment.

### `\mathlibok`

The node faithfully restates an exact declaration supplied by the pinned
Mathlib version. This requires semantic verification and is not synchronized
from project source.

### `\notready`

The node's mathematical statement, source status, or Lean interface is not
stable. Mechanical tools must not override it.

## Mechanical versus semantic evidence

Compilation proves elaboration, not equivalence with prose. Declaration-name
resolution proves existence, not that the type matches the intended theorem.
`#print axioms` proves an axiom dependency fact, not mathematical correctness.

Use marker synchronization and semantic audit together.

## Axiom policy

Lean commonly reports `propext`, `Classical.choice`, and `Quot.sound`. Many
projects accept them; some adopt stricter policies. `sorryAx` is never a
completed proof.

An explicit external-input axiom may be allowed by a project trust boundary.
Such a boundary node should be visible and documented. Downstream project
theorems may count as accepted only when the policy explicitly permits that
axiom.

## Safe synchronization

1. Build the project.
2. Resolve the exact declaration.
3. Query transitive axioms.
4. Produce a dry-run diff.
5. Review additions and removals.
6. Apply explicitly.
7. run `leanblueprint checkdecls`;
8. run semantic audit.

On uncertainty, remove or withhold a proof-complete claim. Never add one based
on a regex-only direct `sorry` scan.
