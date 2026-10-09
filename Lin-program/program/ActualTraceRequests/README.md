# Requests for constructed actual traces

`Fact715.RequestedValid` and `Fact719.RequestedValid` bind both vectors in an
imported request to one actual quotient trace. The source is the supplied
initial coordinate equivalence applied inversely to the request vector; the
nonzero endpoint must have exactly the requested output coordinates. Explicit
length equalities prevent padding or truncation from changing the request.

The semantic prefix remains a typed mathematical input. Its full incoming and
outgoing differential meanings and quotient laws are Lean proofs; they cannot
be supplied as JSON flags. The finite data checker is proved sound by combining
exact request matching with the previously constructed actual trace. Hashes
are used only for provenance.

```lean
def request : ActualTraceRequests.Request :=
  actual_trace_request% "ActualTraceRequests/fact715.json"

example (P : Fact715ConstructedActual.Prefix5 S pages initial) :
    ActualTraceRequests.Fact715.RequestedValid P request := by
  actual_trace_cert using P
```

`actual_trace_batch%` imports JSONL. `actual_trace_cert` also proves every
request in an imported list using the same prefix. Empty batches are rejected
by the importer. The batch soundness theorem quantifies over precisely the
supplied list; it does not assert that this list covers every paper claim.

Version 1 uses canonical JSON with fields `claim`, `output`, `source`,
`version`. Vectors contain JSON booleans. The parser rejects duplicate fields,
unknown fields, wrong types, unsupported versions and noncanonical JSON.
Single-file import permits surrounding whitespace; JSONL records are strict,
with at most one final newline. Parse errors include the file and line number.

`diagnose` returns a field and explanation; `diagnoseBatch spec records 1`
also returns a one-based line number. Both diagnostic success equivalences
are proved. Tactic failure directs the caller to these functions; only the
soundness theorem and kernel reduction can construct a proof.

Seven modules compile directly, with 11 standard-axiom reports. Four imported
single/batch examples pass; six tactic cases reject wrong values, lengths,
claim or version. Runtime tests accept canonical records/batches and reject
five malformed record variants and four malformed batches, including exact
second-line localization. Earlier failed compiler logs are retained separately.

```sh
python3 program/ActualTraceRequests/compile.py
cd program
lake env lean --run ActualTraceRequests/ParserTests.lean
```

This is a conditional actual-trace interface. It does not supply a sphere
Adams realization, any missing differential interpretation, or permanent
cycle proof. The existing C++ comparison exporters provide the finite wires;
these request records select the input and result to be checked.
