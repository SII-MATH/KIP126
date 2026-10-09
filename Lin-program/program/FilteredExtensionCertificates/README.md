# Certificates for the actual filtered-map differential

`Basic.lean` defines finite elementary abelian 2-groups, the complete source
and target filtration as ranges of generator matrices, and the exact additive
map represented by `f`. A filtration lists `depth` levels; all subsequent
levels are explicitly zero. Matrices may have redundant or zero columns.
This zero-tail convention is part of the mathematical input, not an inference
from an absent database record.

`ResultValid D` asserts that these filtrations are decreasing, the map preserves
every filtration level, the fixed `x` belongs to the required cycle group, and
the fixed `y` belongs to the required target group. Its conclusion is equality
for the actual quotient differential defined by `FilteredMapExtension`:

```lean
differential F G f s n (sourceClass F G f s n x) =
  targetClass F G f s n y
```

The source quotient uses all higher-source corrections that remain cycles.
The target quotient uses the entire next filtration plus images of every such
correction. It does not use a selected list of representatives. The target
quotient class may be zero. This module does not assert a paper theorem or
identify the finite groups with the homotopy groups of a named spectrum.

## Certificate and checks

The certificate contains, for every listed level, a factorization witnessing
the source inclusion, target inclusion, and preservation by `f`. It also
contains preimages witnessing membership of `x`, `f(x)`, and `y`, plus an
extension representative and its two higher-filtration corrections.
`checkFactor_sound` proves the factorization on generators implies containment
of the entire generated subgroup; no generator list is assumed independent.
`check_sound` derives the actual quotient equation using
`FilteredMapExtension.differential_eq_iff_leading_extension`.

`Import.lean` decodes exact row-major Boolean matrices and vectors, rejects
wrong dimensions/level counts/version, and accepts only canonical JSON with
no unknown or duplicate fields. JSONL uses LF and preserves physical line
numbers; blank records and CR are rejected. Diagnostics identify the factor
level, matrix row/column, or membership/extension witness coordinate.
Elaboration constructs data; the tactic rechecks the executable checker in
the Lean kernel. SHA-256 records provide reproducibility only.

```lean
import FilteredExtensionCertificates.Import

def certWire : FilteredExtensionCertificates.WireCertificate :=
  filtered_extension_certificate% "FilteredExtensionProducer/case_correction.json"

example : FilteredExtensionCertificates.WireValid certWire := by
  filtered_extension_cert using ()
```

`Direct.lean` contains the independently fixed input form:

```lean
theorem requested_result : ResultValid input := by
  filtered_extension_cert using certificate
```

It also supplies `quotient_equation`, projecting the result to a quotient
equation with any existing well-formedness and membership proofs for that
same input. `filtered_extension_batch%` imports JSONL; `checkBatch_sound`
proves validity of every accepted record. Batch generation is provided by
`../FilteredExtensionProducer`.

## Validation and trust

Run the direct leaf builds serially from the repository root:

```sh
python3 program/FilteredExtensionCertificates/compile.py
python3 program/FilteredExtensionCertificates/assert_current.py
```

The build records source, external JSON, log, and object hashes. The final
assertion checks those recorded files, exit codes, and printed axiom reports.
The proof path uses only `propext`, `Classical.choice`, and `Quot.sound`;
there is no custom axiom, admitted proof, native-evaluation axiom, or trust
in C++/Python. The producer and independent test oracle are untrusted.

`Batch00.lean` through `Batch15.lean` prove all 604 producer records in bounded
batches. `Examples.lean` combines those proofs, proves three illustrative
examples, and tests rejection of individual mutated witness fields and malformed
physical lines. Rejecting a changed result with stale witnesses does not imply
that no other certificate can prove that result; these are witness-consistency
tests. `Direct.lean` uses an independently specified mathematical input.

`Dimension64.lean` separately tests strict parsing and data import of the
dimension-64 fixture. Its semantic kernel proof was not completed because of
costly constant reduction, and it is not included in the default module audit.
There is no `valid` theorem for that fixture. `dimension64-final-status.json`
and archived attempts record this performance limitation explicitly.

The first batch attempt exposed excessive kernel reduction from constructing
a dependent list of matrices during decoding. `Import.matrices` now validates
every raw shape first and indexes the raw bit lists directly, preserving the
same matrices and all checks. `matrix-decoder-fix.json` and the archived logs
record that correction and the resource-interrupted attempts; only final
successful records contribute to `audit.json`.

The independent `../FilteredExtensionReview` checks the actual quotient
semantics by enumeration, tests single-bit mutations, and proves rejection of
112 selected invalid certificates in Lean. Its `Nonzero.lean` further proves
that the source quotient class, target quotient class, and induced differential
in the nonzero example are actually nonzero.
