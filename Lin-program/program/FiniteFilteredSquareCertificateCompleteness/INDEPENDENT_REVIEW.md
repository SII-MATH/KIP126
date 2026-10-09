# Independent review of completeness for square-method premises

No correctness finding in `Basic.lean`. `Premises D` is a mathematical
proposition formulated with actual subgroups and additive maps, not a
rephrasing that assumes certificate acceptance. It contains exactly the
structure, length, four memberships, three antecedent extension relations,
either first whole-subgroup stability branch, and final whole-subgroup
stability required by the existing checker.

The forward theorem extracts all of those conditions from an accepted
certificate. The converse constructs the eight complete filtration-factor
families from whole-subgroup preservation, the four membership preimages,
three representative/correction triples, and the two stability factors.
Commutativity is evaluated on unit vectors to recover the full matrix square.
The first-stability disjunction selects its corresponding tagged certificate
branch; neither branch is replaced by an unproved assertion about a named
representative. Zero dimensions and redundant generators remain supported.

`check_exists_iff` is therefore an equivalence with `Premises D`, not with the
old fourth-extension-only `ResultValid D`. `premises_result` uses established
checker soundness to obtain that weaker conclusion. The separately checked
counterexample shows why the distinction matters. No whole-square search
failure theorem against the weaker result is asserted, and no completeness
of the external producer is inferred.

The independent oracle checks 38,817 scalar square inputs: exhaustive maps,
flags, named vectors and length parameters for depths zero and one, plus
4,000 seeded depth-two cases and the explicit counterexample. It compares
actual subgroup and extension semantics with independent existence searches
for every certificate factor, membership, representative and stability
field. The fields are independent once fixed data is chosen, so their
factorized existence test is equivalent to enumerating the complete product
of certificate fields. All cases agree: 1,095 accepted and 37,722 rejected.
Every accepted input has the fourth extension, while 3,047 inputs have that
fourth extension without a square certificate.

The observed direct compilation reports exit zero and six standard-only
axiom reports; source, log, and current object hashes match the record. The
script also validates the related stable-extension and counterexample
modules and writes their separate review JSON reports. It never changes any
Lean source or direct compiler evidence. Reproduce with
`python3 program/FiniteFilteredSquareCertificateCompleteness/independent-review.py`.
