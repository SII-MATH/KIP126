# Complete finite stem125 E4 coordinate count

Both permitted row2574 branches give an additive equivalence between the
full finite stem125 E4 quotient product and 24 F2 coordinates, hence exact
cardinality `2^24`. The theorem concerns all cycle combinations modulo
all incoming boundaries. It does not count or subtract named events.
Neither unknown branch is selected.

The 45 imported nonzero E2 centers split into 31 centers with nonzero E3
homology (44 coordinates in total) and 14 centers already zero on E3.
`Product.partitionEquiv` proves the index partition is bijective and
`Product.previous_dimensions` binds every nonzero center to the existing
complete d2 quotient at the same index. `Product.zero_previous_dimension`
checks every zero center against that same d2 inventory.

## Missing centers completed

| Filtration | Full d3 input | Full d3 homology | Incoming stored event |
| --- | ---: | ---: | --- |
| 34 | 1 | 0 | row4599 |
| 36 | 1 | 0 | row4767 |
| 45 | 1 | 0 | row5640 |
| 57 | 1 | 0 | row7008 |
| 9 | 3 | 1 in both branches | row2574, restricted by two quotient products |

`search.py` extends a copy of the existing DAG in memory. It obtains four
new d3 comparisons and four new d2 predecessor comparisons using the actual
C++ `page-transition-export`. It changes neither the 358 original blocks
nor the 95 accepted event snapshot. Every full inclusion/projection and
homotopy identity is subsequently checked by Lean.

For the filtration57 outgoing target `(60,184)`, both the current and
incoming E2 sources are empty within the full declared E2 database window.
The outgoing target `(62,185)` is nonempty and its own d2 is NULL. The new
comparison therefore has shape k1/m0/n0: it does not infer that target's
unknown d2, nor read unknown nonempty-source d2 columns beyond `d2_t_max`.
Actual completeness of these finite E2 bases remains a mathematical premise.
The existing high-filtration conditional d2 interpretations are retained.

## The two filtration9 branches

The product detector orders the E3 coordinates as raw basis directions
`[e1,e2,e3]`; the aggregate orders them `[e2,e3,e1]`.
`Branches.projection_matches_on_all_cycles` checks the exact coordinate
change for every cycle (in fact the finite projection equation holds on
every raw vector). The two existing quotient-product restrictions give
`(0,b,1)` in detector coordinates and `(b,1,0)` in aggregate coordinates.

`Branches.constrained_column` derives existence of this Boolean parameter
from the supplied known product differential and full h2/f0 Leibniz
hypotheses. The complete outgoing row is `[0,0,1]`: first-column zero uses
the existing row2695 conditional detector interpretation, second-column
zero uses its explicit stored prefix, and third-column nonzero uses stored
row2697. `outgoing_from_basis_values` requires all three values and
`incoming_from_value` binds the full one-column incoming matrix.
`local_dimension_without_choosing_branch` proves the resulting homology
has one coordinate without specifying b.

Both branch certificates are generated again through the real C++ solver
and compared byte-for-byte with the existing affine-search results.
`Family.coherent` checks each separate 126-entry predecessor family,
including all full comparisons, unique keys, every supplied adjacent
outgoing/incoming match and all consecutive-page dimensions. The families
contain 125 shared records and exactly one different branch record. No
family contains both conflicting choices, and missing neighbors are not
interpreted as zero.

## Zero centers without fabricated matrices

`ZeroCenter` accepts arbitrary neighboring dimensions k/n and arbitrary
matrices `Matrix k 0` and `Matrix 0 n`. `zero_center_unique` proves every
cycle/boundary quotient element equals zero solely because its current
coordinate space is `Vec 0`. It makes no choice of the neighboring pages.
This also handles the high-filtration zero centers whose missing neighbors
would require additional unknown d2 data if complete numerical blocks were
constructed. Those blocks are not created.

`WholeE4 b zeroCenters` is the regrouped product of all 31 nonzero-center
quotients and all 14 arbitrary-neighbor zero-center quotients.
`wholeEquiv`, `whole_cardinality`, and `whole_preserves_addition` prove its
24-coordinate structure, exact cardinality and compatibility with addition
on cycle representatives. As in the preceding E3 library, the precise
statement uses additive coordinate equivalence and cardinality, not a new
Mathlib Module instance with a finrank assertion.

## Reproduction and boundaries

Run from `program/` with no simultaneous global Lake build:

```sh
python3 Stem125E4Search/search.py
python3 Stem125E4Search/generate.py
python3 Stem125E4Search/compile.py
python3 Stem125E4Search/review.py
python3 Stem125E4Search/assert_current.py
```

The five Lean modules are `Data`, `Product`, `Zero`, `Branches`, `Family`.
They all compile serially with actual exit0. Ten printed axiom reports use
only `propext`, `Classical.choice`, and `Quot.sound`. No `sorry`, custom
axiom, native evaluation shortcut or trust in C++ is used. The existing
`stem_homology_cert` tactic checks the full nonzero-center batch in both
branches; arbitrary-neighbor zero factors are handled by the proved
uniform theorem.

`review.py` independently reconstructs new columns and projections from
SQL and retained prefix roles; checks the coordinate permutation on all
32 raw vectors and all eight detector coordinates; verifies every full
comparison and adjacency in both 126-entry families; and checks all 968
pairs of local cycles in the two 31-center products. `review.json` lists
the exact inherited conditional dependencies. Source/log/olean fingerprints
remain historical direct-build evidence; a later Lake build needs its
separate checkpoint rather than refreshing those hashes.

This is a complete finite coordinate result conditional on the recorded
matrix interpretations. Applying it to actual Adams pages requires the
complete E2 realization, actual differential and quotient meanings, stored
prefix/differential interpretations and product hypotheses. It does not
supply future permanence, convergence, stable homotopy identification or
a complete proof of the Kervaire paper from its original topology.
