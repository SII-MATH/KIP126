# Complete stem125 target input inventory

The pinned S0 database contains EXACTLY105 E2 additive basis generators in
stem125, across45 filtrations (5 through57, with gaps). There are also105
staircase rows. Every filtration's staircase vectors have full rank in its
entire E2 basis. inventory.json stores all basis global IDs, local indices,
monomials, raw d2, and every staircase combination with explicit global-ID
expansion. basis.csv and staircase.csv provide flat parseable views.

The stored staircase orientation split is38 incoming,63 outgoing and4
sentinel9000 states. Of the63 outgoing states,61 have stored target values
and2 (rows2696 and2852) have NULL targets at the next unresolved page.
The numerical sum38+63=101 is an input classification,
NOT101 mathematically justified exclusions. Likewise the following four
sentinel classes are only candidates, not proved survivors:

| Filtration | Total degree | Staircase ID | E2 local vector | E2 global IDs |
|---|---|---|---|---|
| 9 | 134 | 2695 | [2] | [2697] |
| 14 | 139 | 3080 | [1] | [3080] |
| 25 | 150 | 3993 | [2] | [3994] |
| 25 | 150 | 3994 | [0,1] | [3992,3993] |

Staircase IDs are NOT E2 basis IDs, even where the numerical ranges overlap.
The two-dimensional last degree uses a sum of two E2 basis vectors as one
staircase generator. No105-item list substitutes scalar polynomial strings
for these actual linear combinations.

For every incoming/outgoing state the inventory includes its encoded
page, the other differential degree, and local/global expansions of diff.
For NULL outgoing states, `event_page` names the next unresolved page,
not a proved nonzero event. Zero remains a possible value. See
`../NullTargetProofAudit/README.md` and its independent95-event review.
NULL stays JSON null and CSV [NULL]. Unknowns are not mapped to zero or
permanence. Database and claims CSV SHA256 and exact source queries are
recorded solely as provenance, not mathematical correctness evidence.

`review.py` independently queries SQL for complete E2 and staircase coverage,
checks all105 IDs and every coordinate expansion, the four raw sentinels,
the45 filtration groups, and byte-identical regeneration. It passed.
Run from program:

```
python3 AggregateTargetInventory/generate.py
python3 AggregateTargetInventory/review.py
```

This supplies the complete finite input for a future aggregate certificate.
Still required: actual semantic reasons excluding each of the101 entries,
induction inputs, page/comparison compatibility and the theorem relating
the finite inventory to the paper's candidate set. No Lean aggregate
elimination/survival theorem is asserted or generated here.

## Kernel-checked coordinate bases

Bases.lean now contains45 StaircaseCertificates.BasisCertificate values.
Both inverse identities are checked for each full degree basis, and105
column theorems identify every staircase row's actual E2 linear combination.
Aggregate.lean packages the45 spaces into finite graded coordinates and
proves forward/backward coordinate changes inverse on EVERY vector. The
finite sum of component dimensions is105, with45 components. The literal
status partition has38 incoming,63 outgoing and4 unknown entries, and the
exact four candidate local sums are retained in unknown_rows_exact.

These are finite coordinate isomorphism and classification theorems; they
prove no elimination, differential provenance or survival. Both modules
passed direct Lean -j1 compilation. The aggregate inverse theorem depends
only on propext, Classical.choice and Quot.sound. No sorry, new axiom or
native_decide is used. Register AggregateTargetInventory.Aggregate.
`review_lean.py` repeats independent SQL checks, checks45 certificates and
105 row identities, and verifies byte-identical Lean regeneration.
