# Scope of the actual S0 module complex

This review concerns `ActualResolutionRing.lean`, `ActualModuleComplex.lean`,
and the relationship to `FiniteExactness.lean`. No full-ring exactness theorem
is claimed. The existing results do not justify that claim.

## The coefficient ring is a full dual

`RankDual 3` consists of all functions from length-three exponent lists to
`ZMod 2`. Its product is convolution against the finite Milnor coproduct.
Thus infinite-support functions are admitted. It is a completed dual in the
sense of allowing arbitrary coefficients across degrees, rather than the
direct sum of finite-support homogeneous pieces. No topology or topological
completion has itself been formalized.

The rank-three restriction also matters: its coproduct uses xi_1, xi_2, xi_3.
It has not been identified with the full Steenrod algebra. The next generator
xi_4 has weight 15, which is above the verified degree bound 8, but this numeric
fact only supports degree-bounded comparison after the relevant stability
lemmas are invoked. It cannot identify unrestricted rank-three multiplication
with the unrestricted Steenrod algebra.

## What the actual module theorem establishes

`ActualFreeModule` is `Fin actualRows.length ->₀ RankDual 3`. There are 16
imported raw generators. This is a genuine free left module on those indices;
the use of Finsupp does not restrict the support of each coefficient as a
function of Milnor monomials. Since the index set is finite, it also places no
additional restriction on which generator coordinates may be nonzero.

`basisBoundary` is reconstructed from the actual raw differential records,
selecting targets by their local identifier and homological degree.
`actualDifferential` is their extension as a left-module linear map.
For `a e_i`, the output is `a` times the boundary of `e_i`. Consequently,
composition uses `a * outer * inner`, never `outer * a * inner`. No
commutativity of the coefficient ring is assumed.

`actual_pathPairs` checks that the paths in this finite generator matrix are a
permutation of those in the earlier `composeRaw`. It preserves multiplicities;
it is a check of record organization, not a second assumed product oracle.
`matrix_square_zero` follows from `actualResolutionRingSquareZero`, which
combines the checked degree-at-most-eight composition with the general
multiplication-support theorem outside that range. This proves an equality of
ring elements on every length-three monomial.

`actualDifferential_square_zero` then proves `d.comp d = 0` on the entire
free module, including coefficients with infinite support. This extension is
valid because it uses finite generator sums, associativity, and left linearity.
`differential_degree_descends` proves that any nonzero generator boundary
coordinate lowers homological degree by exactly one.

This is a differential on a free module. It is not yet a proof that this finite
module is a resolution of an augmented module, or that it is exact over the
entire coefficient ring. Adding arbitrary high-degree or infinite-support
coefficients does not make the existing low-degree contraction tests certify
new degrees. In particular the input contains only generators computed through
internal degree eight, not all generators of a complete resolution.

## Existing finite exactness result

`freeBasis actualRows s t` enumerates pairs of raw generators and Milnor
monomials with generator homological degree s and residual internal degree
`weight m + generator.t = t`. The residual monomials come from `basis 3 8`.
`freeDifferential` and `augmentedOutgoing` are Bool matrices whose entries are
recomputed from the raw records and `pairTensor` in Lean.

For all 45 tested positions `0 <= s <= t <= 8`, the accepted contraction proves
`ExactAt` for these finite Bool coordinate matrices. It is an actual linear
exactness statement in the formalized F2 matrix semantics, rather than merely
a matrix hash match. These coordinate
spaces are now identified with homogeneous subsets of `ActualFreeModule`, and this identification is now proved in `ActualHomogeneousCoordinates`.
`ActualDifferentialCoordinates` proves the intertwining equality for every
coordinate vector, including coefficients outside the enumerated basis.
`ActualHomogeneousExactness` transports the existing contractions to actual
homogeneous cycles and boundaries at every positive filtration for t<=8.
`ActualAugmentation` supplies the actual root/unit-coordinate augmentation,
an explicit homogeneous section, annihilation of the differential on every
module vector, and augmentation-kernel exactness at filtration zero for t<=8.

## Representation bridge and remaining scope

The following records the representation bridge. Steps 1, 3-7, and 9 are
now implemented by `ActualHomogeneousCoordinates`,
`ActualDifferentialCoordinates`, and `ActualHomogeneousExactness`; step 8 is
implemented by `ActualAugmentation`. Scalar coordinate transport in step 2
uses explicit Bool/ZMod 2 maps and additive/natural-scalar compatibility; a
bundled F2 vector-space equivalence is not required by these proofs.
The positive result is actual low-degree augmented exactness, not full-ring
exactness. The descriptions below specify what the implemented bridges check.

