# Aggregate with the conditional row 2796 d5 role

This aggregate has 358 complete finite homology comparisons and 95 accepted
nonzero finite events, including event 3391. It preserves all 357 comparison
blocks and all 94 accepted events from `AggregateC2Row3019Conditional`.
Only the event-status record for 3391 changes; six of the 101 candidate
events remain unresolved. All accepted events have their prior source and
target trajectories checked, totaling 102 stages.

The single new block is `S0:13,139:d5`. Its outgoing matrix is `[1]`, its
incoming matrix is `[0,0]`, and its homology dimension is zero. Its three
staircase roles remain distinguishable:

- Outgoing row 3083, `["0","0",9995]`, records the nonzero stored d5.
- Incoming row 2796, `["2",null,9000]`, has the new conditional zero column.
- Incoming row 2797, `["1",null,9991]`, uses the inherited later-prefix meaning.

`D5.matched` in `Matches.lean` proves the first incoming column agrees with
the detector theorem for every supplied `Completion3` and `Completion4`,
assuming their actual-map compatibility, local d5 naturality, and preservation
of zero. It binds the detector's source and target comparison data to this
aggregate and checks the raw source projection. It asserts no existence of
either completion. The full `S0:8,135:d5` block remains unavailable.

`Data.lean` checks every finite comparison with `lin_cert`; `Events.lean`
proves each accepted finite differential and its nonzero target. These finite
facts require the documented conditional interpretations to apply to actual
Adams pages. Earlier conditional d2, d3 and d4 meanings, the stored outgoing
event, and the other incoming prefix are not silently discharged.

## Independent review and build

Run from `program/`:

```sh
python3 AggregateD5Conditional/review.py
python3 AggregateD5Conditional/assert_current.py
python3 AggregateD5Conditional/Pipeline/review.py
python3 AggregateD5Conditional/Pipeline/assert_current.py
```

The independent reviewer checks all 358 comparison laws and Lean literals,
unchanged baseline blocks, the new raw SQL roles, horizontal and consecutive
dimensions, every accepted raw SQL endpoint and E2 basis, all 102 prior cycle
and nonboundary stages, and every event's complete conditional dependency
closure. The four aggregate modules have actual successful compile records;
the current audit passes with 29 standard-only axiom reports. The two pipeline
modules also have actual successful compile records and four standard-only
axiom reports. A later Lake rebuild can legitimately change `.olean` hashes;
direct compile records remain historical evidence rather than being rewritten.

The finite/indexed C++ producer in `../FiniteEventProducer/D5/` supports the
whole batch of 95 events. Its regression verifies that the 94 old finite and
indexed JSONL records remain byte-identical. No `sorry`, `native_decide`, custom
axiom, or mathematical trust in C++ or source digests is introduced.
