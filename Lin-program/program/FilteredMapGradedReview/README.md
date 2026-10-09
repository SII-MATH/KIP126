# Independent graded-comparison review

The five reviewed frozen modules are `FilteredMapGradedComparison.Basic`,
`Event`, `Recurrence`, `AllTargets`, and `Examples`. No correctness or
semantic findings were identified by source review and the independent
finite-group oracle. This review does not modify those sources or their
historical direct-compilation records.

## Source and mathematical review

`Basic` uses the actual quotient of the cycle subgroup by all higher-source
corrections. The leading-class map is injective: differences of two cycle
representatives already map into the current target filtration, so a
higher-source difference belongs to the full correction subgroup. Its
range is the survivor subgroup, and the target comparison is the third
isomorphism theorem for the actual relation subgroups.

`Event` transports the differential through these proved equivalences.
The ordinary extension comparison permits changing the original leading
representative; it does not incorrectly require that original representative
to be a cycle. Essentiality concerns the target quotient class, not just a
nonzero initial associated-graded class. The length-zero map is the graded
map induced by the given homomorphism.

`Recurrence` compares survivors inside the same initial graded source.
Its target step is from `(s+1,n)` to `(s,n+1)`, keeping target degree
`s+n+1` fixed. Surjectivity and the exact differential-image kernel prove
the quotient/cokernel statement, including targets which were already zero.

`AllTargets` uses the natural-number cutoff `max(t+1-n,0)`. When `n <= t`,
the source degree `s=t-n` agrees with the local construction. Advancing
from `n=t` to `n=t+1` includes the differential from source degree zero;
it must not be omitted. For `n >= t+1`, the cutoff stays zero and the
relation subgroup is exactly

```text
G_(t+1) + (f(F_0) intersect G_t).
```

Filteredness is used in the length-zero relation theorem; monotonicity
uses antitonicity of `F` in the correct direction for truncated subtraction.
The final-relation theorem is the elementary image/preimage intersection
identity and does not require `F_0` to be the entire source. Identifying
this relation with the whole-image relation would need that extra premise.
The proof of the local-to-next kernel includes `s=0` and makes no nonzero
or nontriviality assumption on its quotient groups.

The reviewed examples distinguish nonzero essential targets, nonzero
initial target classes which are earlier boundaries, and noncycle original
representatives which admit corrected extensions.

## Independent finite-group replay

`review.py` enumerates all additive endomorphisms and all three-level
decreasing subgroup flags in `Z/4`, `(Z/2)^2`, and `Z/6`, extended constantly
after the third level. Neither initial subgroup is required to be the full
group, and neither final subgroup is required to vanish. Literal coset
enumeration does not import the producer or the original review script.

The successful `oracle-review.json` contains:

- 4,870 filtered maps, including 2,796 proper source initial subgroups.
- 1,450 nonseparated source and 2,796 nonseparated target filtrations.
- 58,440 local comparisons and survivor recurrences, plus 58,440 shifted target recurrences.
- 293,018 event/essentiality checks, including 2,996 noncycle-original events.
- 73,050 all-target cokernel steps and 97,400 truncated stable steps.
- 1,106 nonzero kernels at the final source-degree-zero step.
- 5,398 cases where using the whole-source image would enlarge the final relations incorrectly.

The oracle checks literal quotient maps, their surjectivity and kernels,
and quotient cardinalities, not merely equality of dimensions. These finite
checks supplement the general Lean proofs; they are not the proof of the
infinite-group theorems.

`Examples.lean` is a separate review leaf exhibiting a proper `F_0` on
`Int x Int`, the strict whole-image error, a nonzero page-zero target killed
by the source-zero step, and stability at every later length. Its first
direct compilation was deliberately terminated with observed subprocess
exit `-15` while the parent agent rebuilt dependencies. That interrupted
record and empty log are preserved. The later serial direct compilation
has observed exit0 with six standard-only axiom reports; all four frozen
comparison dependency objects stayed unchanged during that compilation.
`review.json` includes this successful leaf together with the five frozen
modules and their 30 reports.

```sh
python3 program/FilteredMapGradedReview/review.py --oracle-only
# After the parent dependency build has completed:
python3 program/FilteredMapGradedReview/compile.py
python3 program/FilteredMapGradedReview/review.py
```

The review verifies frozen source/log identities and the 30 reported
standard-or-no-axiom dependencies. Current object hashes are recorded
separately from historical direct hashes, which are never rewritten after
Lake rebuilds. The allowed axioms are `propext`, `Classical.choice`, and
`Quot.sound`; neither C++ output nor file hashes serve as proof premises.

## Scope

The fixed paper excerpt is Kervaire v2 Definition 2.1, Notation 2.2 and
Definition 2.3 in `FilteredMapGradedComparison/paper-context.json`.
The construction proves the algebraic local pages, leading comparisons,
events, and source/target recurrences for a filtered additive map at fixed
internal grading. This review makes no claim of a packaged categorical
spectral sequence, convergence, actual Adams-to-homotopy identification,
synthetic ESS, or Kervaire Theorem 6.1. Source-side infinite survival and
convergence are not consequences of the target-side stabilization theorem.
