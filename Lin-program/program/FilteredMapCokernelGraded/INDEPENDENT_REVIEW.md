# Independent review of the actual cokernel associated graded

No correctness finding in the three Lean modules after source review.
`restrictedHom` restricts the given actual additive map to `F_0`, and the
cokernel is literally `B / f(F_0)`. The level map sends the original target
representative to this quotient, and the graded map then takes the quotient
by the next induced filtration subgroup. The class formulas fix the meaning
of both maps; no page equivalence is assumed as input data.

The kernel calculations are exact: the level kernel is `f(F_0) intersect G_t`,
and the graded kernel is `G_(t+1) + (f(F_0) intersect G_t)`. The latter subgroup
lies inside `G_t`. Surjectivity supplies the first-isomorphism equivalence;
the iterated quotient theorem supplies the explicit third-isomorphism
comparison. The stabilized all-target relation subgroup agrees with these
relations, including all of `F_0` and no part of the map outside `F_0`.

The full cokernel identification assumes `F_0 = A` as a sufficient condition.
It is not claimed as necessary: a smaller `F_0` could still have the full
image. The induced filtration is exhaustive exactly when `G_0 = B` in this
setting, because preservation implies `f(F_0) <= G_0`; quotienting therefore
cannot fill the missing part outside `G_0`. The proof of exhaustiveness uses
the nonnegative decreasing convention to reduce every level to level zero.
The two explicit finite examples correctly demonstrate the danger of dropping
these conditions.

The independent audit script constructs finite abelian groups and literal
nested cosets, using cyclic groups and products (including non-elementary
abelian groups). Its seeded random filtrations may have proper zeroth source
or target groups. It checks actual quotient kernels, the image of final
relations, the full graph of each quotient bijection, additivity, the iterated
quotient, stable target relations, and the exact exhaustion criterion. Counts
and source/log hashes are recorded in `independent-review.json`. All 6,000
cases pass: 24,000 graded quotient bijections, 716,382 additive equations,
72,000 stable-target relation checks, and 1,460 cases where the restricted
image differs from the full image. There are 3,893 proper zeroth source
subgroups and 586 proper zeroth target subgroups.
The original producer's `review.py` is a separate oracle and is not reused
in this independent implementation.

The observed direct records for `Basic`, `Conditions`, and `Examples` all have
exit code zero and respectively 9, 8, and 4 standard axiom reports. Failed
development logs are excluded from successful evidence. No C++ output,
certificate hash, custom axiom, or native evaluator enters these algebraic
proofs. This establishes the actual cokernel associated graded comparison;
it does not identify an Adams filtration or prove topological convergence.

The final audit ran while the parent rebuilt the newly registered modules
through Lake. Consequently the three current object hashes differ from the
older direct-build hashes. The audit records this mismatch instead of
rewriting the observed direct records; current Lake objects require their own
completed build and axiom-audit evidence.

Reproduce with
`python3 program/FilteredMapCokernelGraded/independent-review.py`.
