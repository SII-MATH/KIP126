# Row 2916: a conditional actual d3 vanishing theorem

The C2h5 detector sends the named sphere E3 class in degree `(13,137)` to
zero and detects every element in the possible target `(16,139)`. Actual
naturality therefore gives `d3 x = 0` for that named class. This package
proves the conditional actual theorem, not an unconditional sphere Adams
calculation or an E9 survival assertion.

The original all-map search has 70 entries: two candidates, 14 nonzero
source images, 32 zero target images, and 22 unknown results. The implemented
candidate is `S0__C2h5`, factor the unit module generator at degree `(0,0)`.
Unknown search results remain unknown.

## Files and interfaces

- `Maps.lean` imports six complete matrices, 23 columns and eight explicit
  module-relation reductions. `source.json` retains exact SQL basis rows,
  relation provenance, coverage bounds and database hashes.
- `Comparison.lean` checks four complete d2 quotients and both adjacent
  chain-map squares for each of the two induced maps.
- `Naturality.lean` proves the finite quotient detector theorem. Its source
  map has dimensions 3 to 4 and annihilates `(0,1,0)`. Its target map has
  dimensions 1 to 3 and sends 1 to `(0,0,1)`.
- `MapSemantics.lean` connects the entire checked coefficient matrix to a
  supplied actual module map under generator compatibility and vanishing
  relations. No C++ or SQL output supplies those mathematical assumptions.
- `Actual.lean` uses `Fact713D4SourceSearch.ActualDescent.Input` for the
  entire source and target d2 complexes. Complete actual meanings, full
  current-map equations and actual quotient transition laws construct the
  E3 map coordinates. `actual_row2916_d3_zero` then uses actual d3
  naturality and the exact named input binding. The desired d3 value and
  next-page coordinate formulas are not premises.
- `CoordinateBridge.lean` proves both full canonical-to-staircase changes
  are identity and binds the actual zero to column 1 of the conditional
  d3 comparison. The remaining d3 columns retain their imported meanings.
- `Tactic.lean` supplies `Certificate`, `ResultValid`, `result_sound`, the
  tactic and negative checks for a zero input and a wrong goal.

Database row names need care: **ss row 2916 has base `1`, hence names E2
basis row 2915, whose monomial is `9,1,251,1`**. It does not name E2 basis
row 2916. `raw_unknown` preserves the original NULL differential;
`named_basis_row` checks this separate basis identity.

## Use

```lean
example (C : Fact713Row2916Search.Certificate sphere detector)
    (input : (sphere.element 3 Fact713Row2916Search.Actual.sourceDegree).carrier)
    (binding : C.meaning.lower.nextSource.equivalence input =
      Fact713Row2916Search.Actual.named3) :
    Fact713Row2916Search.ResultValid sphere detector C input := by
  row2916_d3_cert using C named binding
```

The result includes the exact input binding and its actual d3 vanishing.
The tactic checks the goal head and reports an explicit wrong-goal error;
Lean reports type or binding errors with source locations. A supplied
certificate contains the actual mathematical meanings and naturality law.
It is not reconstructed from unchecked JSON strings.

## Validation and reproducibility

Run from the repository root:

```sh
python3 program/Fact713Row2916Search/export_maps.py
python3 program/Fact713Row2916Search/generate_comparison.py
python3 program/Fact713Row2916Search/audit_matrices.py
python3 program/Fact713Row2916Search/audit.py
python3 program/Fact713Row2916Search/compile.py
```

The two generators reproduce identical matrix, comparison and Lean source
bytes. The independent raw audit rechecks all 23 columns and eight relation
reductions. The quotient audit checks 640 quotient pairs, 88 square vectors,
24 induced-map cycle equations, 40,320 named source relabelings and 80,640
target relabelings, rejecting every nonzero differential value. The exact
results and input hashes are in `matrix-audit.json`, `audit.json` and
`reproducibility.json`.

All seven leaves have successful direct `lean -j1` compilation records.
Their 33 reported theorem dependencies contain only the standard foundational
axioms `propext`, `Classical.choice` and `Quot.sound`, or no axioms. No custom
axiom, `sorry`, or native proof evaluator is used. `evidence/` retains all
attempts, including an earlier failed coordinate rewrite; only the final
successful records are current proof evidence. SHA-256 records identity
and reproducibility, never mathematical correctness.

The actual d2 homology meanings, actual module-map meanings, actual quotient
transition laws, d3 naturality, and named sphere interpretation remain
explicit inputs. The finite conditional d3 comparison does not itself
establish these inputs or later-page survival. Python finite model audits
supplement the Lean proofs and are not proofs of actual Adams realization.
