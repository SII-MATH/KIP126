# Finite event trace data producer

`make -C FiniteEventProducer all test` builds an independent C++ data-only
canonical packager (not a comparison solver), extracts all87 complete actual event inputs plus two small examples, and runs independent regression
checks. `finite-event-export INPUT.jsonl` emits canonical JSONL to stdout;
malformed rows receive path/line diagnostics, later records continue, and
any failure gives a nonzero exit code.

The input/output schema is the Lean EventAudit.Executable Wire: version=1,
rawSource/rawTarget Boolean vectors, sourceStages/targetStages lists of
{wire: full WireComparison, representative: Boolean vector}, event: full
WireComparison, final source/target Boolean vectors. All keys are canonical
alphabetical order; no status/proved/unknown marker is permitted. Dimensions
and all six comparison arrays are preserved. C++ checks strict types, keys,
versions and dimensions; it does not manufacture a mathematical proof or
silently repair matrices. Its output becomes input to Lean's executable
checker and separate soundness theorem.

`all87.input.jsonl`/`all87.jsonl` contain all87 complete events.
Actual examples: row2435 d2 (no prior stages) and row2492 d4 (d2,d3 transitions
for both endpoints). `prepare.py` extracts the full input from the existing
EventAudit source/trace inventory, preserving hashes, conditional labels and
trace metadata in provenance.json. `actual.input.jsonl` and `actual.jsonl`
are byte-identical: the exporter canonicalizes already complete input data.

`test.py` independently verifies all comparison equations, stage cycles,
nonzero projections, trace chaining and the final nonzero differential;
then rejects eight malformed schemas, checks a mixed three-row stream, and
checks an oversized record followed by a valid record.
`audit.json` records exact data hashes and results. These are finite matrix
trace certificates, not proofs of actual Adams interpretation or topological
elimination. Complete input witnesses are required; the exporter does not
invent them from a staircase event status.

Resource limits are 10 MB per record, nesting32 and matrix dimensions512.
The bounded reader retains at most10MB and discards the remainder of an
oversized record, then resumes at the next record. No external output is part of Lean's trust root.

## Indexed event certificates

The same `all test` target also builds `indexed-event-export`, generates
`indexed87.input.jsonl`, exports `indexed87.jsonl`, and runs `indexed_test.py`.
This second strict packager uses the indexed Lean wrapper documented in
`INDEXED_FORMAT.md`. It preserves the full finite witness while checking
endpoint bidegrees and every intervening page label. Its independent audit
compares all 87 endpoint degrees to `AggregateTargetInventory/inventory.json`,
checks all 78 prior-page labels, and rejects nine malformed inputs.
`indexed_audit.json` records the resulting hash and counts. These labels
provide finite indexing constraints; their identification with an actual
Adams spectral sequence remains a separate mathematical obligation.
