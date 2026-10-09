# Conditional C2 and h2 aggregate extension

This extends `AggregateCnuConditional` by exactly S0 `(4,132)`, d3,
staircase row2576, base `"0"`, diff `NULL`, level9000. Its complete outgoing
column uses the actual C2 map and h2 product joint detector from
`Row2576Detector.Matches`, with local naturality, Leibniz, and zero-preservation
conditions explicit. All earlier conditional interpretations are retained.

There are 336 complete comparisons, adding only `S0:4,132:d3`. All 101 events
are processed; there remain 90 finite nonzero-event certificates and 11
unresolved events. The incoming comparison `S0:7,134:d3` is incomplete because
its own row2708 source differential is unknown. Row2708 is never replaced by
zero, and no complete incoming role is asserted here.
Event3391 advances past row2576's d3 obstruction but still requires its d4,
whose two-dimensional target has not been excluded. No d4 zero follows here.

`C2H2.source_comparison` identifies the source comparison with the detector.
`C2H2.target_coordinates` proves the entire target basis change
`[[0,1],[1,0]]`: the detector orders `[local0+local1,local2]`, while the
aggregate orders `[local2,local0+local1]`. `C2H2.matched` connects the actual
outgoing column to the differential coordinates under the joint detector's
explicit premises. The raw source representative and its coordinate are
also checked.

`review.py` reruns generation byte-for-byte, checks all prior 335 blocks are
unchanged, predecessor closure, the one exact new role, target-basis swap,
unchanged event statuses, the event3391 failure moving from d3 to d4, and
preservation of row2708's failure. `Basic`,
`Data`, `Events`, `Matches` are the Lean module order.

The imported finite comparisons and conditional maps do not constitute an
Adams realization or the complete Kervaire exclusion. The raw NULL remains
in `source.json`; hashes only record provenance.
