# Row 2773: a conditional actual d3 cycle

The raw S0 staircase record is `[2773,13,135,"1",null,9000]`. Its local E2
support is `{1}`, with monomial `h1^2*x_(120,11)`. The NULL remains unknown.

The source factors as `h1 * (h1*x_(120,11))`, in degrees `(1,2)` and
`(12,133)`. Six complete d2 comparisons establish the finite E3 factors,
their differential targets, the source, and the result target. In particular,
the second factor's d3 target `(15,135)` has zero E2 dimension and zero E3
quotient. The entire other Leibniz term
`E3(4,4) * E3(12,133) -> E3(16,137)` vanishes. Its raw full tensor is zero,
proved by explicit polynomial reductions against SQL relations 1 and 9235.
No value or zero-prefix interpretation of `d3(h1)` is used.

`Actual.actual_row2773_d3_zero` proves the actual named d3 is zero under
`Actual.Meaning`: faithful source/result/zero-target coordinates, full source
and left-product interpretations, and identification of the named factors.
The actual certified Adams product supplies Leibniz. None of the desired d3
values are fields of `Meaning`. Identifying these finite coordinates and raw
relations with the actual topology remains a caller obligation.

Artifacts:

- `generate.py`, `provenance.json`: SQL rows, coverage metadata, six complete
  comparisons, four product columns and exact relation provenance.
- `Data.lean`, twelve imported JSON inputs: `lin_cert` checks of comparisons,
  polynomial reductions and two complete quotient-product certificates.
  `source.json` is the source comparison wire; provenance is in
  `provenance.json`.
- `Basic.lean`: actual finite quotient objects, named product equality,
  universal left-term vanishing and zero right target.
- `generate_semantics.py`, `Semantics.lean`: the entire product matrices
  interpreted in every characteristic-two commutative ring satisfying the
  imported polynomial relations.
- `Actual.lean`: typed actual-Adams transport through the explicit meanings.
- `audit.py`, `audit.json`: independent full SQL/matrix/reduction/product
  replay; `independent_review.py` and its reports provide a second-agent review.
- `compile.py`, logs and `*-compile.json`: serial direct compilation with
  source/input/output hashes. Historical `*.failed-*.log` files are retained
  separately and are not successful proof evidence.

Run from the repository root:

```sh
python3 program/Row2773Leibniz/generate.py
python3 program/Row2773Leibniz/generate_semantics.py
python3 program/Row2773Leibniz/audit.py
python3 program/Row2773Leibniz/compile.py
```

All four leaves compile successfully. Sixteen printed reports contain only
standard Lean axioms. The independent finite replay checks 25 vectors,
93 cycle pairs, four complete product columns, three polynomial reductions,
eight cycle products and eight boundary products. No `sorry`, custom axiom,
native proof evaluator or C++ trust is used. The separate
`Fact713Row2773Refinement` directory consumes the conditional source theorem.
