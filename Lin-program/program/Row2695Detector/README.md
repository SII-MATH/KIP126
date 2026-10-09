# Row 2695: the DC2h6 detector

The finite detector uses the configured degree-zero map `S0__DC2h6`,
`maps_v2` ordinal 66, with factor `[0,0,0]`. The factor is DC2h6 bottom-cell
module generator 0, database basis id 0, in degree `(0,0)`. Both filtration
and suspension shifts are zero.

The exact source record is the **staircase** row
`(2695,9,134,"2",NULL,9000)`. Its coordinate is E2 local index 2, namely
**E2 basis id 2697** (`69,1,82,1`). E2 basis id 2695 at the same degree is
local index 0 and has nonzero d2; it is not the source staircase class.
The source E3 space has dimension 3, and the named class has coordinates
`[0,1,0]` and E2 representative `[0,0,1,0,0]`.

## Checked finite data

Six complete map matrices cover source degrees `(7,133)`, `(9,134)`,
`(11,135)`, `(10,135)`, `(12,136)` and `(14,137)`, with 25 total columns.
Their reduction certificates use three explicit DC2h6 module relations;
this detector uses no lifted ring relation. Every column maps its complete
E2 basis expression into target coordinates, with a checked reduction
trace. The source and target degree bounds are checked against the pinned
database metadata.

Four complete d2 homology comparisons cover S0 and DC2h6 at `(9,134)` and
`(12,136)`. Their E3 dimensions are respectively 3, 1, 1 and 2. Both maps of
d2 complexes commute with incoming and outgoing differentials. The named
source vector maps to literal zero. The entire one-dimensional possible
S0 d3 target maps to `[0,1]` in the two-dimensional DC2h6 target, so this
target map reflects zero on the whole target space.

`Naturality.named_d3_zero` therefore proves `ds named = zs` for arbitrary
maps on these finite homology objects, assuming the displayed local d3
naturality equation and preservation of zero by the target d3. It does not
infer either assumption from a NULL field. `Matches.matched` connects that
semantic conclusion with the zero candidate column in exact E3 coordinates.

`MapSemantics.actual_all_vectors` interprets each certified matrix as the
supplied module map on all vectors, assuming the displayed generator-image
equations and vanishing of the imported relations. These are separate from
the local d3 naturality and Adams realization assumptions. All raw d3 data
remain NULL; this is a conditional finite theorem, not a computation from
the original topology of the spectra.

## Audit and reproduction

From `program/`:

```sh
python3 Row2695Detector/review.py
python3 Row2695Detector/compile.py
python3 Row2695Detector/assert_current.py
```

The independent review reads all source SQL rows, replays each module
reduction with separate F2 code, checks all matrix dimensions and degrees,
and verifies both chain-map squares and every complete homology identity.
It checks canonical disk wire bytes, the exact generated Lean import and
matrix definitions, and agreement with the selected search candidate and
all four full comparison records. It explicitly rejects confusing the
staircase id 2695 with the noncycle E2 basis id 2695. Exact source and input
hashes are recorded in `review.json`; hashes establish provenance only.

`Row2695Search/review.json` records the separately replayed screen of all
70 configured S0 maps: 4 candidates, 15 nonzero source quotients, 30 zero
target quotients, and 21 unavailable cases. Selecting DC2h6 does not assert
that the other candidates are false or that unavailable cases vanish.

`compile.py` records actual serial Lean exits and hashes in
`compile-audit.json`, including the current raw provenance and review hashes.
All seven direct module exits are zero. `assert_current.py` validates those
exits and current source, log, olean, wire and SQL provenance fingerprints;
it checks that reported axioms are standard. A future Lake invocation may
change olean bytes, so preserve this direct invocation audit and capture a
separate Lake manifest when needed. `Tests.lean` checks wrong shifts and degrees, source
annihilation, and nonzero detection of the target quotient.

## Files

| File | Purpose |
| --- | --- |
| `export.py`, `source.json`, `wire/*.json` | Six complete map witnesses and exact relation provenance |
| `generate_comparison.py`, `comparison-source.json` | Four full d2 comparison witnesses |
| `Actual.lean`, `Comparison.lean` | Kernel-checked map and comparison validity |
| `Naturality.lean`, `Matches.lean` | Conditional d3 zero proof and exact coordinate match |
| `MapSemantics.lean` | Interpretation of actual module maps and relation lifts |
| `Tests.lean` | Negative and semantic examples |
| `CurrentImports.lean` | Fresh integration imports and axiom reporting |
| `review.py`, `review.json` | Independent read-only source and matrix replay |
| `compile.py`, `compile-audit.json`, `assert_current.py`, `*.log` | Actual compiler runs, evidence and current-artifact validation |
