# Row2916 whole d4 via an actual Ceta lift

`Actual.whole_sphere_d4_zero` proves the complete actual d4 from sphere
degree `(13,137)` to `(17,140)`. It uses complete finite comparisons and
explicit actual interpretations. The desired d4 value and a named source
cycle are not assumptions.

The exact raw sphere ss row2916 has base1, hence E2 basis2915 with monomial
`9,1,251,1`. The Ceta top-cell lift is ss row4891 base1, hence E2 basis4890,
monomial `181,1,15`. Its E3 source has dimension1, and its complete induced
map sends the nonzero vector to sphere E3 `(0,1,0)`. The latter projects to
the unique nonzero sphere E4 coordinate. `Binding` checks the exact old
family d3 comparison and the full canonical/staircase agreement.

The lift is `x_{93,8} * (n[2])`. Both possible coefficient d3 target basis
vectors, `23,1,76,1` and `0,1,189,1`, act as zero on the entire two-dimensional
module factor. The coefficient acts as zero on the full module d3 target.
The module Leibniz law therefore derives the actual product d3 cycle.
One-dimensionality then gives the whole Ceta d3 zero theorem.

Complete Ceta source incoming d3 meanings and sphere d3 meanings construct
their E4 coordinate systems. A full actual map quotient transition sends
the same named Ceta E3 representative to the named sphere E4 class. The
complete Ceta d4 target `(17,142)` has E3 dimension0; quotient surjectivity
and the local zero law give the whole E4 target zero. Actual d4 naturality
then proves the named sphere value zero, and the complete sphere E4
dimension1 extends this to every actual source value.

Raw NULLs remain NULL. The proof CSV has an r5 zero record from `C2__S0`
and a later G999 record for the source; neither is trusted as a theorem.
The naive sphere factorization `e0 * Delta h6g` cannot supply an E3 product
argument because e0 supports a nonzero d2. The Ceta route avoids that gap.

The eight Lean modules are:

- `Maps`: 15 whole matrices, 35 columns and 31 explicit relation reductions.
- `Comparison`: 9 complete d2 quotients and 5 pairs of adjacent map squares.
- `Finite`: full zero product maps, exact names, nonboundary, NULL markers.
- `Semantics`: all-vector interpretation and original ring-relation lifts.
- `Actual`: actual cycles, constructed E4 coordinates, naturality and d4.
- `Assembly`: six complete E2 inputs construct the auxiliary E3 coordinates.
- `Binding`: previous-family d3 agreement and the whole zero d4 column.
- `Tactic`: named semantic result and whole-map theorem automation.

```lean
example (D : Row2916D4Search.Actual.Input S T A)
    (tr : D.Transition4) :
    Row2916D4Search.ResultValid D (D.map4 D.named4) := by
  row2916_d4_cert using D via tr
```

For an independently supplied actual input `x`, use
`row2916_d4_cert using D via tr named binding`. The binding is its exact
constructed E4 coordinate. The same tactic proves the whole d4 equation
for arbitrary `x`. Wrong goal and zero named source examples are rejected.
Lean gives source positions for type or interpretation mismatches.

Actual generator/relationship meanings, all-element action equations,
complete differential meanings (including the entire Ceta incoming d3),
local quotient zero/addition laws, and map naturality remain explicit.
`Semantics.all_vectors` discharges matrix interpretation from generator
images and original relation meanings. The source E4 coordinate and its
nonzero naming are derived, not supplied. This package adds a conditional
rule; it does not claim full topology realization or all Kervaire results.

```sh
python3 program/Row2916D4Search/generate_maps.py
python3 program/Row2916D4Search/generate_comparison.py
python3 program/Row2916D4Search/compile.py
python3 program/Row2916D4Search/audit.py
python3 program/Row2916D4Search/audit_models.py
python3 program/Row2916D4Search/reproduce.py
python3 program/Row2916D4Search/freeze.py
```

The raw audit checks every matrix column/reduction, 224 complete vectors,
708 cycle pairs and 104 adjacent-square vectors. The label audit checks
27,648 Leibniz models and 322,560 same-input E3/E4 models with arbitrary
actual carrier labels, including zero at a nonzero label. It rejects
645,120 counterfeit nonzero columns. Reproduction checks 27 generated
files byte for byte. Only successful compiler attempts count as proof
evidence; failed attempts remain in `evidence/`. Successful theorem reports
contain only standard Lean foundational axioms. No custom axiom, `sorry`,
native proof evaluator or C++ trust is used. Hashes establish provenance
and reproduction only.
