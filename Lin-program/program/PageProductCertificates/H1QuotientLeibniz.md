# Local Leibniz on the finite quotient

H1QuotientLeibniz uses the two checked tensors from ActualH0 to construct
actual quotient multiplication maps. Multiplication by the h0 class on the
fourth-power quotient is proved injective by the checked target comparison;
its zero preservation is proved. Multiplication of h0 with every h1 quotient
class is proved zero, independently of a differential.

The final theorem accepts two local differential maps, zero preservation,
and the commuting square dProduct(h0*x)=h0*d(x) for every h1 class. It proves
d(h1)=0, indeed that d vanishes on every h1 class. It no longer needs a ring
valuation or BoundaryFaithful. The commuting square is the remaining genuine
Leibniz premise after d(h0)=0 in the empty target; it is not extracted from
NULL or a proof-log string. Linearity is not needed for this implication
beyond the explicitly required zero preservation.

Source/target complexes are fixed at the actual degrees by construction;
all five product/d3 degree arithmetic equalities are checked. This does not
supply an Adams comparison or a globally defined d3. The module compiles
with Lean -j1 and uses no new axiom.
