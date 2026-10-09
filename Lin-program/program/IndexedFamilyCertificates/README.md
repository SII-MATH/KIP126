# Indexed finite-family certificates

An indexed event now names a spectrum and every full comparison matrix in one
shared finite family. The key is `(object, page, s, t)`. Both degree coordinates
are signed integers so auxiliary negative-filtration blocks are preserved.
The family contains actual data, not a digest that substitutes for data.

`Basic.lean` proves `check_sound` and `Valid.differential`. It checks exact
equality of the event comparison and every earlier source/target comparison
against the keyed family. This includes incoming/outgoing matrices, complete
homology inclusion/projection and contraction witnesses. The existing indexed
checker independently verifies cycle/nonboundary paths, full homology
comparisons, degree shifts, differential value and nonzero target.

`Coherence.lean` separately verifies all supplied family entries, unique valid
keys, equality of shared differentials, and consecutive homology dimensions.
Only pairs present in the family are compared. `checkWindow` also verifies a
caller-supplied list of required keys. Missing entries are never interpreted
as zero. This is a finite consistency statement; consecutive dimension
equality alone does not identify a matrix with an actual Adams differential.

## Import and use

`family_input%` strictly imports a version-1 `FamilyEnvelope` with `entries`.
`bound_event%` strictly imports a version-1 `BoundWire` with `object` and `event`.
Unknown/duplicate JSON fields and noncanonical JSON are rejected. Import
produces data; a theorem still requires the proved checker.

`Results.lean` binds the goal's input and output, rather than allowing the
certificate to choose which claim to prove. A real example is:

```lean
import IndexedFamilyCertificates.ResultExamples
open IndexedFamilyCertificates IndexedFamilyCertificates.Tests
open IndexedFamilyCertificates.ResultExamples

example : DifferentialAt family (Key.mk "S0" 4 18 144)
    [true, true, false] [true, false] := by
  indexed_family_cert using certificate
```

The vectors are coordinates on the event page. Earlier E2 representatives
are stored and checked in the certificate paths. `checkBatch_sound` supports
lists of explicit requested keys, inputs and outputs. `diagnoseResult`
distinguishes wrong key, input, output and matrix/path failures. `diagnose`
also reports the first missing/different block or stage and its actual key.

The C++ packager is in `../IndexedFamilyProducer/`. All generated events use
one full family; its conditional-source provenance remains in the producer
manifest. Hashes detect changed inputs only. The standard Lean axioms used
by these checks are `propext` and `Quot.sound`.

## Mathematical boundary

Neither these checks nor the C++ packager prove that the imported family is
the Adams spectral sequence of the original CW spectra. The local naturality
and Leibniz assumptions used to build conditional entries still require
mathematical justification. `Step4ContractAudit/SemanticBridge.lean` gives a
separate semantic transport theorem with explicit all-source differential
compatibility, injective target coordinates and endpoint identities.

The adversarial tests retain examples where a local event passes but family
binding fails, and where an unused invalid family entry does not affect the
per-event checker. Whole-family validity requires `Coherent`; actual
topological realization is a further obligation.
