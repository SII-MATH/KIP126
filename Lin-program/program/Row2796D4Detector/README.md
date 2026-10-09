# Row2796 d4 shifted module detector

Stable import: `Row2796D4Detector.Source`. All six modules (`Shifted`,
`Actual`, `Comparison`, `Links`, `Target`, `Source`) were compiled directly
with Lean 4.32.2, one process at a time. `Target.reflects_zero` and
`Source.named_d4_zero` report only propext, Classical.choice, and Quot.sound.

The coefficient is maps_v2 ordinal25, S0__CW_nu_eta_by_2, factor [6,1,0].
It is CW_nu_eta E2 basis11, module generator2 (monomial "2"), degree (1,7),
not the bottom cell generator0. Twelve actual matrices (56 columns) are
checked as equality modulo imported module relations. Six uses of lifted
S0 ring relations are explicit; positive provenance IDs are CW_nu_eta
module relation rows and negative IDs are S0 ring relation rows, acting on
the single occupied module generator in the stored expression.

`Shifted` is a local strict importer/checker for this exact (1,7) shift;
its soundness reuses the module expression matrix checker. Arithmetic
labels alone do not establish homogeneous grading or a topological map.
The algebra and grading originate in the imported database. `review.py`
independently checks ordered source/target bases, the coefficient expression,
all module and lifted ring relations, degree signatures, and deterministic
comparison generation against the recorded complete comparison inputs.

Four d2 comparison pairs and their adjacent map squares are checked. Their
coordinate maps are the actual induced quotient maps, with explicit all-class
coordinate links in `Links`. The target d3 compatibility square then gives
an actual finite E4 quotient map: S0(12,138) E4 dimension1 to
CW_nu_eta(13,145) E4 dimension3. `Target.reflects_zero` proves this map detects
zero; the nonzero generator has coordinates [0,1,0] in the target.

The source map S0(8,135) to CW_nu_eta(9,142) is identically zero on the
complete E3 quotient. Consequently `Source.arbitrary_compatible` constructs
its E4 descent for every outgoing 3x2 and incoming 2x4 matrix at that target,
without a full comparison there and without choosing unknown row5232.
`Source.maps_zero` proves every source class maps to zero. The named source
is E4 coordinate0, linked to the E2local2 representative in `Links`.

`Source.named_d4_zero` concludes that the named differential is zero from
local naturality with this actual descended map and preservation of zero
by the module differential. It does not assume source annihilation or the
desired d4 zero. These two d4 premises remain explicit. Interpreting the
source E4 finite comparison also retains the earlier conditional row2796 d3
and row2861 Csigma d3 identifications from AggregateTwoDetectorConditional.
The arbitrary source target matrices need not be certified as a complex for
the quotient-map construction, but an actual Adams interpretation must
supply the corresponding complex and differential semantics. No unconditional
topological d4 or aggregate Kervaire exclusion is claimed.
