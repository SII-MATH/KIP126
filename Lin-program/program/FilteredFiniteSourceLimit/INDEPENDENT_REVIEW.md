# Independent review of finite-source convergence

No correctness finding in `Basic.lean` or `Examples.lean`. This review covers
the general theorem, its concrete unbounded-target example, and their observed
direct compilations. It does not infer hypotheses for actual Adams filtrations.

The argument takes an actual `Fintype A`, rather than merely a finite table
of selected source classes. For every nonzero image `f(x)`, target separation
implies that some target subgroup omits it. Classical choice selects one such
depth for every source element, and the supremum over the finite source set
provides a common depth. Decreasingness has the correct direction: membership
at the supremum implies membership at each chosen depth. Zero images cause no
exception because they can use depth zero.

`kernelToSource_surjective_of_image` uses the common-depth detector on each
actual cycle representative. Its image is therefore zero in `B`, making the
representative a member of the actual kernel with the induced source
filtration. Together with the already proved injectivity, this constructs an
additive equivalence. The target factor is the actual associated graded of
`B / f(F_0)` and uses the separate condition `t+1 <= n` to include the last
possible incoming source. No source or target exhaustion is silently assumed.

The quantified conclusion is precise: one common image bound works for every
`t,n` satisfying both inequalities, and the conclusion supplies nonempty
actual additive equivalences. It does not assert that the whole target
filtration vanishes at a finite index. Finiteness of `A` is sufficient and
stronger than finiteness of the image; this does not invalidate the theorem.
No abstract page identification is supplied as an input assumption.

The example takes `A = ZMod 2` and `B = Nat -> ZMod 2`. Its target subgroup
at level i consists of sequences whose first i coordinates vanish. Membership
at every level forces each coordinate to vanish, while a spike at coordinate i
lies in level i and is nonzero. Thus every target level is nonzero and the
filtration is separated. The source is concentrated at level zero, and the
map embeds at coordinate zero; it is filtration preserving. Level one already
detects zero image. The example invokes the general finite-source theorem
without a global target-vanishing premise, as claimed.

Both direct compiler records report exit zero, and all seven printed axiom
reports contain only standard `propext`, `Classical.choice`, and `Quot.sound`.
The source and log hashes match those records. The record-audit script saves
the current object-match status without replacing the older direct hashes.
No additional finite oracle is needed for this finite-maximum argument;
source/kernel and target quotient comparisons already have separate exhaustive
finite audits. Reproduce the record check with
`python3 program/FilteredFiniteSourceLimit/independent-review.py`.
