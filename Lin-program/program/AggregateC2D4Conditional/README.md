# Conditional C2 d4 aggregate extension

This extends the entire `AggregateC2H2Conditional` DAG with the reviewed
Row2576 d4 argument. It adds exactly one complete comparison,
`S0:8,135:d4`, for a total of 337. All 336 previous blocks remain identical.
The new row2576 role is its incoming column from S0(4,132); no complete
outgoing comparison at S0(4,132), d4 is asserted.

The conditional kind `conditional_c2_d4_prefix` is separate from the earlier
`conditional_c2_h2` d3 rule. Raw row2576 remains `[2576,"0",null,9000]`.
`C2D4.matched` links the new actual incoming column to the mathematical
quotient differential, using exact source/target d3 comparisons and the
named source coordinate. Its premises explicitly include the caller's C2
incoming matrix and `IncomingMeaning`, local d3 naturality, local d4
naturality, and preservation of zero. C2 row2633's stored d4 prefix is an
external earlier-page interpretation; it is not proved from topology here.

All 101 known events are processed. There remain 90 finite nonzero events
and 11 unresolved events. Event3391 moves beyond row2576's d4 obstruction,
but now fails at `S0:10,137:d3`, unknown row2929 with target dimension1.
No 91st certificate is generated. Row2708 also remains unknown.

`review.py` checks deterministic generation, all prior blocks unchanged,
all 337 full comparison identities, predecessor closure, exact conditional
roles and preserved unknowns. It independently checks every source/target
earlier-page cycle and nonzero quotient projection for all 90 accepted
events: 90 prior stages total. Thus the event count is not inferred merely
from successful construction of a final differential matrix.

From the repository root, with no concurrent root Lean build:

```sh
python3 program/AggregateC2D4Conditional/events.py
python3 program/AggregateC2D4Conditional/review.py
python3 program/AggregateC2D4Conditional/compile.py
python3 program/AggregateC2D4Conditional/assert_current.py
```

The module order is Basic, Data, Events, Matches. The compile audit records
actual exits and source, data, log, and olean fingerprints. No new axiom,
`sorry`, native evaluation shortcut, or trust in C++ is introduced. The
finite and conditional results do not identify actual Adams pages or prove
the full aggregate Kervaire exclusion.

All four modules pass the serial direct build. The current-build assertion
verifies exact module coverage and all fingerprints; all 15 printed axiom
sets contain only the documented standard Lean axioms. The independent
deterministic and full-trajectory review also passes after compilation.
