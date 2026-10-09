# Conditional three-product extension: 90 finite events

This directory extends the D4 producer's 88 records with the two stored
incoming rows 3744 and 3745. Both are finite nonzero events from S0(18,144)
to S0(22,147) on page 4. The actual raw local indices are source [1],
target [1] for row 3744 and source [2,3], target [0,3] for row 3745.

`prepare.py` reconstructs the complete 90 records from the 333 blocks of
`AggregateThreeProductConditional/source.json`, its DAG/event inventory,
and the original `AggregateTargetInventory/inventory.json`. It invokes
the existing unmodified `finite-event-export` and `indexed-event-export`
C++ packagers to produce canonical `all90.jsonl` and `indexed90.jsonl`.
Each one-record Lean fixture is extracted from the actual C++ output.

Every record carries complete source and target paths through all earlier
pages. Across all 90 events there are 90 prior stages. The two new events
account for eight d2/d3 stages; each stage includes all six comparison
matrices, a cycle representative, and a nonzero quotient projection.

`provenance.json` records original inventory entries, full trace keys and
coordinates, complete conditional dependency closures from both endpoints
and the final event, attempted overrides, database hashes, and hashes of
all input files. Both new events retain `conditional_three_products`,
coming from the unknown row 3325. Their finite validity does not discharge
the local product/Leibniz interpretation hypotheses or imply an
unconditional Adams/topological statement. Hashes identify data only.

From the repository root:

```sh
python3 program/FiniteEventProducer/ThreeProduct/prepare.py
python3 program/AggregateThreeProductConditional/Pipeline/generate.py
python3 program/FiniteEventProducer/ThreeProduct/test.py
python3 program/AggregateThreeProductConditional/Pipeline/review.py
```

The independent GF(2) oracle checks all complete comparison identities,
raw/stage/final chaining, cycle conditions, nonzero projections, final
nonzero differential, every page label and degree shift, and original
inventory direction and indices. It recomputes all conditional dependency
closures and checks all certificate matrices against their source blocks.
It verifies that all 88 previous finite and indexed records remain
byte-for-byte identical, only rows 3744/3745 were added, and repeated C++
execution reproduces the exact bytes. `audit.json` records the result.

The existing producers retain their strict parser/resource/line-number
diagnostics. This extension changes no producer code. The Lean finite and
indexed imports, soundness applications, matrix links, rejection cases,
and trace nonboundary proofs are in
`AggregateThreeProductConditional/Pipeline/`.
