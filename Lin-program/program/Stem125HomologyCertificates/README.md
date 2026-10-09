# Whole-combination stem125 homology certificates

The complete finite d2 comparisons at all 45 recorded nonzero stem125 E2
centers give an additive bijection from the product of their actual
cycle/boundary quotient types to 44 F2 coordinates. This is a statement
about every linear combination, not a subtraction of 95 named events from
105 inventory rows.

| Checked differential | Centers | Input coordinate count | Homology coordinate count | Scope |
| --- | ---: | ---: | ---: | --- |
| d2 | 45 | 105 | 44 | All 45 centers in the imported nonzero E2 inventory |
| d3 | 28 | 37 | 23 | Only the supplied 28-center subproduct |
| d4 | 9 | 9 | 2 | Only the supplied 9-center subproduct |

`D2.equivalence` has type `D2.WholeHomology ≃ Vec 44` and
`D2.cardinality` proves that this quotient product has cardinality `2^44`.
`D2.preserves_addition` uses addition defined on cycle representatives,
proved independent of representative choice in `PageTransitionCertificates`.
Together with bijectivity, it represents the whole elementary F2 vector
space, including all sums of basis classes. This library states a coordinate
count and exact cardinality rather than installing a new Mathlib `Module`
instance and asserting a `Module.finrank` theorem.

## Exact input binding

`D2.wires` reuses the 45 existing `AggregateD5Conditional.Data` comparisons
and their proved `_complete` theorems; no matrices are regenerated or
replaced. `D2.exact_input_dimensions` binds each wire's input dimension to
the corresponding entry of `AggregateTargetInventory.Aggregate`.
`D2.staircaseToInput` uses all 45 already checked basis changes and their
inverses. Every input vector has unique staircase coefficients, including
the nontrivial combination rows. `D2.inputEquivalence` identifies the full
input product with 105 F2 coordinates.

The independently replayed SQL inventory contains precisely those 45
nonzero groups and 105 basis rows within the imported database. There is no
claim here that the finite database proves vanishing in every unrecorded
bidegree of an actual Adams spectral sequence.

## Later pages and missing data

`D3.previousHomologyEquiv` and `D4.previousHomologyEquiv` bind each chosen
input group to the quotient coordinates of the same center at the preceding
page. Their index maps are injective. Their `equivalence`, `cardinality`,
`represented`, and `coordinates_distinguish` theorems concern only these
explicit subproducts.

The d3 snapshot lacks five centers whose d2 homology is nonzero:
filtrations 9, 34, 36, 45, 57, of dimensions 3, 1, 1, 1, 1. This leaves
7 E3 coordinates outside the checked d3 subproduct. In particular, 23 is
not the full E4 coordinate count. Some additional missing centers already
have zero d2 homology, but this library does not fabricate their incoming
or outgoing matrices.

The d4 snapshot lacks nine centers with nonzero homology among the provided
d3 blocks: filtrations 13, 14, 15, 16, 21, 22, 25, 46, 49, with total
coordinate count 14. It also inherits the earlier d3 gaps. Therefore 2 is
not the full E5 coordinate count. `coverage.json` lists every missing
center, its known preceding count when available, and the recorded reason.

## Checker and tactic

```lean
example : Nat.card (TotalHomology D2.wires) = 2 ^ 44 := by
  stem_homology_cert using ()
```

`checkTotal` checks every full matrix comparison and the sum of all
homology coordinate dimensions. `checkTotal_sound` proves the resulting
cardinality theorem. `diagnoseTotal` reports `center[index]` and the failed
matrix law or a requested-count mismatch. Each D2/D3/D4 module includes a
successful batch tactic application and rejection of an incorrect count.
Individual matrices retain the canonical `page_comparison%` import and
`page_comparison` exporter workflow documented in `PageTransitionCertificates`.
The generated bindings here reference the already imported, checked records.

## Mathematical premises and trust boundary

The conclusions concern the imported finite complexes. Applying them to
actual Adams pages requires the full coordinate interpretation of their
incoming, outgoing and quotient maps. In particular, seven d2 source
columns are raw NULL in the basis table and use explicit
`conditional_d2_staircase` interpretations for rows 6651, 7007, 6893, 7162,
7008, 7247 and 7163. `review.json` records each exact occurrence and its
staircase evidence without changing NULL into an observed zero.

Later pages also retain their stored differentials, prefix interpretations,
conditional product/naturality statements, and other dependencies. The
review records the complete dependency closure and kinds for each selected
subproduct. No choice of a missing differential, future permanence,
convergence, stable homotopy identification or complete Kervaire theorem
follows from these finite cardinality statements.

C++/Python, SQL and digests are data handling and independent regression
evidence. Lean rechecks the matrix identities and the kernel checks the
quotient equivalence and checker-soundness proofs. No `sorry`, custom axiom
or `native_decide` is used; printed axiom reports contain only `propext`,
`Classical.choice`, and `Quot.sound`.

## Reproduction

Run from `program/`:

```sh
python3 Stem125HomologyCertificates/generate.py
python3 Stem125HomologyCertificates/compile.py
python3 Stem125HomologyCertificates/review.py
python3 Stem125HomologyCertificates/assert_current.py
```

Generation is deterministic and only changes this directory. The four
modules compile serially with recorded actual exit code 0. The independent
review checks 82 complete comparisons, all 2302 pairs of local cycles,
187 local boundary cosets, 216 known SQL d2 columns, seven explicitly
conditional NULL columns, all 105 exact basis IDs, and all missing centers.
Direct source/log/olean fingerprints are preserved in `compile-audit.json`.
A subsequent Lake build may legitimately replace direct-build oleans and
needs its own build checkpoint; historical audit hashes are not refreshed.
