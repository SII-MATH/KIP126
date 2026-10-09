# Fact713 refinement using the row-2773 Leibniz theorem

This separate snapshot adds only
`Row2773Leibniz.Actual.actual_row2773_d3_zero` to the prior refinement. It
preserves all 1239 previous distinct comparisons exactly, including three
successor-closure blocks outside the E12 graph. No previous snapshot or raw
NULL value is changed.

The E12 dependency graph now has 1246 available comparisons and 174 blocked
comparisons. There are ten new distinct comparisons; including the three
existing external successor blocks, the union has 1249. The named finite
trajectory at `(9,132)` is now checked through d5 and has nonzero E6
coordinate: `[1,1] -> [1,0] -> [1] -> [1] -> [1]`.

`Data.finite_E6` certifies that finite trajectory. `Data.row2773_actual_column`
connects the newly filled finite zero column to the actual Leibniz theorem
with its explicit meanings and named-factor obligations. It does not claim
an actual E6 theorem: the rest of the finite trajectory still needs its
actual interpretations, including inherited stored unknown-prefix meanings.
The next root comparison d6 and all later roots through d11 remain blocked.

Files:

- `refine.py`, `refined.json`: reconstruction and explicit conditional uses.
- `generate.py`, `manifest.json`, `wires/*.json`, `Data.lean`: ten strict
  imported comparisons, named finite E6 trajectory and actual-column binding.
- `audit.py`, `audit.json`: independent algebraic replay of the entire union.
- `independent_snapshot_review.py` and its report: second-agent snapshot audit.
- `compile.py`, `Data.log`, `Data-compile.json`: direct compilation evidence;
  historical failed logs are separate.

```sh
python3 program/Fact713Row2773Refinement/refine.py
python3 program/Fact713Row2773Refinement/generate.py
python3 program/Fact713Row2773Refinement/audit.py
python3 program/Fact713Row2773Refinement/compile.py
```

The Lean leaf compiles successfully; three printed reports use only standard
Lean axioms. Independent replay verifies 2515 input vectors, 9409 cycle pairs,
947 matching adjacent differentials and 2247 predecessor-dimension checks.
Digests establish identity, not mathematical truth. The outstanding actual
Adams meanings and 174 blocked finite comparisons remain explicit.
