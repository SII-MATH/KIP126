# Finite E2 checks at all 61 cofiber configurations

The inventory contains 61 cofiber configurations. Every cyclic position is audited: position 0 checks `d -> i`, position 1 checks `i -> q`, position 2 checks `q -> d`. For every nonempty middle E2 bidegree with t <= 12, incoming data is read at the inverse shifted degree and outgoing data at the forward shifted degree (both reach t = 76 in this inventory). Empty middle groups are not enumerated; their middle exactness is trivial but no endpoint injectivity/surjectivity is claimed.

Of the exactness blocks, 664 have nonzero vector spaces at both adjacent ends. There are 4,440 middle degree blocks: 4,411 admit a checked contraction `A U + V B = I` together with `B A = 0`, and 29 have a nonzero adjacent E2 composite. The latter occur in `S0__C2sigma__S0` (7), `S0__Csigmasq__S0` (3), `S0__Ctheta4__S0` (5), `S0__Ctheta5__S0` (14). These are explicit evidence that one cannot simply replace the topological cofiber triangle with a short exact E2 sequence. All positions and counterexample coordinates are preserved in `audit.json`.

`Basic.lean` defines signed-degree matrix certificates, strict canonical JSON import, an executable checker and diagnostics, and `check_sound : check w = true -> w.Valid`. Its `Valid` conclusion is `ResolutionCertificates.ExactAt` for the supplied finite matrices: every kernel vector is in the incoming image. It does not assume or prove injectivity of the incoming map, surjectivity of the outgoing map, or identification with a topological short exact differential sequence. Source identity, grading and imported relations are independently audited data, with semantic interpretation premises exposed by the existing dependency certificate families.

The 8,021 dependency map certificates also have generated kernel goals; rank calculations in the producer are never used as Lean proofs. The 4,411 exactness goals use explicit contractions, and all 29 noncomplex cases have nonzero-coordinate kernel goals. All 156 batches have compiled successfully: 8,021 dependency proofs, 4,411 exactness proofs and 29 nonzero-composite coordinate proofs. All four support modules also pass, including 29 explicit `notComplex` theorems. The current audit reports 162 fresh files, zero remaining, and no stale upstream, dependency or exactness certificates.

Files:

- `audit.py`, `audit.json`: inventory, database schemas, actual matrices, witness search, zero/unknown handling and all failures.
- `data/*.json`: factor, direct and composite map dependency certificates.
- `verify.py`, `verification.json`: independent finite matrix witness checks.
- `source_audit.py`, `source_audit.json`: independent SQL basis, generator image, relation and polynomial identity audit.
- `Basic.lean`: executable checker, canonical import, diagnostics and soundness.
- `Tests.lean`, `CheckFile.lean`, `Counterexamples.lean`: concrete/mutation checks, runnable checker, and 29 explicit not-a-complex propositions.
- `generate.py`, `generation.json`, `exact/*.json`: exactness certificates and batch manifest.
- `../CofiberE2Batches/Batch*.lean`: all dependency, exactness and noncomplex goals.
- `compile.py`, `compile_audit.json`: serial kernel compilation with recursive source/JSON/external-olean fingerprints.

Run from the repository root:

```sh
python3 program/CofiberE2Certificates/audit.py
python3 program/CofiberE2Certificates/verify.py
python3 program/CofiberE2Certificates/source_audit.py
python3 program/CofiberE2Certificates/generate.py
python3 program/CofiberE2Certificates/compile.py
python3 program/CofiberE2Certificates/test_runtime.py
python3 program/CofiberE2Certificates/assert_current.py
```

The checked finite exactness results do not fill the topological hypotheses of `AdvancedRuleCertificates.ExactSequence`, nor establish the differential connecting map for all 61 cofiber sequences. Those require actual chain models, comparison maps, square-zero differentials, and exactness/commutation premises. The cofiber SQLite staircase fields `iC,s,t,base,diff,level` are retained as provenance, never interpreted as those premises automatically. Unknown or null entries are not zero. No `sorry`, custom axiom, `native_decide`, or trust in the producer is introduced.

The source audit pins 156 spectrum/map/config files, and the witness audit separately pins all 61 cofiber databases (321,850 staircase records in total). The staircase row count is provenance coverage, not a claim that all extension records have mathematical proofs.

