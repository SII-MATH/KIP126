# The final target quotient as an actual cokernel associated graded

Let `f : A -> B` be the specified additive homomorphism preserving decreasing
filtrations `F` and `G`. This module defines the restricted map
`restrictedHom : F.group 0 ->+ B`, its actual image `K = f(F_0)`, and the
actual cokernel `C = B / K`. The filtration on `C` is defined directly as

```text
Q_t = image(G_t -> B -> B / f(F_0)).
```

The composite map `G_t -> Q_t -> Q_t/Q_(t+1)` is surjective and has kernel
`G_(t+1) + (f(F_0) intersection G_t)`, viewed as a subgroup of `G_t`.
This gives an additive equivalence from the final `AllTargetPage` to the
associated graded of the actual cokernel. The equivalence sends the class
of `y` to the class of the original quotient map applied to `y`; its meaning
is fixed by the input homomorphism, with no assumed page identification.

`levelQuotientEquiv` first identifies `G_t / (f(F_0) intersection G_t)` with
the actual subgroup `Q_t`. `finalSubgroup_image` identifies the remaining
relations with the actual next filtration `Q_(t+1)`. The explicit
`iteratedQuotientEquivFinal` uses the third isomorphism theorem to quotient
in these two steps, and `iteratedQuotientEquivGraded` identifies its result
with the actual associated graded.

## Conditions

The source restriction matters: `fullCokernelEquiv` requires `F_0 = A` to
replace the restricted cokernel by `B / image(f)`. The induced filtrations
are then identified under that equivalence. No such fullness is silently
assumed in the general theorem.

The target condition is separate. `G_0 = B` implies `Q_0 = C`, hence the
nonnegative filtration exhausts `C`. The quotient criterion is
`G_0 + f(F_0) = B`; because preservation gives `f(F_0) <= G_0`, this is
equivalent to `G_0 = B` in the current setting. No general filtration exhaustiveness, separatedness,
completeness, spectral-sequence convergence, or topological identification
is asserted.

`Examples.lean` uses a finite elementary abelian 2-group to demonstrate why
the conditions cannot simply be dropped: restricting the identity to a zero
source subgroup gives a nonzero restricted cokernel, while the full identity
has zero cokernel; a zero target filtration need not exhaust a nonzero
cokernel. It also instantiates the actual final-page equivalence.

## Verification

`compile.py` runs only these new leaves serially and records actual exit
codes and source/log/object hashes. All three modules completed with observed
exit code 0; the 21 printed axiom reports contain only the standard dependencies.
`assert_current.py` verifies the source, log, and object hashes against those
observations and writes `proof-review.json`; source files alone are not evidence
of completed proofs. The intended proof dependencies are only the standard
`propext`, `Classical.choice`, and `Quot.sound`, with no custom axiom or
admitted proof. No certificate or C++ output is involved in this algebraic
identification theorem.

`review.py` independently checks finite groups as sets and cosets. The
exhaustive part checks all 2,641 homomorphism/filtration candidates in
dimensions 0--2; 1,429 preserve the filtrations, giving 2,858 graded-level
checks. Another 2,000 reproducible examples in dimensions 1--4 give 4,000
level checks. Exhaustive cyclic groups of orders 1--8 provide another 2,960
preserving maps and 5,920 level checks. It checks the kernels, actual quotient bijections and addition,
the iterated quotient, the image of the relations, and the fullness and
exhaustion conditions. These finite checks supplement the Lean proofs;
`oracle-review.json` does not represent proof-kernel verification.

The initial failed elaboration log is retained as `Basic.failed-*.log`; it
is excluded from the successful proof reports. The corrected final source
and all three final compilations contain no admitted proof.

```bash
python3 program/FilteredMapCokernelGraded/compile.py
python3 program/FilteredMapCokernelGraded/review.py
python3 program/FilteredMapCokernelGraded/assert_current.py
```
