# Conditional high-filtration d2 aggregate

This extends the stable `AggregateCW2EtaConditional` snapshot using only
the complete staircase-basis reconstructions in
`HighFiltrationD2Certificates`. There are 351 complete comparison blocks,
adding 13; every previous block and the original DAG remain identical.

The original high-filtration E2 table has 15 NULL d2 cells in the 25 audited
source degrees. No database row or raw DAG cell is changed. If a full d2
matrix has an unknown cell, the generator requires exact source/target
basis equality with one of the audited reconstructions, uses its entire
matrix, and checks all existing non-NULL cells agree. All nine known raw
columns agree. An uncovered unknown still fails.

Every reconstructed NULL column receives a `conditional_d2_staircase` use
with the original raw basis record, full staircase evidence and certificate
identity. There are 16 column roles in 14 full matrix roles; one reconstructed
column appears in two comparisons. `HighD2` in `Matches.lean` identifies
each complete aggregate incoming/outgoing matrix with the corresponding
certified output and proves its value on every vector from
`StaircaseMeaning`, additivity and preservation of zero.

`StaircaseMeaning` explicitly distinguishes a stored d2 value from an
incoming-boundary or later-page prefix meaning. These semantic equations
remain caller premises. Reconstruction proves that the full basis values
determine the map; it does not make a level number or NULL cell prove them.

All 101 known events are processed. Four previously unresolved events now
have complete finite certificates: 6651 on page4, 7007 and 7162 on page2,
and incoming event7247 on page3. There are 94 accepted events and seven
unresolved events. Every accepted event passes both complete earlier-page
cycle/nonboundary paths before final acceptance. There are 96 prior stages,
including six for the four new events. Event3391 remains blocked by row2861
d4; its separate detector has not been inserted into this snapshot.

`review.py` independently checks all 351 full comparison identities,
predecessor closure, existing same-page and next-page compatibility, the
25 full basis inverses/reconstructed matrices, all nine known raw columns,
all 16 conditional roles, unchanged old blocks, and all 94 full event paths.
It also checks deterministic generation and fingerprints all reconstruction
certificates and source data.

From the repository root, with no concurrent root Lean build:

```sh
python3 program/AggregateHighD2Conditional/events.py
python3 program/AggregateHighD2Conditional/review.py
python3 program/AggregateHighD2Conditional/compile.py
python3 program/AggregateHighD2Conditional/assert_current.py
```

The module order is Basic, Data, Events, Matches. The separate producer and
Pipeline directories package and verify actual C++ exports; their own audit
records determine their completion status. These finite results retain the
explicit staircase and earlier conditional interpretation premises. They do
not establish actual Adams realization or aggregate Kervaire elimination.
No new axiom, `sorry`, native evaluation shortcut or C++ trust is introduced.

All four aggregate modules pass the direct serial build and current-input
audit. All 20 printed axiom reports contain only standard Lean axioms.
The independent review confirms 194 existing horizontal pairs and 128
consecutive-page pairs, as well as all full event paths. The 15 distinct
NULL cells account for 16 matrix-role uses; these are counted separately.
