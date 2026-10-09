# Row 2796: conditional d5 detector

This detector proves that the named source has zero d5 for every supplied
source completion satisfying the stated compatibility and naturality
premises. It uses the configured `S0__DC2h6` map (`maps_v2` ordinal 66), with
filtration and suspension shifts both zero and factor the bottom cell in
degree (0,0). It does not assert the existence of a completion of the unknown
DC2h6 source pages.

## Checked finite data

The raw S0 staircase row is `[2796,8,135,"2",null,9000]`. It identifies E2 local
index 2, basis ID 2796, in degree (8,135). The full d5 target is degree
(13,139); its chosen E2 representative has local index 0, basis ID 3082.

The certificates contain 24 actual shifted module-map matrices, with 81
columns and four module-relation reductions. No ring-relation lift is needed.
They support 30 complete finite homology comparisons: 20 d2 comparisons,
six target-side d3 comparisons, two target-side d4 comparisons, and the two
fixed S0 source comparisons for d3 and d4. The induced maps include ten E3
maps, three E4 maps, and the target E5 matrix `[1]`. All 28 adjacent chain-map
square identities are checked.

The actual source E3 matrix has shape 3 by 2, with row-major entries
`[0,1,0,0,0,0]`. It kills the named source coordinate `[1,0]`, but sends
`[0,1]` to `[1,0,0]`. The full source map is nonzero. The raw source projects
to `[1,0]` at each of the three fixed source transitions; the raw target
projects to `[1]` on E5. The target map detects the entire one-dimensional
target, rather than only one selected test vector.

## Mathematical interfaces

- `Actual.lean` imports each canonical wire with `shifted_module_map%` and
  proves its `Valid` proposition using `lin_cert using ()`.
- `Comparison.lean` and `Higher.lean` prove the complete finite homology
  comparisons and compatibility identities.
- `MapSemantics.lean` proves that every checked matrix acts as a supplied
  module map on all vectors when generator images and relation meanings
  agree with that map.
- `Target.g_reflects_zero` proves that the induced target map detects zero.
- `Source.Completion3` supplies arbitrary unknown outgoing and incoming
  matrices, a full `HomologyComparison`, and compatibility of the actual
  source E3 matrix with adjacent supplied maps. `map4_all_coordinates` links
  its coordinate matrix to the induced map on all homology classes.
- `Source.Completion4` supplies the next arbitrary outgoing and incoming
  matrices and compatibility of the induced E4 map. This defines a quotient
  relation; it does not assert an Adams E5 realization or even a separate
  complex premise for the supplied matrices.
- `Source.named_d5_zero` concludes zero for the named d5 from those two
  completions, local d5 naturality, and preservation of zero by the supplied
  target differential.
- `Matches.matched` identifies the result with the candidate zero column;
  the raw source and target projection theorems bind the chosen coordinates
  to the original staircase records.

Inherited conditional interpretations of the S0 source and target d3/d4
columns remain premises for an Adams interpretation. Unknown DC2h6 source
columns are not assigned zero. The completion theorem is more general than
an Adams theorem: an application to an actual spectral sequence must also
provide its realization and the stated compatible maps and naturality.

## Reproduction and checks

Run from `program/` after the common certificate libraries are built:

```sh
python3 Row2796D5Detector/export.py
python3 Row2796D5Detector/generate_comparison.py
python3 Row2796D5Detector/review.py
python3 Row2796D5Detector/compile.py
python3 Row2796D5Detector/assert_current.py
```

Do not run this direct compile concurrently with a project Lake build.
The producer rerun preserved all nine Lean sources and 24 wire files byte
for byte, as recorded in `regeneration-review.json`. All nine modules have
recorded actual compiler exit code 0 in `compile-audit.json`. The independent
SQL and matrix review passes and records its current source fingerprints in
`review.json`. `CurrentImports.lean` checks that imported literals correspond
to the currently stored wire files. `assert_current.py` verifies build and
input fingerprints; its success depends on the current artifacts.

The independent review checks raw SQL records, degree bounds, canonical
module bases, reduction traces, all selected higher-page columns, the full
comparison matrices, and the raw coordinate trajectories. It preserves the
conditional meanings of inherited staircase overrides. Lean theorem proofs
use only ordinary kernel-checked reasoning and standard Lean axioms; they
do not use `sorry`, `native_decide`, custom axioms, or mathematical trust in
the producer, Python review, C++ exporter, or SHA-256 digests.
