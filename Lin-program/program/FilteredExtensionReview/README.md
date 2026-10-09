# Independent filtered-extension certificate review

This review is independent of the Lean certificate implementation. Its Python
oracle uses integer bitsets and explicit finite subgroup closure; it imports
neither the producer's Gaussian elimination nor its existing test oracle.

## Semantic review

`FilteredExtensionCertificates.Basic` fixes the entire input map, both complete
filtrations, the source vector, the result vector, and the two indices in
`Data`. A filtration level is the range of its generator matrix, including all
linear combinations. After the explicit depth, the subgroup is zero by the
input format definition. Unknown or omitted levels cannot enter this model.

The checker verifies factorizations for every filtration level, proving both
descending subgroup chains and filtration preservation on the whole generated
subgroups. It separately checks the source, image, and target memberships.
Its final correction witnesses establish an extension between the actual
higher-source and higher-target cosets.

`ResultValid D` asserts the equation of the actual quotient differential of
`FilteredMapExtension`, applied to these exact input vectors. The existential
`WellFormed D` contains only decreasingness and preservation proofs about the
already fixed groups and map; it contains no asserted quotient equation and
cannot select a different model. The soundness theorem applies the previously
proved equivalence `differential_eq_iff_leading_extension`. Proof irrelevance
allows its quotient equation to be projected with any proofs of the same
well-formedness and memberships.

The wire wrapper retains the complete decoded input in its proposition.
The importer produces literal `WireCertificate` data, then the tactic uses
`CertificateVerifier.sound` with kernel reduction of `check = true`.
Importer diagnostics are only a preliminary filter. Neither their evaluation
nor JSON parsing produces a mathematical proof. Canonical JSON comparison
rejects unknown, duplicate, and noncanonical fields; matrix/vector dimensions
are checked again when decoding. Empty physical lines and CR characters are
errors with physical line numbers. Lean dimensions are arbitrary naturals;
the producer's bound of 64 is an operational limit rather than an assumed
mathematical fact.

## Independent replay

Run:

```sh
python3 program/FilteredExtensionReview/review.py
python3 program/FilteredExtensionReview/compile.py
python3 program/FilteredExtensionReview/compile.py Nonzero
```

The replay verifies all 604 accepted wires against the actual finite quotient
relation

```
f(x)+y in G_(s+n+1) + f(F_(s+1) intersect inverse_image(f,G_(s+n))).
```

It then flips every Boolean field individually: 8,902 mutations. Of these,
5,457 preserve valid witnesses and are accepted; 3,445 are rejected. There
are 1,169 altered inputs whose mathematical proposition is false, and every
one is rejected. Accepted changes to redundant generator coordinates or
witnesses are permitted because they still satisfy the equations.

The named correction example has a nonzero source class and raw image one,
but a nonzero higher-source correction changes its image to zero. The named
nonzero example has target numerator `{0,1}` and relation subgroup `{0}`, so
its indicated target class is nonzero. These checks use the finite input
groups directly. The Python results are regression evidence, not proofs.

`negative.jsonl` retains 112 representative rejections, selected from every
one of the 14 mutable field categories. `Negative00.lean` through
`Negative13.lean` import these literal data without the positive importer's
preliminary acceptance filter and prove that every one has
`checkWire = Except.ok false` by kernel reduction. `Negative.lean` combines
these results into the whole 112-record statement. `Nonzero.lean` fixes an
independent input map and imports the nonzero fixture's witnesses, proves
its actual quotient differential equation, and additionally proves the
source class, differential, and target class are nonzero.

All 17 current review leaves compile successfully and print 146 axiom reports,
containing only the standard `propext`, `Classical.choice`, and `Quot.sound`.
The compile records report observed exit codes and hashes of source, external
inputs, logs, and objects. Historical interrupted builds and proof-development
errors remain recorded separately and are not successful proof evidence.

The original importer constructed an intermediate dependent list of decoded
matrices, causing repeated kernel expansion and high batch memory use. The
repaired importer still checks the exact depth and every flattened matrix
length, then returns coordinate lookup functions over the original bit lists.
Each `Fin` coordinate is within the checked bounds. The semantic model and
all soundness conditions are unchanged. Current review proofs use this
repaired importer.

## Limits

This review establishes no equivalence with a topological spectrum, the
paper's ESS, or its Kervaire conclusion. The finite filtration is completely
specified by input generator matrices; the origin and mathematical adequacy
of those matrices require separate theorems. A valid quotient equation need
not be an essential or nonzero differential. No SHA digest, Python result,
or C++ output is used as a Lean theorem.
