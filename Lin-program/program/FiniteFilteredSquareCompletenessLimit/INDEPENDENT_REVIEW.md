# Independent review of the square completeness counterexample

No correctness finding in `Counterexample.lean`. The old square `ResultValid`
requires the length bound, well-formed filtered commuting square, and only the
fourth `HasExtension` conclusion. It does not require the first named input
x to lie in its claimed filtration subgroup or require the three antecedent
extensions and stability conditions.

The constructed data has all four ambient vector spaces one-dimensional but
all filtration subgroups zero, represented by empty generator matrices. All
maps are zero, so the entire filtered commuting square is well formed. All
page indices are zero, y and w are zero, and the fourth extension is the
actual zero equation. Thus the old result is true. The first named input
x is nonzero, so every certificate's mandatory memberX equation is
false = true. The proof extracts precisely that equation from the checker;
it does not misuse soundness contrapositively or assume a failed search.

Consequently there is no accepted certificate for this input, and the
universal completeness claim for the old fourth-result-only semantics is
false. This is compatible with a sound certificate method and with
completeness for its stronger explicit premises. A failed square-method
search cannot be used to refute the fourth extension alone.

The independent scalar oracle reproduces the named counterexample and finds
3,047 true-fourth-result/no-certificate cases among 38,817 tested inputs.
The successful direct compilation has four standard-only axiom reports, with
matching source/log/current object hashes. See `independent-review.json` and
the shared script at
`program/FiniteFilteredSquareCertificateCompleteness/independent-review.py`.
