# Generic finite graded free-complex certificates

`GenericFreeComplex.lean` has no import of the actual S0 rows. Its `Data rank n`
accepts any finite number of generators, homological/internal degrees, and
polynomial edge coefficients at any declared Milnor rank. `Certificate n`
contains all two-edge product outputs and existing `AllCertificate` witnesses.

The executable checker verifies every edge's rank and grading, all n^3
products with `MilnorCertificates.checkAll`, and cancellation of each
composite coefficient on the union of its finite output supports. The support
argument proves cancellation on every monomial, including those omitted
from the certificate. `check_sound` concludes both the declared grading and
square-zero of the actual free left-module differential over
`FiniteGradedDual rank`. It is an equality of linear maps, not just a matrix
string comparison. The existing `lin_cert using ...` tactic applies via the
registered verifier instance; a rank-one example is included.

`Coordinates` requires actual equivalences between three mathematical
component types and finite Bool vector spaces, plus proved compatibility of
their maps with the matrices. `coordinates_exact` transports the existing
contraction check to an actual incoming-boundary witness in the component
carrier. `LinkedCertificate` / `checkLinked_sound` combine complex checking
and this exactness conclusion. The coordinate compatibility fields are Lean
proof obligations, never executable booleans trusted from an exporter. This
interface does not itself assert that arbitrary supplied component types are
the homogeneous components of `Data`; users must instantiate them with those
components and prove their links.

## Remaining bridge from 49 CW inputs to Adams E2

The generic ring-complex checker now removes the hardcoded rank-three S0
restriction from square-zero certification. It does not fill these separate
mathematical obligations:

1. Define each original CW spectrum and prove its cohomology Steenrod-module
   presentation agrees with the exported module input.
2. Identify the across-rank Milnor algebra with the intended Steenrod algebra,
   with rank bounds sufficient for each checked degree.
3. Generalize the S0-specific homogeneous basis completeness and differential
   coordinate reconstruction to arbitrary imported generator data, proving
   the `Coordinates` fields rather than assuming matrices from C++.
4. Check the augmentation and degreewise exactness on each desired component;
   a finite window cannot justify a global projective resolution by itself.
5. Derive the Adams E2/Ext comparison from that mathematical setup, then prove
   the spectral-sequence differential and convergence steps needed by claims.

No new axiom, `sorry`, native evaluation oracle, or trust in C++ is introduced.
Product tables can be generated in bulk, although this dense n^3 interface is
a correctness layer rather than an optimized sparse production exporter.

## Stable wire, import, and failure locations

`GenericFreeComplexImport.lean` defines canonical compressed JSON fields:
`version` (1), `rank`, `n`, `homological`, `internal`, `edges`, `products`,
`witnesses`. The degree arrays have exactly n entries; edges have exactly n*n;
products and witnesses have exactly n*n*n. Edge index is i*n+j and product
index is (i*n+j)*n+k. Polynomial terms are arrays of natural exponents.
Witness objects are the existing `AllCertificate` JSON format, including the
full finite coproduct expansion certificate. Canonical Lean JSON orders
object fields lexicographically; nested fields follow the same rule.

`parseWire` rejects noncanonical syntax, duplicate/unknown keys (also nested),
wrong version and all dimension mismatches. `decodeWire` additionally runs the
mathematical checker. `generic_complex_json%` and `generic_complex_bundle%`
materialize parsed constructor data; `lin_cert using ()` on `wire.Valid`
independently proves checker acceptance in the kernel. `checkWire_sound` and
`decodeWire_sound` expose the formal soundness bridge. `diagnoseWire` reports
edge pairs, product triples, composite pairs, and nested Milnor failures.
`GenericFreeComplexImportTests.lean` covers malformed dimensions, rank,
products/support, coproduct support, duplicates, unknown keys, nulls and
unknown strings. `GenericFreeComplexProducerExample.lean` imports the C++
producer's n=8 S0 t<=4 fixture and proves the actual linear map squares to zero.

There are no external generator-ID/status fields in this wire format:
generators are indexed by array position. Unknown/null/string data cannot be
silently coerced to natural numbers. The integer 4294967295, if supplied as a
Milnor exponent, is a natural exponent, not an identifier sentinel; it is
subject to rank, grading, support and product checks like any other exponent.
Producer resource caps limit feasible computation and are not mathematical
axioms or an implicit interpretation of large numbers as unknown values.
The dense generic wire does not bundle unlinked exactness matrices; those
remain `WireContraction` values with exact dimensions and separately proved
`Coordinates` compatibility for `checkLinked_sound`.

## Generic homogeneous coordinate completeness

`GenericHomogeneousCoordinates.lean` proves complete finite coordinates for
arbitrary `Data rank n` and every bidegree (s,t), with no actualRows or t<=8
assumption. `componentBasisList` enumerates generator positions increasingly,
then the existing exhaustive `basis rank t` in exponentVectors order, keeping
exactly pairs with generator homological degree s and monomial weight plus
its internal degree equal to t. `componentBasis_mem` proves this exact
characterization. General exponentVectors and component-list Nodup proofs
ensure no duplicated coordinates.

`reconstructCoefficient_bounded` proves each reconstructed coefficient lies
in the finite-support ring. `extract_reconstruct` and `reconstruct_extract`
are genuine inverse identities on every homogeneous free-module element.
`componentEquiv` gives finite coordinates and `orderedComponentEquiv` matches
the precise list order required by a producer. Additive extraction and zero
compatibility are proved. These results remove the previously S0-specific
coordinate completeness obligation. The general differential-to-matrix
intertwining proof is still a separate next bridge; coordinate completeness
alone does not establish the producer's matrices or exactness.

## Actual generic differential and exactness bridge

