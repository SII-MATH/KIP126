# Two C2 rows complete another incoming matrix

This isolated snapshot extends `AggregateDC2h6Conditional`: all 355 old
complete comparisons remain exactly equal, and the two new comparisons
are `S0:14,140:d3` and `S0:18,143:d4`, for a total of 357.

The incoming d3 matrix at S0(14,140) now includes two distinct conditional
roles. Staircase row3019, raw base2, uses E2 basis3020 and aggregate column1.
Staircase row3020, raw base0, uses E2 basis3018 and aggregate column2.
Both raw NULL values remain present in the provenance. `Matches` proves
the full basis change from canonical order [local0,local1,local2] to
staircase order [local1,local2,local0], and identifies both incoming columns.

`C2Rows3019.incoming_meaning` identifies the entire incoming matrix on
every quotient class under explicit local d3 naturality and preservation
of zero. It uses the full actual C2 map from `Row3019Detector` and the
all-source theorem in `Row3020Detector`; it is not inferred from a single
vector or silently generalized to another page.

All 101 known events are checked. There are still 94 accepted finite events
and seven unresolved. The new matrices move event3391 to a later unknown:
row2796 d5 at S0(8,135), with target dimension1. Its existing d3 and d4
results do not settle d5. No new event certificate is generated.

`review.py` checks exact equality of the old355 blocks, all357 full
comparison identities, horizontal and consecutive-page consistency,
all94 accepted event paths and96 prior stages, both exact new raw roles,
and the previously audited high-d2 reconstruction meanings. Generation
is deterministic. `attempt-review.json` is a historical record of the
intermediate row3019-only attempt, before row3020 completed the matrix;
its old draft hashes describe that attempt, not the current source files.

```sh
python3 program/AggregateC2Row3019Conditional/events.py
python3 program/AggregateC2Row3019Conditional/review.py
python3 program/AggregateC2Row3019Conditional/compile.py
python3 program/AggregateC2Row3019Conditional/assert_current.py
```

Basic, Data, Events and Matches each compile serially with actual exit0.
`assert_current.py` verifies the current source, dependency, log and olean
fingerprints and 27 standard-only printed axiom sets. These are finite,
conditional statements; Adams realization and local naturality remain
explicit mathematical obligations.
