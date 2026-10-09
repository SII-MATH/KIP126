# Two conditional DC2h6 aggregate rules

This isolated snapshot extends the stable 351-block, 94-event
`AggregateHighD2Conditional` data. All old blocks and raw DAG cells remain
identical. There are 355 complete comparisons, adding
`S0:12,136:d3`, `S0:13,139:d4`, `S0:3,129:d5`, and `S0:8,133:d4`.

`conditional_dc2h6_d4` derives row2861's first incoming column at
S0(13,139), d4. `DC2D4.matched` uses the full explicit `D3Data` interpretation
from `Row2861D4Detector.ImportedMeaning` and its transported naturality
theorem. The source and target comparisons are identified exactly. The
caller must provide the inherited S0 d3 and DC2h6 prefix meanings, d4
naturality, and preservation of zero.

`conditional_dc2h6_d3` derives row2695's first incoming column at
S0(12,136), d3. The named source is E2 local2, basis2697, not E2 basis2695.
`DC2D3.source_coordinates` proves the full cyclic source basis change from
detector order [local1,local2,local3] to aggregate order [local2,local3,local1].
The target comparison agrees exactly. `DC2D3.matched` requires the actual
detector's local d3 naturality and preservation of zero.

Neither rule silently changes a raw NULL. The d3 and d4 conditional kinds
are distinct, and all previous high-d2 staircase and map interpretations
remain explicit. The intermediate d4-only generation result is recorded
in `stage1-d4-effect.json`: 352 comparisons and still 94 events.

All 101 known events are processed; the total remains 94 accepted finite
events and seven unresolved. Event3391 moves past row2861 d4 but encounters
row3019 d3 at S0(11,138), target dimension2. Events2696 and2697 move past
row2695 d3 but encounter row2574 d3 at S0(6,132), target dimension3. Those
unknowns are retained, and no new event certificate is generated.

`review.py` independently checks all 355 complete comparison identities,
unchanged old blocks, exact conditional roles and raw identities, existing
horizontal/vertical compatibility, and every accepted endpoint path and
nonzero final differential. All 94 events and 96 prior stages pass; the
review also retains the previous 25 basis reconstructions and known-raw
column checks. Generation is deterministic.

From the repository root, without a concurrent root Lean build:

```sh
python3 program/AggregateDC2h6Conditional/events.py
python3 program/AggregateDC2h6Conditional/review.py
python3 program/AggregateDC2h6Conditional/compile.py
python3 program/AggregateDC2h6Conditional/assert_current.py
```

Basic, Data, Events and Matches are compiled serially with actual exit
codes and input/log/olean fingerprints. These are finite and conditional
statements, not an Adams realization or a complete Kervaire exclusion.
No new axiom, `sorry`, native evaluation shortcut, or C++ trust is used.

The current serial run compiles all four modules with actual exit code 0.
`assert_current.py` checks 23 printed axiom sets, each restricted to Lean's
standard `propext`, `Classical.choice`, and `Quot.sound`. An earlier failed
Events import during a concurrent Lake replacement is retained separately
in `Events.lake-race-failure.log` and `compile-lake-race-failure.json`; it is
not counted as a successful run.
