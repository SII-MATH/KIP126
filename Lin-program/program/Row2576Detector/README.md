# Row2576 C2 and h2 joint detector

This directory constructs a finite conditional d3 detector for staircase row
`(2576,4,132,"0",NULL,9000)`. The imported NULL remains unchanged.

The complete S0 d3 target E3 quotient at `(7,134)` is two-dimensional. The
previous h2 product test leaves coordinates `[0,1]`, represented by E2local2,
database basis2708. The complete bottom-cell map to C2 detects this direction.
Neither selecting E2local1 nor proving only a named candidate nonzero suffices.

`Actual` checks all six adjacent bottom-cell coefficient matrices (15 columns)
using explicit module or lifted ring relations. `Comparison` checks both full
d2 chain-map neighborhoods, defining the matrices directly from those checked
wires. Thus `Quotient.c2Map` and `Quotient.c2Detect` act on entire finite homology
quotients. Source annihilation uses an explicit incoming boundary; its E2
image itself is nonzero.

`Products_h2` checks all six ordinary polynomial multiplication columns.
`ProductSemantics` identifies their outputs with the coefficient matrix and
proves the multiplication identity for every vector in every commutative
characteristic-two ring satisfying the supplied relations. `Quotient` checks
the actual tensor equality and full bilinear quotient-descent certificates.
The h2 source product has an empty E2 target.

`Quotient.jointly_reflect_zero` concerns every class in the entire two-dimensional
target. `Quotient.named_d3_zero` concludes zero using this theorem, both checked
source annihilations, a local C2 naturality square, a local h2 Leibniz square,
and explicit preservation of zero by the two comparison differentials.
`Matches.matched` packages the resulting zero column; the raw NULL is not used
as its proof.

The imported finite E2 presentations, relations and d2 columns still require
mathematical interpretation as the intended Adams objects. The local
naturality and Leibniz premises are explicit. This does not assert an
unconditional topological differential or aggregate exclusion.

## Reproduction

From the repository root:

```sh
python3 program/Row2576Detector/export.py
python3 program/Row2576Detector/generate_comparison.py
python3 program/Row2576Detector/export_h2.py
python3 program/Row2576Detector/prepare_products.py
python3 program/Row2576Detector/generate_product_semantics.py
python3 program/Row2576Detector/review.py
python3 program/Row2576Detector/compile.py
```

The independent reviewer checks raw SQL basis/column identity, relation
provenance, every polynomial reduction, all nine complete d2 comparisons,
both chain-map squares, exhaustive product cycle/boundary behavior, and all
four target coordinate vectors. It checks declared database coverage before
interpreting empty spaces. SHA-256 records consistency only.

The compilation script builds only these new modules sequentially and records
actual exit codes plus source/log/olean hashes. Consult `compile-audit.json`
for current successful compilation; all nine modules pass Lean 4.32.2.
`CurrentImports` freshly imports all 14 artifacts and proves they equal the
values used by the compiled modules. `assert_current.py` checks those input
hashes, source/olean/log hashes, and the independent SQL review.

The joint-reflection, named-d3, column-match and all-vector multiplication
theorems report only `propext`, `Classical.choice`, and `Quot.sound` (the
residual representative equality uses only `propext`). No `sorry`,
`native_decide`, custom axiom or trusted C++ output is used. Five generator
reruns preserve all compiled Lean and imported artifacts byte-for-byte;
`regeneration-review.json` records the checked values.
