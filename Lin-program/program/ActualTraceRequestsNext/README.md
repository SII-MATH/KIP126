# Imported requests for the next constructed actual traces

The strict data-only importer from `ActualTraceRequests` now connects to
four more proved semantic endpoints: Fact7.13 E9, both Fact7.21 E5 classes,
and Prop7.9 nonboundary statements on d2 through d5. `Request` still contains
only version, claim, input coordinates and output coordinates. A typed actual
prefix supplies the mathematical interpretations separately.

The endpoint and its output coordinates refer to the same requested E2
element. Exact list lengths prevent silently padding or truncating input.
The proposition request additionally checks four actual `PageBoundary`
negations, including every incoming d5 element. Its incoming meaning is an
explicit tactic argument. No d5 outgoing statement or E6 is inferred.

```lean
def request : ActualTraceRequests.Request :=
  actual_trace_request% "ActualTraceRequestsNext/fact713.json"

example (P : Fact713ConstructedE9.Prefix9 S pages) :
    ActualTraceRequestsNext.Fact713.RequestedValid P request := by
  actual_trace_next_cert using P
```

The proposition uses `actual_trace_next_cert using P incoming last`.
The same tactics accept imported JSONL batches with a goal quantifying over
every request. `ActualTraceRequests.diagnose spec request` locates a wrong
field; `diagnoseBatch spec requests 1` also gives a one-based record index.
The canonical claim identifiers include their finite endpoint so an E9
certificate cannot be confused with an E12 claim.

Eight imported positive examples, six negative tactic checks, and a runtime
oracle cover 64,008 exact requests. All 64,004 invalid requests receive the
expected field and batch position. The runtime also rejects 72 malformed
records and 24 malformed batches and checks 24 parser line numbers. The
original strict importer and its soundness theorem are reused unchanged.

```sh
python3 program/ActualTraceRequestsNext/compile.py
python3 program/ActualTraceRequestsNext/run_runtime.py
```

The actual prefixes retain the complete differential and quotient meanings,
named cycle assumptions, and naturality obligations described in their
source packages. The JSON does not prove these assumptions. No actual
sphere realization, permanence, E12 or synthetic contradiction is claimed.
Only standard foundational axioms occur in successful proof reports; earlier
tactic syntax failures are retained as failures, not accepted evidence.
