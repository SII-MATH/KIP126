# Imported same-input Fact7.13 E10 requests

This adapter reuses the strict `ActualTraceRequests` JSON/JSONL parser
and its checker soundness proofs. The canonical claim is
`fact-7.13:E10`, input `[true,true]`, output `[true]`, version1.
An imported request contains data only; the typed `Prefix10 S pages`
supplies the actual interpretation hypotheses separately.

```lean
import ActualTraceRequestsE10.Tactic
open ActualTraceRequests ActualTraceRequestsE10
open Fact713Row3143Continuation.Constructed

def request : Request :=
  actual_trace_request% "ActualTraceRequestsE10/fact713.json"

example (P : Prefix10 S pages) : RequestedValid P request := by
  actual_trace_e10_cert using P
```

`actual_trace_batch%` imports JSONL. The same tactic accepts a goal
quantifying over every member of the imported list. `request_sound` and
`batch_sound` imply the semantic same-input trace proposition, not merely
text equality. All eight quotient transitions occur in one `S` and
`pages`; the E10 endpoint and its coordinates are constructed. This retains
all complete actual neighboring differential meanings and quotient laws
required by the prefix, including prior named actual cycle hypotheses.

`ActualTraceRequests.diagnose spec request` locates version, claim,
source length/value or output length/value errors. `diagnoseBatch spec
requests 1` also reports a one-based record index. Parser failures report
their line. E9 and E12 claim IDs are rejected. Eight negative tactic tests
include a batch whose second request has a wrong output.

The Lean runtime checks 10,668 exact request combinations, 10,667 rejected
field/line locations, 18 malformed records, 6 malformed batches, 6 parser
line locations and 10 valid batches. The four successful theorem reports
use only standard foundational axioms. No `sorry`, custom axiom or native
proof evaluator is used. Earlier failed attempts remain recorded.

```sh
python3 program/ActualTraceRequestsE10/compile.py
python3 program/ActualTraceRequestsE10/run_runtime.py
python3 program/ActualTraceRequestsE10/freeze.py
```

This proves the conditional actual E10 interface. It does not establish
the actual sphere realization, E12, permanence or all Kervaire claims.
