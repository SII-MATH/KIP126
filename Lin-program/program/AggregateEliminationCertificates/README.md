# Named obstructions for the complete stem 125 inventory

This library relates the 95 accepted finite events to 95 distinct rows of
the complete 105-row stem 125 inventory. It proves named differential
obstructions, not 95 independent dimension eliminations.

The correspondence is exact: 59 rows are sources of checked nonzero outgoing
differentials and 36 are targets in the image of checked differentials. Each
row binds the actual raw E2 vector, its S0 bidegree, the full indexed event,
and every earlier source and target stage. `Data.lean` also links all 105
vectors to their columns in the 45 previously checked staircase bases.

The ten rows outside this correspondence split into six unresolved events
`[2696,2697,2852,3151,3152,3992]` and four sentinel candidates
`[2695,3080,3993,3994]`. These four candidates are not proved survivors.
The counts concern distinct inventory records and do not count all linear
combinations of their E2 vectors.

## Finite and mathematical meanings

`Obstruction` in `Basic.lean` (namespace `AggregateEliminationCertificates`) binds
a row to the shared family and proves either nonmembership in the outgoing
kernel or membership in the differential image. Its `lin_cert` instance
checks the caller's row and complete event. `semantic_obstruction` transports
the same checked indexed paths to a supplied `IndexedEventData`, yielding
the actual named noncycle or actual incoming image in that interpretation.
The interpreter's coordinate, complete incoming-source, and differential
equations remain explicit mathematical inputs.

For incoming events, `incoming_zero_next` assumes an all-boundaries-zero
law for the actual next-page map. `finite_target_zero_in_quotient` instead
works with any supplied target outgoing matrix satisfying the complex
identity and proves the named image is zero in its homology quotient.
Neither theorem manufactures an absent target page.

Of the 36 incoming rows, 23 have a supplied target comparison at the event
page. `Targets.lean` proves their exact zero projection. The other 13 are
`[3010,3011,3254,3629,3744,3745,4764,4929,5862,5977,6296,7247,3391]`
in accepted-event order. `mapping.json` records each required missing key,
and Lean proves the 23/13 partition. For these 13, the theorem remains
conditional on the target complex or next-page quotient law.

`Counterexample.lean` checks the map `[1,1] : F2^2 -> F2`. Both coordinate
generators have nonzero differential, while their sum is a nonzero cycle
and nonboundary. This kernel-checked counterexample prevents using named
row counts to infer a survivor dimension. The general
`every_cycle_has_homology_coordinates` and
`homology_coordinates_distinguish_all` theorems cover every combination
when a full homology comparison is supplied. A global dimension bound still
needs coherent cross-page elimination or induction and the actual Adams
realization.

## Reproduction

From `program/`:

```sh
python3 AggregateEliminationCertificates/review.py
python3 AggregateEliminationCertificates/compile.py
python3 AggregateEliminationCertificates/assert_current.py
```

`review.py` independently queries all 105 SQL rows and basis expansions,
checks the 95 event bindings, records all missing target comparisons,
verifies all 23 supplied target projections, and checks the cancellation
counterexample. `compile-audit.json` records actual per-module exits and
input/log/olean hashes. Direct compilation must not conflict with a Lake
rebuild of dependencies. All four modules have actual exit code 0, and the
current audit passes with seven standard-only axiom reports. All outputs
are isolated from previous snapshots.

No `sorry`, custom axiom, `native_decide`, or mathematical trust in C++, JSON
or SHA-256 is used. The library does not prove that a ten-dimensional space
survives, that the six residual events are solved, or that the original
topological Kervaire result follows without additional realization and
induction theorems.
