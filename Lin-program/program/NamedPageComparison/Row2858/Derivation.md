# General derivation bridge

Derivation.lean defines a characteristic-two graded derivation on an arbitrary
commutative ring. The degree predicate is closed under zero/addition/products,
d shifts degree by(page,page-1), and Leibniz holds for every pair of homogeneous
elements. annihilator_rule is proved from these general laws: if xy=0 and
dx=0, then x*dy=0. No particular candidate differential is an axiom.

h1_compatible_from_derivation applies the rule using actual h0*h1 and
h0*h0^4 product certificates. A separate BoundaryFaithful comparison states
that interpretation vanishes exactly on the full finite boundary image.
The actual d2 comparisons establish the finite image, but identifying it with
a genuine page in an arbitrary ring remains explicit. Thus relation-vanishing
is never incorrectly promoted to basis independence.

Assemble.lean similarly derives all three row2858 compatibility conditions,
then applies the proved exhaustive exclusion. actual_multiplication_g/h1/h3
supply its matrix premises from the checked polynomial certificates, all
expressed in the same source basis. The factor cycle premises can be supplied
by h1_zero_from_derivation and zero_target_forces_zero; the latter requires an
explicit page-realization argument for the empty degree. This is a composable
conditional mathematical theorem, not an unconditional Adams d3 claim.

Both modules compiled directly with Lean -j1, exit0. No existing module changed.
