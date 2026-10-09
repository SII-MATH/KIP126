# Three-product conditional aggregate

This extends `AggregateD4Conditional` by the source signature S0 `(15,142)`,
d3, staircase row3325, base `"2"`, diff `NULL`, level9000. The unknown field
remains present in `source.json`; its conditional replacement uses the
actual quotient products in `Row3325Detector.Matches`. Three local Leibniz
squares and preservation of zero remain explicit semantic premises, as do
the interpretation conditions on the earlier imported differentials.

All 101 nonsentinel inventory events are examined. There are 333 complete
predecessor comparisons, 90 finite nonzero-event certificates, and 11
unresolved events. The two added comparisons are `S0:18,144:d3` and
`S0:18,144:d4`. They complete events3744 and3745, whose source is `(18,144)`
and whose recorded d4 target is `(22,147)`.

`Matches.lean`, namespace `ThreeProducts`, identifies the source and target
d2 matrices with the detector. It proves that aggregate source coordinate0
represents E2 local2 and explicitly converts the detector's target basis to
the aggregate's staircase basis. `ThreeProducts.matched` then identifies
incoming column0 of `S0:18,144:d3` with the actual differential coordinates,
using `Row3325Detector.Matches.matched` under its explicit conditions. The
complete source outgoing comparison `S0:15,142:d3` is still unavailable;
this directory makes no outgoing-comparison claim for that source.

`Data.lean` uses `lin_cert using ()` for all full homology comparisons and
checks their representative and column identities. `Events.lean` proves
the recorded matrix differential, nonzero target, and target membership in
the image for each of the 90 completed events. These are statements about
the imported finite matrices. They do not by themselves identify an actual
Adams spectral sequence or prove the full aggregate Kervaire exclusion.

Run `python3 program/AggregateThreeProductConditional/review.py` from the
repository root to regenerate and check byte-identical outputs, predecessor
closure, unchanged earlier comparisons, exact conditional signature and
incoming role, basis change, all event counts, and remaining failure reasons.
The four Lean files are compiled individually in order `Basic`, `Data`,
`Events`, `Matches`; their compiler logs are stored in this directory.

The independent `Pipeline` subdirectory contains the actual producer import
and trace work for the two newly completed events, with its own validation.
