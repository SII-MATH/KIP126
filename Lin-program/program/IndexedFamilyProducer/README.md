# Shared indexed-event family certificates

The producer packages all 336 complete comparisons from
`AggregateC2H2Conditional/source.json` into one family, including its 39
negative-filtration predecessor blocks. Keys are `(object,page,s,t)` with
signed bidegrees. The 90 existing actual C++ indexed-event certificates all
refer to that same full family; there are no per-event or per-batch subsets.

The two C++ commands are:

```sh
indexed-family-export --family FAMILY.json
indexed-family-export --bind FAMILY.json OBJECT INDEXED.jsonl
```

The first checks the family envelope, unique keys, comparison dimensions,
and supported scalar types, then emits canonical JSON. The second validates
each indexed record and requires exact full comparison equality for its
final event and every earlier source and target stage. It emits one
`{version,object,event}` record per input line. Unknown objects, missing keys,
duplicate/conflicting keys, or differing comparison matrices are rejected
with input line and role/stage diagnostics. No hash is used for matching.

`prepare.py` extracts the full family, invokes the C++ binary, and preserves
all conditional-row provenance separately in `provenance.json`. The signed
predecessor degrees are preserved; NULL source rows are never converted to
new claims. Family metadata and hashes supply provenance only.

`family.json` has exactly `{version:1,entries:[{key,wire},...]}`. Each key
has `object`, `page`, `s`, `t`; each wire includes all six comparison
matrices. `bound90.jsonl` contains exactly the bound event envelope above.
Output keys are lexicographically sorted, with compact JSON and one newline.
ASCII object identifiers and integers are supported, and unknown JSON
fields, duplicate fields, null, unsupported strings, malformed dimensions,
overdeep records, and lines over 10 MB are rejected. These are operational
resource limits, not mathematical assumptions.

`test.py` independently compares every family entry to the source data and
every event/stage to the full family. It checks all full comparison
identities, 190 horizontal matrix links, and 122 consecutive-page dimension
links; there are no conflicts. It also tests malformed bindings and requires
byte-identical regeneration. The mathematical claims are checked in Lean
through `IndexedFamilyCertificates`, not by trusting these Python/C++ checks.

`generate_lean.py` emits one `GeneratedFamily.family` constant, nine batches
of ten imported bound events, and `GeneratedAll.all_events_valid` for all90.
Each event reuses its existing checked indexed proof and the shared unique-key
proof, then checks its event and stage bindings in the Lean kernel. This
produces validity against the same family and a `DifferentialAt` theorem;
the public tactic supports the same semantic target. Earlier-page full-wire bindings are
available through the general validity projections.

`generate_coherence.py` adds `GeneratedCoherence.family_coherent`: all336
complete comparison proofs are reused from the aggregate, and every one of
the 336-by-336 ordered pairs is checked in 336 source rows split across14
modules. This retains all checks while avoiding repeated proofs of shared
facts. Missing neighbor entries remain outside the finite supplied family.

Run `make -C program/IndexedFamilyProducer test`, then the generated Lean
modules in order Family, Batch0 through Batch8, All. Family validity still
needs the explicitly recorded mathematical interpretations to identify an
actual Adams sequence; this packaging does not establish topology.

After all Lean compilation finishes, run
`python3 program/IndexedFamilyProducer/assert_current.py` from the repository
root. It requires exactly the recorded 27 successful modules and 139 proof
inputs, checks source/object/log hashes and allowed axiom reports, and rejects
missing, changed, failed, or interrupted artifacts. It does not refresh stale
digests or accept timestamps as evidence. Its only output file is
`current-audit.json`; the historical interrupted attempt remains unsuccessful.
Lake can produce different object bytes because its compiler arguments differ
from direct compilation. The separately observed successful full build is
recorded in `lake-compile-audit.json`, without replacing the direct audit.
Check those artifacts with
`python3 program/IndexedFamilyProducer/assert_current.py --lake-manifest program/IndexedFamilyProducer/lake-compile-audit.json`.
This mode additionally requires the exact successful build log, each module's
`Built` record, its source-bearing Lake trace, and its current object digest.