`GenericDifferentialCoordinates.lean` proves the actual free left-module
boundary on a coordinate vector is its singleton Milnor polynomial times the
edge polynomial, in that order. It proves every reconstructed homogeneous
vector is the finite sum of its coordinate vectors. A `ComponentCertificate`
checks all source-coordinate/target-generator products with `checkAll` and
checks every output monomial belongs to the target bidegree. The resulting
`differential_reconstruct` is equality in the full finite-support free module,
including zero coefficients outside the finite coordinate basis.

`GenericComponentImport.lean` defines strict canonical JSON arrow and
component wires matching `GenericFreeComplexProducer/COMPONENT_FORMAT.md`.
The checker checks exact coordinate order/completeness, dimensions, every
product, and every matrix entry against those products. Lookup uses executable
list indexing; proof-only chosen equivalences never enter the Boolean
checker. `GenericComponentExactness.lean` proves the ordered matrix action
intertwines with the actual differential. It transports a checked contraction
to an actual homogeneous boundary witness for every actual cycle. The
coordinate and intertwining hypotheses previously required by `Coordinates`
are thus discharged for this generic input format.

At homological degree zero the explicit zero target means unaugmented chains;
a successful contraction proves incoming surjectivity. No augmentation is
inferred from this branch. `checkExactComponent_sound` covers both cases,
and `decodeComponent_sound` combines strict import with that theorem.
`GenericComponentExamples.lean` imports all 25 C++ records for 0<=s,t<=4,
proves all 24 accepted actual module exactness statements, and proves the
remaining (0,0) record is rejected by the exactness checker. This rejection is
not itself a theorem of nonexactness; the producer status is never a proof.

`GenericComponentDiagnostics.lean` locates coordinate-order errors, arrow
bidegrees/dimensions, product source columns and target generators, output
support outside the target degree, matrix entries, and contraction/square-zero
row-column failures. `GenericComponentTests.lean` rejects altered statuses,
coordinates, products, witnesses, entries, contractions, duplicate/unknown
keys, and relabeling the nonexact record as exact. The main soundness theorems
were audited with only propext, Classical.choice, and Quot.sound.

## Generic field augmentation and genuine Hom

`GenericAugmentationHom.lean` proves for every rank that evaluation at the
unit monomial is a ring homomorphism on the finite-support Milnor dual ring.
It defines the coefficient field's module action through that homomorphism,
and genuine linear Hom out of an arbitrary finite free module.
`homEquiv` identifies these linear maps with their generator values;
`bidegreeEquiv` restricts this to the generators in any specified (s,t).

`checkMinimal` checks every edge monomial has the declared rank and strictly
positive weight. `hom_differential_zero` proves actual precomposition is zero
for every genuine Hom functional when that check passes. No dimension-only
surrogate or imported Hom matrix is used.

An `AugmentationCertificate` specifies Boolean generator values with format
`{"values":[true,false,...],"version":1}`. Acceptance checks exact length,
minimality, support in bidegree (0,0), and that some value is one. The resulting
actual linear map to the coefficient field is homogeneous, annihilates the
actual boundary, and is surjective. This is a sufficient certificate for
minimal complexes; it deliberately does not accept arbitrary nonminimal
augmentation maps. `GenericAugmentationImport.lean` provides strict canonical
parse/file and string elaborators, diagnostics, `lin_cert` integration, and
soundness theorems. `exact_minimal_hom` pairs the same data's already checked
actual homogeneous exactness with its actual Hom differential theorem.

`GenericAugmentationExamples.lean` proves these properties for the actual
8-generator t<=4 data and rejects missing/all-zero/off-degree augmentation
values, zero-weight edges, null/unknown data and duplicate fields. These are
an augmented complex and its Hom facts; global augmentation-kernel
exactness, a global projective resolution, and Ext/Adams identification are
not inferred from them.

## Checked augmented homogeneous exactness and H0

`GenericAugmentedExactness.lean` supplies the missing augmented s=0
contraction check. Its outgoing matrix is recomputed from the specified
actual field augmentation: the unit coefficient of each basis monomial times
its generator value. The target has one coordinate for t=0 and no coordinates
for t>0. The incoming arrow passes the same exhaustive product, coordinate,
and matrix checks used by the generic unaugmented theory. Matrix contraction
then gives an actual homogeneous boundary witness for every vector in the
actual augmentation kernel (`checkAugmented_sound`).

`GenericAugmentedHomology.lean` defines the actual homogeneous incoming
boundary as an additive homomorphism. It proves its range equals the actual
augmentation kernel and identifies the H0 quotient by that range with the
augmentation image (`augmentedH0EquivRange`). This is componentwise and only
available for a passing certificate; it is not a global quasi-isomorphism.

The stable canonical augmented JSON fields are `version` (1), `t`,
`incoming` (the existing strict arrow structure), and flattened row-major
`up`/`down` contraction matrices. `GenericAugmentedImport.lean` provides
strict import, diagnostics with contraction row/column locations,
`generic_augmented_bundle%`, `generic_augmented_json%`, and
`lin_cert using certificate` for `AugmentedExact d augmentation t`.

`GenericAugmentedExamples.lean` checks all t=0..4 for the actual t<=4 data,
including the previously non-surjective unaugmented (0,0) component. Its
augmented contraction uses the identity on the unit, so changing this bit to
false or removing it is rejected. `GenericAugmentedImportTests.lean` imports
the concrete t=0 JSON fixture, proves the actual augmented exactness theorem,
and checks malformed/duplicate data and the unit failure diagnostic. The
fixture is a manually assembled witness checked in Lean, not a claimed new
C++ augmentation exporter. All audited theorems use only the three standard
logical axioms.
