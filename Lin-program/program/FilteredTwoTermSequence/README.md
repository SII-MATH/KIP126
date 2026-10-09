# Constructed two-term filtered page system

The input is an actual filtered additive homomorphism `f : A -> B` and two
decreasing filtrations indexed by nonnegative integers. One stem is fixed;
the displayed filtration degree `t` corresponds to paper bidegrees with a
fixed difference of internal and filtration degrees. Both source and target
summands are kept, including at differential length zero.

For each page length `n` and filtration degree `t`, the actual additive group
is defined by

```text
Page(n,t) = SourcePage(t,n) x AllTargetPage(t,n)
d_n(a,b) = (0, [f(a)]) in Page(n,t+n).
```

The source and target groups are the concrete subquotients already constructed
from the whole filtered groups in `FilteredMapExtension` and
`FilteredMapGradedComparison.AllTargets`. The target group is defined at
every degree, including `n>t`. For `n<=t`, the incoming map is exactly the
degree-transport of this same differential from degree `t-n`. For `n>t`
there is no incoming source; the map is explicitly zero. Natural subtraction
does not create a spurious differential from source degree zero.

`pageD_square_zero` proves that two successive differentials compose to zero:
every image has zero source component, and the next differential vanishes
on its target component. `incomingPage_is_pageD` binds the incoming map to
the same outgoing differential. `PageHomology` is literally the kernel of
the outgoing page map modulo the image of the entire preceding page map,
lifted into that kernel.

`Algebra.homologyEquiv` constructs, for arbitrary two-term additive maps, the
isomorphism between this kernel/image quotient and the source kernel times
target cokernel. `homologyEquivNext` composes that isomorphism with the proved
next-source/kernel and next-target/cokernel equivalences. Thus every page's
homology is the next page; the equivalence is constructed from the concrete
maps and is not a field assumed of an abstract spectral-sequence record.

The target proof includes source degree zero at `n=t`, and the absent-incoming
case `n>t`. In the latter case its relation subgroup is already stable, so
target advancement is injective as well as surjective. Source advancement
still uses its actual kernel; no assertion that the entire page is stable
is inferred from target stability.

`initialPageEquiv` identifies the whole length-zero page with
`Graded(F,t) x Graded(G,t)`, and `initial_differential_commutes` identifies its
differential with `(a,b) -> (0, gr(f)(a))`. These are the initial-page and
homology-recursion data for the bounded-below two-term filtered-map spectral
sequence underlying Definition 2.1.

## Bounds and convergence

The support convention is nonnegative filtration. All earlier target
relations stop enlarging after inclusion of `F_0`, giving final relations
`G_(t+1) + (f(F_0) intersect G_t)`. Interpreting these as the associated
graded cokernel of the entire map requires `F_0=A`; interpreting the whole
target filtration as exhaustive also requires `G_0=B`. Neither is assumed
by the page construction. Source convergence further needs hypotheses
ensuring compatible representatives can be chosen in the infinite
intersection, such as an appropriate bounded or complete filtration.
No convergence theorem is asserted here.

This is a concrete algebraic page system with proved differential and
homology transitions. A conversion to mathlib's categorical
`CategoryTheory.SpectralSequence` record, and the identification with Adams
filtrations of actual homotopy groups and their strong convergence, remain
separate tasks. No synthetic spectra or Kervaire topological conclusion is
claimed.

## Verification

```sh
python3 program/FilteredTwoTermSequence/compile.py Algebra Basic Homology
python3 program/FilteredTwoTermSequence/review.py
```

The independent literal finite-group model checks full page kernels,
incoming image cosets, and the induced additive maps, not just dimensions.
On 3,649 filtered F2 squared maps, including 2,470 with a nonexhaustive source
or target filtration, it checks 121,454 square-zero equations and 112,544
homology classes across 72,980 next-page isomorphisms. It also checks 245,870
additivity equations, 14,596 initial pages, 14,596 final source-zero incoming
cases and 36,490 absent-incoming stable target cases.
Direct compilation records bind source/log/object hashes and
retain failed development logs separately. Hashes are provenance only;
Lean's kernel checks all successful proof terms.

All three Lean leaves compile with observed exit code zero. Their 14 axiom
reports contain only `propext`, `Classical.choice`, and `Quot.sound`; no
custom axiom, `sorry`, or native evaluation is used. Archived failed logs
are development history and do not count as successful verification.
