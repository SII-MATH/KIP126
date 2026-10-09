# Conditional d4 extension of the aggregate event DAG

This directory snapshots AggregateTwoDetectorConditional and adds only
S0 source (8,135), d4, staircase row2796, base="2", diff=NULL, level=9000.
The new zero is justified conditionally by Row2796D4Detector.Source,
whose actual shifted CW_nu_eta map is zero on the source E3 quotient and
zero-reflecting on the target E4 quotient. Local d4 naturality and zero
preservation remain explicit; all earlier d3 interpretation conditions
are retained. NULL itself supplies no evidence.

The complete DAG contains 331 comparisons, one more than the previous330:
S0:12,138:d4. Among all101 nonsentinel inventory events, 88 now have finite
nonzero-event certificates and13 remain unresolved. The newly complete
event3254 is a stored incoming d4 with source(12,138), target(16,141).
This is finite imported-data progress, not an unconditional Adams or
Kervaire exclusion theorem.

The sole completed new role is row2796's incoming column0 at S0:12,138:d4.
The source outgoing comparison S0:8,135:d4 still fails on predecessor
row2576 at(4,132)d3; no complete outgoing comparison is claimed. `D4.matched`
links the incoming column to the actual differential coordinates under
`Source.named_d4_zero`. The source/target E4 comparison matrices are
identified with the detector's matrices, and the named source representative
is linked from E4 coordinate0 through E3 coordinate0 to E2local2.

`generate.py` and `events.py` regenerate this directory only. `review.py`
checks byte-identical regeneration, predecessor closure, the exact d4
signature, its sole completed role, event3254, all counts and remaining
failure reasons. Import `AggregateD4Conditional.Matches` for the semantic
interfaces. The copied Csigma and two-product d3 interfaces are retained.

## New event trace and executable import

`Trace` proves the new event3254 source and target each are d2 and d3
cycles, not incoming boundaries, and their complete projections equal the
recorded E4 event coordinates. This adds four cycle proofs, four nonboundary
proofs and two full projection links, rather than duplicating the baseline87.
`generate_trace.py` and `review_trace.py` regenerate and audit these data.

`Executable3254` imports the actual C++ outputs
FiniteEventProducer/D4/event3254.json and indexed-event3254.json through
`finite_event%` and `indexed_event%`. Both `finite_valid` and `indexed_valid`
are freshly proved by `lin_cert using ()`, with axioms only propext and
Quot.sound. The module identifies all four stage matrices and the event
matrix with this aggregate's constants, checks the raw and final vectors,
and rejects three altered degree/endpoint/target examples. Both new Lean
modules compile. The indexed checker verifies finite bidegree/page labels;
it does not identify an actual Adams spectral sequence without the recorded
semantic premises. `review_trace.py` independently equates all stage
representatives and complete matrices with the producer fixtures.
