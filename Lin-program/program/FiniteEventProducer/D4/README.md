# Conditional d4 extension: 88 finite events

Run `python3 FiniteEventProducer/D4/prepare.py` and then
`python3 FiniteEventProducer/D4/test.py` from program/. The existing
finite-event-export and indexed-event-export executables must be built;
this directory does not modify either producer or the original 87 outputs.

prepare.py independently reconstructs all 88 complete witnesses from the
331 blocks in AggregateD4Conditional/source.json and the original
AggregateTargetInventory/inventory.json. It exports all88.jsonl and
indexed88.jsonl using the strict C++ packagers. The new event3254.json
and indexed-event3254.json fixtures are directly usable by the existing
finite_event% / indexed_event% / indexed_event_checked% Lean importers.

The new stored incoming event is S0(12,138) --d4--> S0(16,141), with raw
source local3, target local1, and final quotient coordinates [true] on
both sides. Each endpoint has its full d2,d3 comparison/cycle/nonboundary
path. It retains conditional_csigma, conditional_h3_d0 and
conditional_d4_module dependencies; acceptance of finite matrices does
not turn those hypotheses into unconditional Adams statements.

provenance.json includes the original inventory row, complete source and
target traces, the union of conditional dependency closures for both
endpoints and final event, attempted overrides, upstream database hashes,
and input file hashes. Hashes track data identity, not mathematical truth.

The independent test checks all comparison identities, stage cycles,
nonzero projections, raw/final chaining, final nonzero event, every
contiguous page label and Adams degree shift, and original inventory
endpoint direction. It also checks all 87 old records remain equal,
only row3254 is added, and its reconstructed stages agree with the separate
AggregateD4Conditional/trajectory-cycles.json trace. All88 outputs are
reproducible canonical JSONL. audit.json records the 88 events, 82 prior
stages, retained conditional kinds and output hashes. Lean proof of the
new executable/indexed fixture is supplied by the separate
AggregateD4Conditional event modules; C++ output is only certificate data.