1. Define the component condition on `x : ActualFreeModule`: for every generator
   index i and length-three monomial m, `(x i) m` may be nonzero only if
   `(actualRow i).s = s` and `weight m + (actualRow i).t = t`. This is an F2
   vector subspace. It is generally not an `ActualRing` submodule, because
   multiplication by an arbitrary ring element changes internal degree.
2. Establish the scalar/vector-space structure used for this component. The
   bundled coefficient object currently has a `Ring` instance; any `ZMod 2`
   algebra/module packaging and its pointwise evaluation compatibility should
   be made explicit rather than inferred from the type's representation.
3. Show `freeBasis` has no duplicate pairs and that each listed raw generator
   identifies a unique `ActualIndex`. This uses the raw ID uniqueness checks;
   a target local ID alone is insufficient without homological degree.
4. Prove completeness of `freeBasis` for the component when `t <= 8`.
   A nonzero allowable coefficient has residual weight at most eight, and
   `basis_complete` supplies its monomial. Prove both list membership and
   uniqueness, not only the total dimension count.
5. Define extraction to a finite Bool/ZMod 2 coordinate vector by evaluation
   and reconstruction as a finite sum of singleton generator vectors with
   singleton-Milnor coefficient functions. Prove both inverses. The
   reconstruction proof must show zero on every monomial outside the degree
   condition; matching enumerated coordinates alone is insufficient.
6. Prove that `actualDifferential` preserves internal degree and sends the
   s+1 component to the s component. The existing homological-degree descent
   lemma supplies one part. Internal degree requires the raw term degree
   checks and the general multiplication-support theorem.
7. Prove an intertwining equality between reconstruction/extraction and
   `freeDifferential`. Expand one basis vector, use `pairTensor_scalar` and
   `single_product_apply`, and then extend by F2 linearity. Preserve the order
   of the scalar Milnor monomial followed by the raw differential term.
8. Handle s=0 separately. `augmentedOutgoing` uses a one-dimensional target
   only for t=0 and a zero-dimensional target otherwise. Define the actual
   augmentation and prove its component-coordinate compatibility and d-epsilon
   relation; the unaugmented module differential does not supply this map.
9. Transport each existing `ExactAt` certificate across the proved component
   equivalences and the intertwining equalities. The conclusion may quantify
   over the verified positions, including the augmented case, but must retain
   the bound t<=8. It must not quantify over all degrees or all completed-dual
   coefficients without new proofs.

The implemented bridge proves exactness of the stated homogeneous components
of this actual finite complex. A complete free resolution, its relation to
Steenrod modules, and identification of its Hom cohomology with topological
Ext still require further constructions and comparison theorems.

## Verification boundary

The module and ring-square-zero theorems were individually compiled and their
axiom reports contain only `propext`, `Classical.choice`, and `Quot.sound`.
No exporter output is used as an axiom. The generic degree-support proof is
what extends the finite coefficient checks to ring equality; the subsequent
linear-map argument is what extends generator-square-zero to all module
vectors. Neither step extends exactness to untested degrees. The new exactness
transport is explicitly bounded by t<=8 and reuses the original contraction
theorems; it does not recalculate or assume new exactness certificates. Full-project
build and regression logs are maintained by the integrating parent task.

## Actual Hom and quotient cohomology extension

`ActualAugmentationHom` defines `ringAugmentation : ActualRing ->+* ZMod 2` by
evaluation at the unit monomial. The target type `AugmentationField` uses
`Module.compHom` with this proved ring homomorphism. Consequently `ActualHom`
is an actual space of R-linear maps, not a renamed coordinate type.
`actualHomEquiv` identifies maps with generator assignments by the free-module
universal property. `actualHom_differential_zero` proves precomposition with
the actual module differential vanishes for all maps. `homBidegreeEquiv` and
`homDimensionEquiv` restrict this to maps supported at a specified generator
bidegree and provide inverse coordinate maps.

`ActualHomCohomology` packages these supported maps as additive subgroups,
defines the cochain differential using actual precomposition, and forms
`homCycles / boundariesInCycles`, with cycles the kernel and boundaries the
previous differential's image (zero in degree zero). It proves an AddEquiv
from that quotient to the generator-coordinate function space. Thus true
quotient cohomology and its additive structure are identified. A vector-space
finrank theorem, named-basis correspondence, and Ext_A comparison are not
claimed. The fact that this finite minimal complex has a zero Hom differential
in every bidegree does not extend its resolution exactness beyond t<=8.
