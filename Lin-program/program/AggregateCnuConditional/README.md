# Conditional Cnu extension of the aggregate DAG

This extends `AggregateThreeProductConditional` using exactly the row2925
signature S0 `(11,137)`, d3, base `"1,2"`, diff `NULL`, level9000. Its zero
column is justified under `Row2925Detector.Matches.matched`, using the actual
shifted Cnu map and explicit local d3 naturality and zero-preservation premises.
All previously recorded interpretation conditions are retained.

There are 335 complete comparisons, adding `S0:11,137:d3` and
`S0:14,139:d3`. The new signature occurs in the outgoing and incoming roles,
respectively, at column0. All 101 inventory events are processed; the result
remains 90 finite nonzero events and 11 unresolved events. Other unknowns
still obstruct the affected roots, so no additional event is claimed complete.
The affected event3151 and3152 paths still encounter row2708 at S0 `(7,134)`,
d3 with a one-dimensional target; `remaining-impact.json` records both paths.

`CnuEta.source_coordinates` proves the complete source-coordinate change
from the detector's basis `[local1,local2]` to the staircase basis
`[local1+local2,local2]`. The matrix is `[[1,0],[1,1]]`; the named raw vector
has detector coordinates `[1,1]` and aggregate coordinates `[1,0]`.
The target comparison and coordinates agree exactly. `CnuEta.matched`
links both actual columns to the semantic differential under the explicit
premises. The full outgoing and incoming matrices are also identified.

`review.py` regenerates all outputs and checks byte identity, unchanged old
comparisons, predecessor closure, precise source signature, both roles,
source basis change, target equality, event counts, and unresolved reasons.
`Basic`, `Data`, `Events`, `Matches` are the Lean import order.

The raw unknown stays present in `source.json`. These finite imported-data
and conditional quotient-map theorems do not establish Adams realization,
the topological Cnu map, or the complete Kervaire exclusion.
