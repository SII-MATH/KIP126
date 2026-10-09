# Finite-source separated-target convergence

`Separated G` says that an actual element lying in every target subgroup is
zero. For a finite source group, the image has only finitely many nonzero
elements. Each is excluded at some target depth; the supremum of these
finitely many depths excludes them simultaneously.

`finite_image_bound` proves this common depth exists. The entire target
group need not be finite or have a bounded filtration. At a later page,
every source cycle representative has zero actual image, giving surjectivity
of the already injective actual-kernel graded comparison. Combined with the
explicit target cokernel comparison, `finite_source_convergence` proves the
stable-page additive equivalence after both the image bound and the last
possible incoming degree.

This is an algebraic theorem with an explicit finite-source instance and
an explicit target-separation proof. Imported finite matrices do not supply
these hypotheses for the actual homotopy groups of the paper. Strong Adams
convergence and topological realization remain unproved here.

`Examples.lean` gives an actual unbounded separated target: all sequences
`Nat -> ZMod 2`, filtered by vanishing in the first n coordinates. Every
target subgroup is nonzero, witnessed by a spike. A finite source embeds
at coordinate zero; the theorem still gives convergence.
