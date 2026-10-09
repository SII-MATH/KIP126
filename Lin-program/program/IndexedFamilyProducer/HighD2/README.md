# One shared 351-entry finite family

This snapshot binds 94 indexed events to the complete 351-entry matrix
family from `AggregateHighD2Conditional/source.json`. All 96 supplied prior
source/target stages refer to that same family. It extends the previous
336-entry family and 90 events without changing any prior full wire.

## Data and theorem scope

Each family key includes the object, page, signed filtration and signed
total degree. The 39 negative-filtration auxiliary entries remain intact.
An event binds the complete comparison wire, including every differential,
inclusion, projection and homotopy matrix; hashes are not used as proof of
mathematical equality.

`IndexedHighD2Certificates.family` is the single shared value.
Ten event modules prove all 94 `BoundWire.Valid family` propositions and
their corresponding `DifferentialAt family` propositions. Fifteen pair
modules cover every one of the 351 source rows against all 351 target rows.
`IndexedHighD2Certificates.family_coherent` proves consistency of all 123201
ordered pairs, including 194 existing adjacent differential pairs and 128
existing consecutive-page pairs. `IndexedHighD2Certificates.entries_valid` reuses
the exact 351 aggregate full-comparison proofs, in family order.

These are propositions about the supplied finite matrices. The definitions
of `DifferentialAt` and `Coherent` do not identify the family with the Adams
spectral sequence of a topological spectrum. Consecutive-page coherence
checks the dimensions of existing entries; missing neighbors are not
asserted to exist, be zero, or satisfy a requested coverage window.

The provenance retains all 34 conditional matrix-role uses, including 16
`conditional_d2_staircase` uses, plus every event's original conditional-use
list. Naturality, Leibniz, source staircase meanings, imported relation
semantics and Adams realization remain the separate displayed premises of
the corresponding aggregate semantic theorems. In particular, a raw NULL
cell is not an unconditional zero or an independently proved differential.

## Files and commands

| File | Role |
| --- | --- |
| `prepare.py` | Bind exact C++ indexed output to one complete family |
| `family.input.json`, `family.json` | Canonical full family envelope |
| `bound94.jsonl`, `events/*.json` | Bound batch and 94 individual imports |
| `provenance.json` | Database, aggregate, input hashes and conditional uses |
| `generate_lean.py` | Family, ten event modules and aggregate event theorem |
| `generate_coherence.py` | Entry validity, fifteen pair modules and coherence theorem |
| `review.py`, `review.json` | Full matrix/binding replay and regeneration check |
| `compile.py`, `compile-audit.json`, `proof-inputs.json`, `*.log` | Actual serial Lean invocations and input/artifact fingerprints |
| `assert_current.py` | Require 29 actual successful exits and exact current artifacts |
| `independent-review.json` | Separate read-only source, matrix, provenance and generated-proof audit |
| `../../IndexedHighD2Certificates/*.lean` | The 29 Lean modules |

From `program/`, when no related build is active:

```sh
python3 IndexedFamilyProducer/HighD2/prepare.py
python3 IndexedFamilyProducer/HighD2/generate_lean.py
python3 IndexedFamilyProducer/HighD2/generate_coherence.py
python3 IndexedFamilyProducer/HighD2/review.py
python3 IndexedFamilyProducer/HighD2/compile.py
python3 IndexedFamilyProducer/HighD2/assert_current.py
```

The C++ executable is the existing `IndexedFamilyProducer/indexed-family-export`.
It receives full canonical family and indexed-event inputs; Lean subsequently
checks the imported matrices and bindings. The producer and SHA-256 are
outside the mathematical trust root.

## Independent review

The independent review found no discrepancy in the six scripts or 29
generated modules. It separately replayed all 351 homology comparisons and
123201 ordered pair conditions, checked every event/stage key against the
full wire, checked exact canonical disk bytes, and verified the prior
336-entry and 90-event prefixes. It checked namespace separation, all 351
aggregate proof references, pair indices 0 through 350, all 94 generated
event declarations and current proof-input/provenance hashes. No obsolete
336-entry constant is used to define or prove this new family.

The review wrote only this README and `independent-review.json`; it did not
run generation or compilation while the parent's serial build was active.
Its report records the observed partial compilation state honestly and
does not certify later completion. Successful compilation is established
separately by all 29 actual zero exits and `assert_current.py`. A later Lake
invocation may change olean bytes; preserve historical direct-build evidence
and record Lake evidence separately rather than replacing hashes.

All 29 generated modules subsequently completed with actual exit zero in
root session 8265. The direct current-artifact audit passed before the
separate Lake integration. The runtime checker accepted all 94 records and
rejected wrong objects, malformed lines, empty batches and invalid families.
The fixed-input theorem example is `IndexedHighD2Certificates/Example.lean`.

## Explicit result requests

`prepare_requests.py` emits 94 canonical records with separate key, input,
output and certificate fields. `RequestImport.lean` imports one such record;
`RequestCheckFile.lean` checks a complete batch against the shared family.
The fixed-goal theorem is in `IndexedHighD2Certificates/RequestExample.lean`.
`request_cli_test.py` checks all 94 actual requests and wrong object/input/output,
unknown and duplicate fields, record recovery and empty-batch failures.
Changing the requested result cannot be hidden inside a valid certificate.

After a Lake build, use `python3 IndexedFamilyProducer/HighD2/assert_lake.py`
for the separately captured successful Lake artifacts. The direct compiler
audit remains unchanged as historical evidence.
