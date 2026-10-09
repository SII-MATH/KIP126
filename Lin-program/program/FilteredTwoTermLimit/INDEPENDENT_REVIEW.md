# Independent review of the bounded two-term page limit

No correctness finding in `Basic.lean` after source review and an independent
finite coset replay. The theorem assumes a genuine subgroup equality
`G.group q = bot`; its two inequalities serve different purposes:
`q <= t+n` forces every source cycle to lie in the actual kernel, while
`t+1 <= n` includes the last incoming source degree zero in target relations.

The source comparison uses the full map's actual kernel with the filtration
induced by `F`. It does not assert that this filtration exhausts that kernel.
Since `F_t` lies inside `F_0`, its associated graded also agrees with the
kernel of the restricted map. The target comparison is explicitly the actual
cokernel `B / f(F_0)`. Source fullness is not assumed or inferred. The separate
fullness and exhaustion hypotheses in the cokernel module remain necessary
for their stronger interpretations.

The stable differential theorem correctly needs only the source inequality:
its representatives already map to zero in `B`, hence the concrete page map
is zero. The explicit choice `n = q+t+1` satisfies both inequalities for every
fixed degree. This is a finite bounded algebraic statement; there is no
assumed page equivalence, no identification of Adams filtrations, and no
inference of topological convergence from imported finite data.

The independent `independent-review.py` checks all 3,649 filtration-preserving
maps of F2 squared with every nonnegative four-step filtration ending in zero,
including proper zeroth subgroups. It verifies 154,347 actual source-kernel
and zero-differential cases, 115,769 literal product-page quotient bijections,
and 22,648 instances of the explicit page bound. The script additionally
checks the observed successful direct compile record, source and log hashes,
and all four axiom reports against the standard allowed dependencies. At
review time the current object matched that direct compilation.

These finite checks supplement the general Lean proofs. The archived failed
development log is not used as proof evidence. Reproduce this review with
`python3 program/FilteredTwoTermLimit/independent-review.py`.
