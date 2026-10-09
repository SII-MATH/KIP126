# Complete predecessor closure by tree paths

`sound` proves the existing `IndexedPredecessorClosure.PredecessorClosed`
predicate for the original full matrix family. It requires the family's
existing unique-key theorem, one exact projection binding, and acceptance
of a tree path certificate. It introduces no new mathematical assumption
about spectral-sequence data.

`Tree Entry` holds compact metadata `(key,n,m,k,h)` at leaves. Its ordered
flattening is bound by a Lean equality to `Compact.project family`.
`Tree Paths` has exactly the same shape, with three paths at every leaf:
incoming, current, and outgoing preceding-page comparisons. `false` goes
left, `true` goes right, and an empty path succeeds only at a leaf.

The checker recursively covers every table node. A shape mismatch fails,
so no row can be silently dropped. At each page greater than two, all
three paths must reach leaves with the exact calculated key and required
homology dimension. Pages at most two still require a matching witness
leaf, but their paths may be empty. Zero-dimensional predecessors must
be present just as in the original checker.

The soundness proof first proves that a successful path yields a member
of the flattened table. Unique keys then identify that member with the
original first-match `List.find?` result. This hypothesis is necessary:
without it, a path could select a later duplicate with a different
dimension. The proof then invokes the already proved exact compact/full
checker equivalence. Matrix coherence remains separate; `coherent_sound`
combines existing `Coherent` evidence with checked closure.

## API

```lean
def cert : IndexedPredecessorClosureTree.Certificate family :=
  { tree := metadataTree
    paths := witnessTree
    binding := projection_equals_flatten }

example : IndexedPredecessorClosure.PredecessorClosed family := by
  tree_predecessor_cert using cert with_unique family_unique
```

The lower-level theorem is:

```text
sound family uniqueKeys metadataTree witnessTree binding accepted
```

`binding` has type `Compact.project family = metadataTree.flatten`;
`accepted` has type `check metadataTree witnessTree = true`. Imported
JSON, hashes, or C++ execution are never used as proof evidence. Literal
trees and paths are kernel checked by `decide`.

The optional tactic module uses the dedicated `with_paths` and
`with_unique` keywords to avoid reserving ordinary declaration names.
Plain theorem instances only need `Basic`.

## Cost

The original compact checker performs a new linear `List.find?` for each
predecessor. The 1413-row family makes 2724 queries and 1,796,859 key
comparisons; the 1431-row family makes 2775 queries and 1,861,766 key
comparisons. Replacing search with `List.get` indices still traverses the
same number of list cells.

The new checker visits the table/witness tree once and follows three
paths per high-page leaf. With a balanced tree, each path has at most
`ceil(log2 N)` edges: 11 for both actual tables. Those actual witnesses
use 31,462 and 32,090 path nodes, respectively. These are structural
operation counts, not measured speedup factors. The general soundness
theorem does not need a balancing assumption; a poorly shaped tree is
still sound but may be slower. Flattening and the original family appear
only in the once-proved binding, not in the executable checker.

Root owns real 1413-row instances in
`IndexedPredecessorClosureTreeActual`; the continuation owner constructs
its 1431-row instance. This directory owns only the generic checker,
soundness theorem, tactic, and small tests.

## Validation

`python3 program/IndexedPredecessorClosureTree/compile.py` directly compiles
only `Basic`, `Tactic`, and `Tests`, serially with pinned Lean 4.32.2.
`review.py` independently checks path membership, full tree coverage,
permuted families, invalid paths, incorrect keys and dimensions, and the
original lookup semantics. It also checks balanced paths for sizes
including 1413 and 1431. The three current accepted records have zero
exit codes and no warnings; unsuccessful development attempts remain
in `evidence/`.

Small Lean examples reject missing/extra witness subtrees, paths ending
at internal nodes or beyond leaves, wrong keys, and wrong dimensions.
They prove the old semantic closure goal and old Boolean acceptance from
the new certificate. Duplicate-key tests record why the explicit unique
premise is indispensable.

No admitted proof, custom axiom, or native proof shortcut occurs in the
new sources. Accepted axiom reports contain only the standard logical
axioms or no axioms. The exhaustive root declaration audit is separate.
