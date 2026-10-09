# Compact predecessor closure

This checker proves exactly the existing `PredecessorClosed family`
predicate using a compact literal table. Each table entry contains only
the exact key and four dimensions `n,m,k,h`; no differential or homology
matrix is stored in the repeatedly searched table.

For each higher-page entry, the checker requires the preceding-page
incoming, current and outgoing comparisons with homology dimensions
`n,m,k`. Keys, negative degrees, first-match lookup behavior, and diagnostics
are unchanged. `check_project` proves Boolean equality with the original
checker, not merely one direction of soundness. This also handles duplicate
keys exactly as the original closure check does.

The performance boundary is the binding theorem. A producer supplies a
literal table and Lean checks `project family = table` once. Every later
lookup reduces only the compact literal. Passing `project family` itself
as the executable table forfeits this separation and should be avoided
for large families.

```lean
def table : IndexedPredecessorClosureCompact.Table := [
  -- Literal entries have the order: key, n, m, k, h.
]

theorem binding : IndexedPredecessorClosureCompact.project family = table := by
  rfl

theorem closed : IndexedPredecessorClosure.PredecessorClosed family := by
  compact_predecessor_table_cert using table bound binding
```

Alternatively construct `Certificate family := { table, binding }` and use
`compact_predecessor_cert using certificate`. `Certificate.check` reads
only its `table` field. `check_sound family table binding accepted` is the
non-tactic interface. The distinct `Verified family` wrapper supports the
generic `lin_cert` without overriding the original Unit-certificate instance.

The checker intentionally remains a linear search over a list, with
quadratic key comparisons for a full family. It eliminates repeated
kernel reduction of all the large matrix-bearing entries. It does not
yet supply a sorted-map or tree lookup proof. A literal table can also
be shared between families by separate projection bindings if equal.

`diagnose_project` proves exact equality with the previous diagnostic,
including first failed row (one-based) and incoming/current/outgoing
priority. `diagnose_none_iff` links the compact diagnostic and checker.

Closure alone says neither that wire matrices are valid nor that keys are
unique. `coherent_and_closed` combines a separately proved `Coherent family`
with the compact certificate. Empty families are vacuously closed; requested
key coverage remains a separate check. No actual Adams realization follows
from this finite property.

The compiled tests cover exact literal binding, both dedicated tactics,
generic verifier, missing source, wrong dimension, wrong object, diagnostic
row number, and rejection by tactic. Mutating matrices preserves compact
closure while the coherence checker rejects the malformed family, explicitly
testing this separation.

```text
python3 program/IndexedPredecessorClosureCompact/compile.py
python3 program/IndexedPredecessorClosureCompact/review.py
```

Only this directory's new modules are compiled by the script, serially.
Every observed attempt and source/import hash is retained. The final
accepted records, not historical failures, establish verification.
No admitted proof, custom axiom, native proof evaluator, or producer trust
is used. Projection binding and compact checker reduction are both checked
by Lean's kernel.

The accepted local run has four warning-free modules, seventeen reports
using only standard axioms and six reports with no axioms. The independent
oracle checks 1,311 families, 6,435 lookups, 594 duplicate-key cases, 1,287
matrix mutations, 297 missing-entry mutations, and 297 dimension mutations.
No runtime speedup factor is claimed until measured on the parent family's
actual projection binding and compact certificate check.
