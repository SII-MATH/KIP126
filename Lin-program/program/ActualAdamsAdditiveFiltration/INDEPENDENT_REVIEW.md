# Independent additive-filtration review

No correctness findings in `Basic`, `Subgroups`, `Quotient` or
`Counterexamples`.

`AddMeaning` supplies an actual equality for every pair of cycle
representatives under the supplied quotient-to-next-page map. Applying
it to zero plus zero derives `ZeroMeaning`; a type equivalence alone is
never used to infer zero or addition preservation. `advance_add` is
restricted to cycles. The induction for `cycles_add_and_at` maintains
both cycle membership and the addition equation at each earlier page,
so the arbitrary extension of advance to noncycles causes no gap.

Both `Z` and `B` are actual `AddSubgroup` structures. The boundary group
uses exactly cycle membership and a zero recursive image. Characteristic
two supplies negative closure and identifies equality of recursive images
with boundary membership of the sum. The subgroup inclusion and monotonicity
directions agree with the decreasing cycles and increasing boundaries.

`image` is an additive homomorphism whose surjectivity is derived from
full actual homology identifications and whose kernel is exactly `B`.
`quotientAdd` transports actual page addition, and `quotientAdd_mk` proves
the representative addition formula. That formula is not assumed in the
quotient construction.

Independent finite checking covers all 70 three-transition filtered
quotient chains in F2^2 and all 40320 permutations of F2^3. Exactly 168
permutations preserve addition, all fixing zero. Of 5040 permutations
fixing zero, 4872 fail addition. The Lean counterexample swapping e0/e1
and testing e0+e2 is one such case. A separate finite check confirms that
zero extension of a cycle map need not be additive on noncycles.

All four direct builds have exit code zero and 16 standard-only axiom
reports. Source, log and object fingerprints matched at review time; the
detailed record is `independent-review.json`. Actual paper spectra,
named classes, the `AddMeaning` realization and convergence remain
mathematical obligations.
