# Restricting the actual complex to the finite-support ring

`MilnorCertificates/FinitePolynomialAlgebra.lean` now supplies the strict
coefficient-ring bridge. `finitePolynomial rank p` is an element of the
proved `FiniteGradedDual rank` subring, not merely a full-dual function with
an informal finite-support label. `finitePolynomial_mul` translates every
`IsMilnorProductAll` result to equality in that ring. Its underlying
multiplication is the same coproduct convolution as `RankDual`.

`finitePolynomial_sum_products_zero` is the reusable square-zero bridge:
for any finite list of pairs of polynomial lists, zero of the corresponding
sum of products in the full dual implies zero of the finite-ring sum.
This follows from the injective subring inclusion and its compatibility with
addition and multiplication. It preserves repeated terms and does not invoke
commutativity of multiplication.

For the actual complex, each `edgeCoefficient i j` is a finite sum of singleton
polynomial coefficients from `edgeTerms i j`. Consequently one can define
`finiteEdgeCoefficient i j` by the same list sum with `finitePolynomial 3`.
The needed inclusion equality follows by list induction (or the subring
inclusion RingHom). The finite matrix square then follows by mapping its
finite sum to `matrix_square_zero` and using injectivity. No new Milnor product
or square-zero computation is required.

`ActualFiniteModule.lean` now implements the free-module construction
`Fin actualRows.length ->₀ FiniteGradedDual 3`, with the same boundary on basis
vectors and `Finsupp.linearCombination` extension. The previous finite-matrix
argument proves its linear differential squares to zero. A coefficientwise
inclusion into `ActualFreeModule` is injective and intertwines these two
differentials. The proved theorems are `finiteModuleInclusion_injective`,
`finiteModuleInclusion_smul`, `finiteBoundary_inclusion`,
`finiteDifferential_inclusion`, and `finiteDifferential_square_zero`. The
inclusion is packaged as an additive map with an explicit scalar compatibility
law, because its source and target use different scalar rings.

Low-degree homogeneous vectors and their reconstructed witnesses have finite
Milnor support, because their possible coefficients lie in finite exact-degree
bases and there are only 16 generator coordinates. To transport the already
proved low-degree exactness to the finite-ring module, prove that both the
cycle and the witness lie in the coefficientwise inclusion image, then reflect
the differential equality through that injection. The existing homogeneous
coordinate reconstruction supplies the expected finite witnesses, but an
explicit module inclusion/lifting theorem is still needed.

These restrictions remove the infinite-support coefficient issue for the
new finite-ring carrier. They do not identify rank-three multiplication with
the full Steenrod algebra, remove the t<=8 exactness bound, or prove an
Ext_A comparison. The direct limit across ranks and its topological
identification remain separate work.

## Implemented homogeneous witness lifting

`ActualFiniteExactness.lean` now implements the previously outstanding lift.
`homogeneous_coordinate_finite` bounds every coefficient of a homogeneous
module vector by its total internal degree. `liftHomogeneous` packages these
same coefficient functions into the finite-support subring;
`liftHomogeneous_inclusion` proves its inclusion is the original vector.

`finitePositiveHomogeneousExactness` and
`finiteAugmentedHomogeneousExactness` lift the already-proved witnesses and
reflect the differential equalities through the injective inclusion. They
retain t<=8 and do not recalculate contractions. The finite augmentation also
annihilates the boundary and is surjective, with its section obtained by the
same homogeneous lift. Thus witness lifting is implemented; the limitations
on higher degrees, cross-rank identification, and Ext_A remain unchanged.

ActualFiniteHom now supplies the finite-ring augmentation module and genuine linear Hom. Its actual precomposition differential is zero, and its kernel/image quotient has additive equivalences to the earlier full-dual Hom quotient and generator coordinates. This is a proved comparison of the two explicit Hom constructions, not a scalar-extension theorem or an Ext identification. The file compiled directly and awaits integration in the next full build.

## Degree-indexed projective chain object and augmentation

`ActualDegreeComplex.lean` decomposes the actual free module by homological
degree. Its boundary intertwines with the original actual differential and
squares to zero. `ActualDegreeExactness.lean` transports positive and augmented
homogeneous exactness to these modules, retaining the bound t<=8.
`ActualProjectiveComplex.lean` packages them into an actual `ChainComplex` in
`ModuleCat ActualFiniteRing`, and proves every object projective from its
explicit free basis.

`ActualChainAugmentation.lean` packages the same augmentation into a linear
map, a surjective (hence epi) `ModuleCat` morphism, and an actual chain map to
the coefficient field concentrated in degree zero via `ChainComplex.single₀`.
Its component at zero is the original augmentation. Every degree-zero basis
index is the root generator, and the value on `Finsupp.single i a` is exactly
the scalar ring augmentation of `a`. General degree-zero linear functionals
have the corresponding scalar-times-generator-value identity. All these
statements compile with only Lean's standard logical axioms
`propext`, `Classical.choice`, and `Quot.sound`.

This is an augmented chain complex of projective modules. It is not a
`ProjectiveResolution`: no global exactness or augmentation quasi-isomorphism
is claimed, and the t<=8 exactness results do not imply either property.

## Actual homogeneous chain homology

`ActualChainHomology.lean` restricts the actual boundary to the additive
subgroups of internally homogeneous degree-indexed free modules. The
restricted differential squares to zero. Its positive homology is defined
as the genuine kernel modulo incoming image, and
`positiveChainHomology_zero` proves every class zero for every positive
homological degree and t<=8, using homogeneous boundary witnesses.

At homological degree zero, `ZeroChainHomology` is the actual chain group
modulo the incoming boundary image. That image equals the actual restricted
augmentation kernel. `zeroChainHomologyAugmentationRange` therefore gives an
additive equivalence to the augmentation image, `zeroChainHomologyField`
identifies the t=0 quotient with `ZMod 2`, and
`zeroChainHomology_positive_zero` proves the quotient zero for 0<t<=8.
`homogeneousAugmentation_chain_component` identifies the map used here with
component zero of `actualChainAugmentation`. These are actual quotient and
map statements, with no global quasi-isomorphism or Ext identification.
