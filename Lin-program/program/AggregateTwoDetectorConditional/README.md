# Two-detector conditional extension of aggregate events

This directory snapshots the AggregateCsigmaConditional full dependency DAG
and adds precisely the signature S0 source (8,135), d3, staircase row2796,
base="2", diff=NULL, level=9000. The row2861 Csigma conditional replacement
and its semantic links are retained. Unknown entries outside the exact
signatures remain unknown.

`H3D0.matched` in `Matches.lean` applies
`Row2796Detector.Combined.differential_zero`. Its explicit premises are two
local Leibniz squares on every source quotient class and preservation of zero
by the two product differentials. The factors are h3 and generator8 (the
latter is named d0 in the product file names). Both source products vanish;
their target quotient products jointly detect zero. These are conditional
finite algebra statements, not proofs that actual Adams differentials obey
the chosen imported quotient models.

The module proves the source and target d2 matrices equal the detector
models, identifies the raw E2local2 representative with column0 of the
aggregate source basis, and equates the inserted outgoing column to the
coordinates of the actual differential under these premises. Only this
outgoing role completes a comparison. The incoming role in S0:11,137:d3
does not complete because row2925 remains unknown; no corresponding
incoming-column theorem is claimed.

There are 330 complete comparisons, one more than the Csigma snapshot:
S0:8,135:d3. All 101 nonsentinel inventory events are attempted. The count
remains 87 finite nonzero events and 14 unresolved events. In particular,
event3254 now reaches an unknown d4 at row2796; proving this d3 zero does
not settle its later differential or prove aggregate topological exclusion.
The event constants are finite candidates, and the local semantic interface
does not automatically establish every global Adams interpretation.

`generate.py` and `events.py` produce the complete comparisons and event
records. `review.py` regenerates them byte-identically, checks predecessor
closure, the precise conditional signature and its sole completed role, and
records every unresolved root in `review.json`. Lean modules are `Basic`,
`Data`, `Events`, and `Matches`; import
`AggregateTwoDetectorConditional.Matches` to obtain the complete local API.
There is no sorry, added axiom, native_decide, or trust in the exporter.
