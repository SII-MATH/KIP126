# Conditional whole E5 branch analysis

The imported E4 model has 17 nonzero stem125 centers and 24 coordinates
in either retained row2574 branch. Thirteen centers now have complete d4
comparisons: their 17 input coordinates give two homology coordinates,
one at filtration11 and one at filtration18. Four centers have unresolved
full differential columns. This directory keeps all possibilities rather
than asserting a single E5 coordinate count.

| Center filtration | E4 input | Unresolved finite data | Local E5 counts |
| --- | ---: | --- | --- |
| 9 | 1 | row2916 d3 target-prefix branch; row2695 d4 value | 0 or 1 |
| 14 | 1 | row2708 d3 controls incoming source dimension; row2858 d4 value | 0 or 1 |
| 15 | 2 | row2925 d4 column; other incoming column is stored row2926 | 0 or 1 |
| 25 | 3 | row3750 incoming column and row3993/3994 outgoing values | 0, 1 or 2 |

`Product.Choice` indexes 2, 3, 4 and 20 complete local comparisons,
respectively. Its 480 choices are not assertions of actual Adams
realizability. For each choice, `wholeEquiv` proves the product of the 17
explicit positive-center quotients and 28 arbitrary-neighbor zero-center
quotients is additively equivalent to `Vec (Product.dimension choice)`.
`whole_cardinality` proves exact cardinality `2^D`, and
`range_of_coordinate_count` proves `2 <= D <= 7`. Every integer in that
range occurs among these finite choices; no choice is selected.

## Complete data and explicit branches

`search.py` extends copied DAGs in memory for both E4 branches. It reuses
the previously proved conditional `AggregateLeibniz3564Conditional.Source`
comparison to describe `(21,147)` on E4. This retains the row3564 Leibniz
interpretation and the other complete source-column premises; it does not
turn them into unconditional topology theorems. The search obtains 21 new
complete comparisons, including the 13-center known d4 results and auxiliary
predecessors. The accepted 358-block and 95-event snapshots remain unchanged.

`generate.py` invokes the actual C++ `page-transition-export` for all local
branches. Lean checks every inclusion/projection, full kernel/boundary and
homotopy identity in `Data.lean`. `Branches.lean` proves the enumerations
cover all finite matrices satisfying their stated full-source conditions:

- Filtration9: arbitrary 1 by 1 outgoing matrix, empty incoming source.
  The row2916 d3 target prefix has two complete matrices `[0,b,1]` with
  incoming column `[1,0,0]`; both quotients have one coordinate. Its chosen
  quotient basis must be interpreted before the subsequent arbitrary d4
  value is attached to an actual map.
- Filtration14: the row2708 d3 source comparison has incoming `[0,a]` and
  zero outgoing map. Its next dimension is one when a is zero, otherwise
  zero. `source14_dimension_link` retains this dependency. The d4 source
  therefore is empty or one-dimensional; its unknown value is kept in the
  latter case. The d4 outgoing target is already a zero coordinate space.
- Filtration15: incoming matrix `[b,1;c,0]` retains the known second column
  and both possible first-column bits. Full outgoing zero uses both the
  stored boundary and later-prefix interpretations. No named-value premise
  stands in for the complete incoming matrix.
- Filtration25: incoming columns are `(1,0,0)` and `(b,c,d)`, outgoing is
  `(0,u,v)`. The whole complex condition forces `u*c xor v*d = 0`. Exactly
  20 choices survive among the 32 raw bit combinations. The exhaustive
  theorem assumes the one stored incoming value plus `IsComplex`; it derives
  the restriction on all remaining columns. The corresponding previously
  checked row3992 source comparisons agree exactly with these incoming
  matrices.

`Family.lean` checks complete local source/target families, including
consecutive dimensions and matching shared matrices, for all four types.
It also checks the 163-entry full predecessor family of the 13 known centers.
This is explicit finite compatibility. No globally realized full Adams
sequence for all 480 combinations, no interpretation of omitted neighbors,
and no compatibility with future pages is claimed.

## All centers and all combinations

`Product.previous_dimensions` binds each positive-center input to the same
center in either earlier E4 branch. `previousHomologyEquiv` uses its complete
previous quotient equivalence. The checked original-index partition contains
17 positive and 28 zero centers. Fourteen of the zero centers were already
zero at E3; fourteen more are zero in the full E4 comparisons.

`Zero.lean` reuses the arbitrary-neighbor zero-current theorem. Unknown
neighbor dimensions or maps are never replaced by a fabricated zero
comparison. Mathematical propagation of the earlier zero spaces to actual
later pages remains an explicit page-semantics obligation. Quotient addition
is defined on representatives and the coordinate equivalence is proved to
preserve it, so these results concern all linear combinations.

## Reproduction

Run from `program/`, without simultaneous global Lake builds:

```sh
python3 Stem125E5Search/search.py
python3 Stem125E5Search/generate.py
python3 Stem125E5Search/product_generate.py
python3 Stem125E5Search/family_generate.py
python3 Stem125E5Search/compile.py
python3 Stem125E5Search/review.py
python3 Stem125E5Search/assert_current.py
```

Six Lean modules are compiled serially: `Data`, `Known`, `Product`,
`Branches`, `Zero`, `Family`. Source/log/olean fingerprints are recorded by
actual compilation. A later Lake build needs separate current-artifact
evidence; historical direct hashes are not rewritten.

`review.py` independently verifies exact SQL degrees, new columns and cycle
projections, every comparison law in the 163-entry predecessor closure,
all local branch laws, the 480 possible count expressions, and 12385 local
cycle pairs. It verifies shared incoming matrices against the existing
row3151 and row3992 source branch records. Digests and Python/C++ results
are provenance and regression tools; Lean's kernel checks the mathematical
proofs. No `sorry`, custom axiom or native-evaluation trust shortcut is used.

Actual topology still requires full E2 basis realization, all finite column
and quotient interpretations, stored differential and prefix meanings, the
product assumptions, and compatible named-class transport. A unique E5
page, later permanence, convergence, stable homotopy identification and full
Kervaire conclusions are not established by this conditional branch analysis.