An additional grading distinction: 57 configurations have total cyclic E2 shift `(s,t) = (1,0)`. The four configurations exhibiting nonzero composites have total shift `(2,1)`, because their connecting maps have higher filtration. They do not even fit the ordinary E2 long-exact grading pattern; later-page interpretation is essential.

`cycle_grading.json` lists the full shift calculation for all 61 configurations and every one of the 29 noncomplex positions. Agreement with `(1,0)` is only a grading check, not an automatic proof of a topological long exact sequence.

A nontrivial small example is `S0__C2__S0`, position 1, middle degree `(3,12)`: the middle space has dimension 2, and both adjacent maps have rank 1. `Tests.actualC2_exact` checks its concrete certificate.

Proof-producing use for a supplied actual block is:

```lean
def exampleBlock : CofiberE2Certificates.Wire :=
  cofiber_e2% "CofiberE2Certificates/exact/00039.json"
theorem exampleExact : exampleBlock.Valid := by
  lin_cert using ()
```

For the mathematical conclusion use `exampleExact.2 : ResolutionCertificates.ExactAt exampleBlock.b exampleBlock.a`. The conclusion quantifies over all vectors, independently of which vectors appeared in the upstream records.

Final validation: 7 executable import/checker cases pass (valid, wrong contraction, wrong signed degree, invalid cyclic position, missing coordinates, unknown JSON field, duplicate JSON field). The mathematical mutation tests and all soundness/actual certificates are kernel checked; parser rejection is also exercised by executable IO assertions.


## Transport to interpreted spaces

`Transport.lean` supplies two bridges from a checked `Wire.Valid`, with no actual exactness assumption:

- `Wire.exact_under_interpretation` needs a surjective middle coordinate interpretation, an injective target interpretation preserving zero, and compatibility of the two supplied maps. It proves every actual kernel element has an actual incoming preimage.
- `Wire.transport_exact` uses three coordinate equivalences and the same compatibility squares. It proves the actual composite is zero and `outgoing y = 0` iff `y` has an incoming preimage, for every actual element.

`TransportExample.lean` applies this to the actual C2 middle degree `(3,12)` matrix certificate. Its interpreted spaces are `Bool`, `Bool × Bool`, `Bool`, with inclusion into the second coordinate and projection onto the first. `arbitrary_kernel_has_preimage` is obtained from the certificate transport for an arbitrary pair, not merely its basis vectors. Both modules compile, and the transported theorem uses only `propext` and `Quot.sound`.

Coordinate equivalences and map compatibility remain the explicit mathematical comparison obligations when instantiating this theorem with Ext groups or topological objects; no such topological identification is inferred from names.

## Kernel linkage to dependency certificates

`generate_linkage.py` generates `../CofiberLinkageBatches/Batch*.lean` for all 4,440 positions. Each position imports the original, independently checked dependency certificate definitions, proves both actual matrix equalities by kernel reduction, references both dependency validity theorems, and concludes exactness (4,411 positions) or a nonzero composite (29 positions) directly for those dependency matrices. The equality links do not use SQL names or hashes as proofs.

`Linkage.lean` adds `Wire.transport_linked`: explicit matrix identities transfer the dependency interpretation squares to the finite exactness theorem, and then to arbitrary interpreted kernel elements. Coordinate comparison and map interpretation hypotheses remain explicit; no topology is inferred from names.

The linkage batch status is separate from the original certificate batches:

```sh
python3 program/CofiberE2Certificates/generate_linkage.py
python3 program/CofiberE2Certificates/compile_linkage.py
python3 program/CofiberE2Certificates/assert_linkage.py
```

There are 8,880 matrix equality goals, 8,880 references to checked dependency validity proofs, and 4,440 linked mathematical conclusions, across 74 batches.

For the nontrivial C2 `(3,12)` example, `CofiberLinkageBatches.Batch000.linkedExact39` proves exactness directly for dependency 31 (incoming factor) and dependency 68 (outgoing direct map), using `incomingLink39` and `outgoingLink39`. This closes the numerical matrix linkage inside Lean while leaving interpretation as actual Ext/topological maps explicit.

All 74 linkage batches and `Linkage.lean` passed kernel compilation. `linkage_current.json` reports 75 fresh files, zero remaining, with all 4,440 positions covered and 8,880 matrix equality theorems checked.
