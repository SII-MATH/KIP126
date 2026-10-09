# Independent review of the late differential counterexample

No correctness finding in `Basic.lean`. The source is ZMod 2 concentrated at
filtration zero. For each specified late length L, the target remains all
of ZMod 2 through filtration L and becomes zero at L+1. The identity is a
filtered map. Its source class of 1 exists and is nonzero at every page length
n <= L because the higher-source correction subgroup is zero.

For n < L the higher target relation subgroup is still the whole group, so
the constructed quotient differential vanishes. At n = L the higher target
relations and source corrections are both zero, and the identity sends 1 to
a nonzero target class. `actual_page_nonzero` uses the actual constructed
full page map and its proved local comparison; it is not an arbitrary
operator supplied as data. The target filtration is finite and bounded in
every example.

`arbitrary_finite_prefix` quantifies correctly: for each cutoff it chooses
the filtration with L = cutoff+1. It does not claim a single bounded
filtration has infinitely many late nonzero differentials, or that the
example contradicts convergence after a known actual filtration bound.
It proves the absence of a uniform permanence inference from a finite zero
prefix without additional hypotheses or a known bound. Its final theorem
packages the local differentials; separate theorems establish nonzero source
classes and the full-page interpretation.

The independent oracle reconstructs literal source and target quotient
classes for L = 0 through 64. It checks 2,145 nonzero source classes, 2,080
zero earlier differentials, and 65 nonzero late full-page maps. The observed
direct compilation is successful with five standard-only axiom reports.
Source/log hashes match; the script records the current object-match status
without rewriting direct evidence. No topological inference is made.

Reproduce with `python3 program/FilteredLateDifferential/independent-review.py`.
