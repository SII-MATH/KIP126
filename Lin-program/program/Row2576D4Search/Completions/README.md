# Local completion feasibility

The complete-comparison screen remains correctly blocked. This experiment
instead enumerates every value of the two relevant unknown outgoing d3
columns and enforces the explicit local compatibility constraints.

C2 `(8,135)` has E3 dimension6; its unknown row2797 is column0 with five
possible output coordinates (32 values). The adjacent incoming d3 from
C2 `(5,133)` is zero: its only staircase row2633 is a stored d4 event.
The other five outgoing columns are fixed by imported d3 events or prefixes.
The S0 h2-product target `(9,139)` has E3 dimension2; unknown row3094 is
column0 with two output coordinates (4 values), and incoming d3 is zero.
All unknowns remain raw NULL in the source.

All 128 pairs of central completions admit at least one completion of the
next outgoing d3 matrices satisfying d3 squared zero; the experiment also
enumerates those adjacent unknown columns and records every admissible value.

The S0 E4 target `(8,135)` has representatives E2local2 and E2local1.
The actual C2 coefficient images give E3 coordinates `e0` and `e1` in C2.
Their source d3 is zero by the existing conditional row2796 result plus
row2797's earlier-page prefix. C2 naturality therefore forces unknown column0
to zero. Exactly four pairs of central completions satisfy this constraint
(the h2 unknown remains arbitrary), and C2 detects the full two-dimensional
target in all four. Its incoming d3 is zero, so none of these nonzero cycle
images can become a boundary.

The h2 images are both `[1,0]`, not two different directions. Imposing its
Leibniz square additionally forces unknown row3094 to zero and leaves one
pair of central values. It adds no detection needed for this route: C2 alone
already detects the full target under its explicit naturality constraint.

This does not turn NULL into a premise that the column is zero. It identifies
a proof route deriving the required cycle condition from naturality, then
proving injectivity with a zero incoming matrix. No countercompletion exists
within the enumerated local constraints. A Lean proof still needs the complete
actual coefficient matrices and d2 compatibility, a quotient construction for
arbitrary outgoing matrices satisfying naturality, the source map's zero
property, and the local d4 naturality/zero-preservation premises.

Run `enumerate.py`, then `review.py`. The independent reviewer rechecks raw SQL
rows, all 128 central choices, admissible adjacent completions, and all four
target vectors. Neither script claims an Adams realization or a d4 theorem.
