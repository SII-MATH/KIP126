# Independent stable-extension completeness review

No correctness finding in `Basic.lean` or `Search.lean`. The equivalence is
for the unchanged `FilteredCrossingCertificates.ResultValid`: the existing
raw-cycle extension result together with absence of the specified quotient
crossings. The proof uses the actual well-formedness witness to obtain the
whole higher-source image condition. Conversely that condition establishes
absence of crossings for every well-formedness proof of the fixed data; the
underlying filtrations and maps do not vary with those proof witnesses.

Certificate existence then follows from complete extension certificates and
a factor matrix for the complete higher-source subgroup. No basis-rank or
selected-generator restriction is introduced. The all-representatives
criterion retains the extension premise needed for its equivalence; it is
not inferred from absence of crossings without an extension event.

The finite search enumerates every existing extension certificate together
with every stability factor matrix. The proved list coverage and unchanged
checker give both directions of search failure and existence. The tactic
reduces this finite search in the kernel. It is exponentially expensive and
is correctly described as a reference search, with no C++-producer
completeness claim.

The independent scalar audit checks all 672 input cases of depths 0--2 and
both source/page indices 0--1. Certificate-field existence agrees with direct
quotient semantics plus whole-subgroup stability and with the stated
all-representatives condition: 133 accepted, 539 rejected. Four inputs have
the ordinary extension result but fail stability, including the same pattern
as the Lean corrected example. It is therefore correct that the stable
semantics is strictly stronger.

Both observed direct compilations have exit zero; 4+7 = 11 standard-only
axiom reports and the source/log/current object hashes match their records.
Failed development logs are excluded. The audit script shared with the
square completeness review is
`program/FiniteFilteredSquareCertificateCompleteness/independent-review.py`;
its results for this module are in `independent-review.json`.
