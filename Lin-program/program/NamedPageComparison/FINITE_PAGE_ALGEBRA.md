# Finite page algebra: interface audit and next trust boundary

## What the current interfaces prove

Derivation.GradedDerivation is a commutative characteristic-two ring with a
predicate of degrees and a differential satisfying the usual graded Leibniz
law. It is sufficient for the conditional annihilator rule. It is not yet a
spectral-sequence page: the degree predicate need not give a direct sum,
different degrees need not intersect trivially, there is no requirement
page>=2, and d*d=0 is absent. None of these omissions makes the stated
annihilator implication false, but none can be silently supplied to claim
an actual Adams page or build its next homology.

h1_compatible_from_derivation explicitly requires page3, the source degrees
h0=(1,1), h1=(1,2), and that degree(4,3) is zero. h1's candidate belongs to
(4,4) and multiplication by h0 lands in(5,5), as recorded by the five actual
d2 comparisons. The theorem requires a candidate interpretation equality,
but does not separately enforce degrees of every candidate basis vector.

row2858_from_derivation currently works for ANY page because it only needs
the abstract annihilator rule and a supplied candidate interpretation. Its
actual matrix arguments are d3-shaped; the theorem has no page3 premise and
no candidate-basis degree premises. Thus it is a valid conditional ring
statement, not a typed d3-page comparison. Any future wrapper advertising
a d3 result must supply page=3 and all degree/basis realization data. The
source is(10,136); candidate target(13,138); factors are g=(4,24), h1=(1,2),
h3=(1,8); residual targets are(17,162),(14,140),(14,146). Factor d3 targets
are(7,26),(4,4),(4,10). g and h3 target chain spaces are empty in the snapshot;
h1 has the separate conditional exclusion proved in H1Zero/Derivation.

## Faithfulness in the finite quotient is already provable

FiniteFaithfulness.quotient_zero_iff_boundary proves for every cycle that
its class in the actual finite Homology quotient equals the zero class iff
it belongs to the full incoming image. It uses the checked complete homology
comparison, not a ring-valuation independence assumption. This new theorem
compiled successfully with Lean -j1. FiniteFaithfulness.descends also
constructs a quotient map from a linear map which preserves cycles and
boundaries; its well-definedness is proved on all representatives.

This does not directly instantiate the existing BoundaryFaithful type:
that type interprets ALL chain vectors in ONE commutative ring, whereas
Homology has only cycle representatives and currently has no ring structure.
In general, demanding BoundaryFaithful on all chain vectors is stronger than
necessary. The replacement should be an interpretation of Cycle with zero
reflection derived from quotient_zero_iff_boundary, together with a checked
cycle condition for every candidate. No extra basis independence is required.

## Constructing a finite graded page algebra

A trustworthy implementation should carry degree-indexed complete d2
complexes and their checked quotient comparisons. The page carrier is the
direct sum of their Homology spaces (or, equivalently, their checked homology
coordinate spaces). Products must be bilinear maps for EVERY covered pair of
degrees. The present g/h1/h3/h0 matrices describe fixed-factor multiplication
only and cannot by themselves define a whole ring product.

For a proposed bilinear product, check that products of cycles are cycles,
that boundary*cycle and cycle*boundary are boundaries, and that its values
have the sum degree. These finite identities permit quotient descent in
both variables. Then check associativity, commutativity and the unit on
basis inputs; extend by bilinearity. The previous polynomial valuation
identities give a semantic comparison, but do not alone prove these maps
preserve the d2 boundary quotient. FiniteFaithfulness.descends provides the
single-linear-map portion without assuming any ring realization.

Truncation needs a proof or an explicitly declared truncated algebra.
Missing degrees cannot be assigned zero merely because they were not loaded.
The 36 predecessor comparisons do not form a degree set closed under all
products. A finite truncation quotient is legitimate only after checking the
omitted range forms an ideal, or theorems must stay in a local partial
multiplication interface with all required triples present.

A d3 map on this finite page then needs degree shift, linearity, square-zero,
and Leibniz checked against these products. One can impose these as explicit
mathematical conditions and derive candidate elimination, or solve a finite
system and certify that every solution has the claimed coordinate. Defining
the missing d3 entries to zero and checking the resulting matrix proves only
that a chosen model exists; it does not prove the actual differential has
those values. Uniqueness over all compatible candidates is the relevant
certificate target for row2858.

## Remaining obligations and honest completion criterion

The finite quotient zero-reflection and linear quotient descent are now
proved. A complete finite graded multiplication tensor, its quotient descent,
its ring laws and a compatible d3 family are not yet constructed. Therefore
BoundaryFaithful cannot presently be discharged by simply changing the ring
to a direct sum, and the row2858/H1Zero conditional theorems do not yet become
unconditional finite-page theorems. Even after all these algebraic steps,
comparison with actual Adams pages, products and differentials remains an
external mathematical theorem; the database and proof logs do not supply it.
