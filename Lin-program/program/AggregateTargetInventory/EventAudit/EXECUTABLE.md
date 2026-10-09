# Executable finite event data checker

Executable.Wire is plain data: raw endpoint bit vectors, two lists of
existing PageTransition.Stage records, the complete event comparison, and
final source/target vectors. Source/target paths include only earlier
quotient transitions. Empty paths identify raw and final vectors directly.

check verifies version/shapes, every complete comparison witness, every
path cycle and nonboundary condition, successive quotient-coordinate links,
last projection to the final vector, raw-vector linkage, and D*x=y with
y nonzero. check_sound proves Wire.Valid; its consequences include source
nonkernel and source nonzero. No proof object from the producer is trusted.

The strict finite_event% JSON importer rejects unknown/duplicate fields or
noncanonical nested JSON by reserialization, and rejects outer shape/raw
mismatches. lin_cert using () invokes the executable checker and its soundness
proof. diagnose identifies source/target stage index, link/final mismatch,
event comparison, event equation or zero target. It is diagnostic only.

```lean
def data : Executable.Wire := finite_event% "path/to/certificate.json"
example : data.Valid := by lin_cert using ()
```

ExecutableExamples imports the C++ producer's actual d2 and d4 fixtures,
and tests altered raw vectors, final targets, missing source vectors and malformed
JSON. These examples perform fresh data checking; the separate FiniteAPI
finite_event_cert macro is only a proof-bundling adapter.

This checker validates UNGRADED composable finite quotient coordinates.
No page numbers/bidegrees exist in the wire and no claim says the next
matrix is a differential on the actual Adams page. The final event matrix
acts on the checked final coordinate spaces; identifying its mathematical
page and raw topology needs a stronger indexed comparison/transport layer.
The complete finite event matrix is checked, not assumed correct because
of a filename, source hash or C++ exit status.

Schema/canonical examples are shared with program/FiniteEventProducer.
Register AggregateTargetInventory.EventAudit.ExecutableExamples.

An empty path may legitimately replace identity coordinate steps if raw and
final vectors already agree. The ungraded checker promises no minimum
number of pages, so deleting such a path is not a rejection test.

## All87 producer outputs

ExecutableBatch0 through8 import all87 outputs of the actual C++ producer
and prove each Wire.Valid with lin_cert. Filenames include event staircase
IDs so parser/check failures identify a concrete record. ExecutableAll
imports all batches. generate_executable_batch.py compares EACH producer
wire to the independently audited event ID, raw E2 vectors, all prior
matrix witnesses/representatives, final coordinates and event matrix.
executable-batch-audit.json preserves exact IDs and conditional provenance.
review_executable_batch.py repeats those checks and byte-stable generation.
Register AggregateTargetInventory.EventAudit.ExecutableAll in addition to
ExecutableExamples for tamper tests.

Executable, ExecutableExamples, all9 batches and ExecutableAll passed
serial direct Lean -j1 compilation. check_sound uses only propext and
Quot.sound. Three corrupt-data kernel checks and the malformed-JSON runtime
assertion passed; producer audits and87-input deterministic review passed.
No sorry, new axiom or native_decide was introduced.
