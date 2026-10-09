# Conditional Row2576 d4 detector with an unknown target differential

Nine modules compile with Lean 4.32.2. The final interface is
`Source.named_d4_zero`, or `ImportedBoundary.transported_d4_zero` when the caller
supplies the incoming matrix and its interpretation condition explicitly.
`Matches.matched` records the resulting zero column in the fixed source
coordinates. All printed axioms are among `propext`, `Classical.choice`, and
`Quot.sound`; no `sorry`, `native_decide`, custom axiom, or C++ trust is used.

## Finite objects and checked maps

The source is S0 `(4,132)` E4, dimension1. Its d3 comparison is the exact
`AggregateC2H2Conditional` comparison whose zero outgoing column is supplied
by the earlier C2+h2 d3 argument. The d4 target is S0 `(8,135)` E4, dimension2.
Its d3 comparison retains the earlier conditional row2796 d3 argument and
row2797's imported earlier-page prefix. These are earlier d3 conditions, not
an assumption of the desired Row2576 d4 zero. Raw Row2576 remains NULL.

`Actual` checks twelve actual C2 bottom-cell coefficient matrices, 43 columns,
using explicit module relations and lifted S0 relations. `MapSemantics` gives
the all-vector interpretation of such matrices under the stated generator
image/vanishing-relation conditions. `Comparison` checks eight complete d2
quotients and four complete chain maps and proves the induced coordinate
formula on every homology class. The two target basis vectors map to the first
two independent coordinates in the six-dimensional C2 E3 target.

## Arbitrary target outgoing d3

C2 `(8,135)` has an unknown outgoing d3 row2797. `Target` keeps its complete
outgoing matrix arbitrary (`Matrix 5 6`) and assumes the explicit local d3
naturality square with the actual induced E3 map. The corresponding S0 d3 is
zero, so naturality forces the two image vectors to be cycles. The helper
`unknown_column_forced` derives the relevant zero column; NULL is never taken
as its proof.

The incoming d3 into C2 `(8,135)` is displayed as the zero `Matrix 6 1`.
Its provenance is C2 staircase row2633 at `(5,133)`, stored level9996 with a d4
value. Interpreting that encoding as an earlier d3 zero is an **imported finite
semantic condition**, not a derived theorem about a topological spectrum.
`ImportedBoundary.IncomingMeaning incoming` explicitly states this condition,
and `transported_d4_zero` transports the proof to the caller's incoming matrix.

With zero incoming boundaries, `Target.underlying` defines an underlying-vector
map from the quotient for every arbitrary outgoing matrix. The actual C2 map
is injective on the entire two-dimensional source space; `reflects_zero`
therefore needs no complete E4 target comparison or choice of the missing
outgoing entries. The proof handles all outgoing matrices satisfying naturality.

The C2 source E3 space is zero-dimensional. Its induced E4 map is zero for
every source completion, with no unknown source entry assigned. Local d4
naturality and preservation of zero then imply the named d4 is zero.

## Validation and limits

`review.py` independently checks all SQL bases, raw d2 columns, relation traces,
all actual matrix entries, complete comparison identities and exact inherited
d3 records. It explicitly equates each audited embedded wire with its imported
file. `CurrentImports` freshly imports all twelve wire files and proves equality
to the compiled constants; `assert_current.py` requires all nine successful
compiles and matching source/log/olean/imported-file hashes.

The completion enumeration in `Row2576D4Search/Completions` motivated this proof.
The earlier complete-comparison search remains correctly recorded as finding
no complete candidate. This proof uses a quotient for arbitrary outgoing
matrices with explicit naturality, so it does not need the missing complete
comparison. The independent finite enumeration is not used as a Lean axiom.

The implementation does not identify these finite presentations with actual
Adams pages or prove the imported prefix interpretation, local d3/d4 naturality,
convergence, permanence, or aggregate Kervaire exclusion. Those assumptions
remain visible at the interpretation boundary.

From the repository root:

```sh
python3 program/Row2576D4Detector/export.py
python3 program/Row2576D4Detector/generate.py
python3 program/Row2576D4Detector/review.py
python3 program/Row2576D4Detector/compile.py
python3 program/Row2576D4Detector/assert_current.py
```
