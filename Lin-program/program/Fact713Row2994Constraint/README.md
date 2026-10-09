# Two-candidate constraint for row 2994

This directory proves a constraint, not d3 vanishing. The raw unresolved
staircase row is `[2994,17,138,"0,1,2",null,9000]`. The configured map
`S0__CW_nu_eta_2` kills its source E3 class and has target kernel precisely
`{(0,0),(0,1)}` in detector source coordinates. In staircase coordinates the
remaining nonzero direction is `(1,0)`.

Six full module matrices contain 18 columns and seven explicit relation
reductions. Four complete d2 comparisons and both squares of two compatible
maps ensure that the induced maps are defined on entire cycle/boundary
quotients. The source image is the nonzero E2 boundary `(1,1,1,0)`, with
incoming preimage `(1,0,0,0)`. The whole target map is `(a,b) -> (0,a)`.

`Naturality.matrix_kernel` checks every target vector; `matrix_affine` checks
every pair and describes every fiber as `v` or `v+(0,1)`. `g_kernel` and
`g_affine` transport these properties to full homology quotients.
`Actual.actual_row2994_d3_candidates` proves an actual differential is zero
or has the specified quotient class, assuming complete actual map meanings,
faithful coordinates, named source and actual naturality. Naming an actual
representative gives `d3 x = 0` or `d3 x = y`. No desired differential value
is supplied as a premise.

`CoordinateBridge.lean` binds both complete quotient coordinate systems to
the existing Batch07 staircase comparisons. The source change is identity;
the target change swaps the two coordinates. The final theorem
`actual_staircase_candidates` retains exactly two candidates: zero and `(1,0)`.
The raw NULL remains unchanged. The general polynomial map interpretation in
`MapSemantics.lean` applies to all vectors over characteristic-two coefficient
rings satisfying the imported relations.

## Verification and artifacts

- `Maps.lean`, `wire/*.json`, `source.json`, `export_maps.py`: six full maps,
  canonical certificates and exact SQL relation provenance.
- `Comparison.lean`, `comparison-source.json`, `generate_comparison.py`:
  four complete quotients and two compatible maps.
- `Naturality.lean`, `MapSemantics.lean`, `Actual.lean`, `CoordinateBridge.lean`:
  all-vector kernel/fiber results and conditional actual meanings.
- `audit_detector.py`, `detector-audit.json`: independent reconstruction of
  the raw matrices, quotient laws, all 16 affine pairs and coordinate changes.
- `compile.py`, logs, `*-compile.json`: serial direct Lean verification.
  Earlier failed logs remain separate from successful records.
- `branch_screen.py`, `branches/`, `branches.log`: separate numerical case
  analyses preserving the frozen 1272-block input exactly.

All six leaves compile with exit code 0. No `sorry`, custom axiom, native proof
evaluator or implicit C++ trust is used; SHA-256 only binds source bytes.
Actual map interpretations and actual naturality remain mathematical inputs.
This constraint alone does not prove d3 zero or the Kervaire conclusion.

Run from the repository root after dependencies are built:

```sh
python3 program/Fact713Row2994Constraint/export_maps.py
python3 program/Fact713Row2994Constraint/generate_comparison.py
python3 program/Fact713Row2994Constraint/audit_detector.py
python3 program/Fact713Row2994Constraint/compile.py
python3 program/Fact713Row2994Constraint/branch_screen.py
```
