# Row2861 d4 DC2h6 detector

This directory derives a finite conditional zero d4 on the exact stored
row `(2861,9,136,"1",NULL,9000)`. The raw NULL remains unchanged.
The named E2 source is local index 1, basis 2861; its E3 and E4 staircase
coordinates are `[1,0]`. The entire E4 target `(13,139)` is one-dimensional,
represented by E2 local index 0, basis 3082.

`Actual` checks 16 complete bottom-cell matrices, 63 columns and three
explicit relation reductions for `S0__DC2h6`. `Comparison` checks 12 complete
d2 quotients and six actual chain maps. Its six all-class coordinate
theorems identify the computed E3 matrices with induced quotient maps.
`Higher` checks four full imported d3 comparisons and both adjacent squares
of each resulting E4 map. Thus the maps used by `Naturality` pass through
both complete quotients; they are not inferred from E3 detection alone.

The source image is zero and the entire E4 target maps to coordinates
`[1,0]`. `Naturality.g_reflects_zero` proves reflection for every target
class. `Naturality.named_d4_zero` uses it with the actual annihilation,
explicit d4 naturality and preservation of zero. `Matches` proves the raw
source projection, the two-stage raw target projection and the resulting
zero-column identity.

The S0 d3 comparisons inherit the Csigma and CW_2_eta conditional results;
DC2h6 d3 comparisons use imported higher-prefix meanings, including rows
whose stored later differential is NULL. `ImportedMeaning` represents all
eight d3 matrices as caller data. `transported_d4_zero` requires equality
with the checked d3 data before transporting the result to those quotients.
This makes the interpretation premise explicit. It is not a proof that
the raw prefix encodes a topological zero without further justification.

`MapSemantics.actual_all_vectors` interprets every checked coefficient
matrix as a supplied linear module map with the corresponding generator
images and vanishing imported relations. Adams realization of the finite
E2/d2 model, the conditional d3 identities, prefix interpretations and
local d4 naturality remain external mathematical obligations.

```sh
python3 program/Row2861D4Detector/export.py
python3 program/Row2861D4Detector/generate_comparison.py
python3 program/Row2861D4Detector/review.py
python3 program/Row2861D4Detector/compile.py
python3 program/Row2861D4Detector/assert_current.py
```

The independent reviewer checks raw SQL and registered-map identities,
every actual column reduction, complete d2 rows and declared coverage,
all-class E3 matrices, both E4 chain-map squares, exact source nonboundary,
and whole-target detection. All imported d3 conditional and prefix uses
are listed in `review.json`. Embedded wires must equal on-disk inputs.
The generator rerun is byte-identical. `CurrentImports` freshly imports
all 16 wires and proves equality to the checked constants.

The nine-module direct compilation records actual exit codes and current
source/import/log/output hashes. `Tests` rejects degree-shift mutations
and verifies source annihilation and full target detection. The proofs use
only standard Lean axioms `propext`, `Classical.choice`, and `Quot.sound`;
there is no `sorry`, `native_decide`, custom axiom or trust in C++ output.
