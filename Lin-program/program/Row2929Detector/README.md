# Row2929 CW_2_eta detector

The imported staircase row `(2929,10,137,"3",NULL,9000)` remains unknown.
This directory proves a finite conditional d3-zero statement for its exact
source, E2 local index 3, basis 2932, monomial `1,2,375,1`.

The bottom-cell map `S0__CW_2_eta` annihilates this source already in E2.
It detects every class in the complete one-dimensional S0 d3 target at
`(13,139)`. The target representative is E2 local index 0, basis 3082;
its image has quotient coordinates `[0,1,0,0]` in CW_2_eta.

`Actual` checks six full adjacent matrices, 24 columns and 18 explicit
relation reductions. `Comparison` checks four complete d2 quotients and
both full chain-map neighborhoods using those actual matrices.
`Naturality.g_reflects_zero` applies to the entire target homology quotient.
`Naturality.named_d3_zero` concludes zero from this reflection, the checked
source annihilation, an explicit local d3 naturality square and explicit
preservation of zero. No raw NULL is converted into a zero assumption.

`Matches` identifies the named source with canonical coordinates `[0,1,0]`
and the first column of the imported staircase basis. It packages the
derived zero as `candidateColumn`. `MapSemantics.actual_all_vectors`
interprets every checked coefficient matrix as any supplied linear module
map whose generator images and relations agree with the certificate.

The imported E2 presentations, relations and d2 values still require their
mathematical interpretation as the intended Adams objects. Naturality and
preservation of zero remain explicit premises. These theorems do not claim
an unconditional topological differential or full Kervaire formalization.

```sh
python3 program/Row2929Detector/export.py
python3 program/Row2929Detector/generate_comparison.py
python3 program/Row2929Detector/review.py
python3 program/Row2929Detector/compile.py
python3 program/Row2929Detector/assert_current.py
```

`review.py` independently checks raw SQL identities, every column reduction,
complete d2 rows, database coverage, both chain-map squares, exact source
nonboundary and annihilation, and detection of the full target. The reviewer
also checks that embedded and on-disk wire data agree.
`regeneration-review.json` records byte-identical generator reruns.
`compile-audit.json` records actual sequential Lean exit codes and file
hashes; `CurrentImports` freshly imports all six wires and proves equality
to the compiled checked values. SHA-256 serves provenance only.

`Tests` rejects incorrect degree shifts and checks actual source annihilation
and target detection. The proof axioms are the standard `propext`,
`Classical.choice`, and `Quot.sound`; there is no `sorry`, `native_decide`,
custom axiom, or implicit trust in C++.
