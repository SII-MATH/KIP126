# High-degree event certificate pipeline

The eight modules give complete finite-certificate and indexed-certificate
checks for new staircase events 6651, 7007, 7162 and 7247. Their C++ outputs
live in `FiniteEventProducer/HighD2`, alongside the full 94-event batches.

The four `Trace` modules check all six prior cycle and nonboundary steps:
four for the d4 event 6651 and two for the d3 event 7247. The two d2 events
have no prior stages. All eight raw-to-final projection identities are
proved, including the identity projections for these empty paths.

Each `Executable` module freshly imports both actual C++ artifacts and
proves `finite.Valid` and `indexed.Valid` using `lin_cert using ()`.
It identifies the event comparison, every prior comparison, raw endpoints
and final coordinates with the aggregate's exact values. Mutated page,
raw-source and zero-target inputs are rejected by executable Lean checks.

`review.py` independently checks the original SQL staircase rows, global
source and target basis IDs, all trajectory coordinates, conditional
dependency closures and exact staircase basis-value evidence. In particular
the incoming row 7247 starts at basis 7008 in (54,180). The two d2 finite
records have identical unindexed numerical shapes but distinct indexed
degrees and raw SQL identities; the audit keeps those identities separate.

These are conditional finite results. The high-degree d2 basis columns are
NULL in the source database and beyond its declared d2 coverage. Their
staircase-derived matrix meanings remain explicit in the aggregate's
`HighD2` interface and in every provenance closure. Neither the producer
nor the pipeline supplies an unconditional Adams realization theorem.

```sh
python3 program/AggregateHighD2Conditional/Pipeline/generate.py
python3 program/AggregateHighD2Conditional/Pipeline/review.py
python3 program/AggregateHighD2Conditional/Pipeline/compile.py
python3 program/AggregateHighD2Conditional/Pipeline/assert_current.py
```

Build the aggregate dependencies first. Compilation runs only these eight
new modules, sequentially, and records actual exit codes and source, import,
log and olean fingerprints. The current-import checks are kernel proofs;
SHA-256 is only a consistency check. No `sorry`, `native_decide`, custom
axiom or C++ trust is used.
