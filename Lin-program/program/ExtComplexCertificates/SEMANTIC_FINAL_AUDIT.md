# Semantic audit of the actual S0 bridge

This is an audit of a bounded algebra/module subtask. It is not a declaration
that step four or the Kervaire formalization is complete. It reviews the new
`ActualResolutionRing`, `ActualModuleComplex`, `ActualHomogeneousCoordinates`,
`ActualDifferentialCoordinates`, `ActualHomogeneousExactness`,
`ActualAugmentation`, `ActualAugmentationHom`, and `ActualHomCohomology` modules,
with their Milnor dependencies. No Lean source was modified for this audit.

## Findings

No mathematical soundness defect was found in the reviewed statements and
proof dependencies. The material limitations are scope and interpretation:

- `RankDual 3` is the full function dual of the implemented rank-three
  coalgebra, including infinite-support coefficient functions. It is not a
  finite-support graded Steenrod algebra. Its valid Ring instance does not
  establish an isomorphism with topological cohomology operations.
- The actual free module has exactly the 16 supplied generators. Its global
  linear differential squares to zero, but augmented exactness is proved only
  on internal-degree components t<=8. No complete resolution or global
  exactness theorem is supplied.
- The new actual Hom cohomology quotient is additively equivalent to the
  generator-coordinate function space. This is stronger than a count match,
  but is not an Ext_A identification, a finrank theorem, or a named-basis
  comparison with the archived paper.
- `actualHom_raw_differential_agrees` compares actual precomposition with the
  old local-ID formula by proving both zero for these minimal data. It does
  not prove that arbitrary local-ID assignments encode every nonminimal
  differential correctly. The true Hom construction and its zero-differential
  theorem independently use the genuine free-module universal property.

These restrictions are recorded in the updated module review and build guide.

## Degree and rank checks

The ring-square-zero theorem uses the original window checks on degree at
most eight and a generic homogeneous product-support theorem outside that
window. This is legitimate because every composed pair is separately checked
to have total weight at most eight. It proves equality of the relevant ring
elements on every rank-three monomial, not only equality of sampled values.
The numeric bound 8<15 is not silently used as an identification with a larger
rank: cross-rank claims require the separate rank-stability theorems.

The module differential extends the actual records by left linearity. The
matrix path/permutation check includes target filtration and local ID; it does
not collapse equal local IDs in different filtrations. Every ring-valued matrix
entry in the square is covered, including absent targets. The extension from
basis-square-zero to all vectors is valid for arbitrary ring coefficients,
since the free generator index set is finite.

`ModuleHomogeneous s t` explicitly requires zero coefficient whenever the
homological degree or total internal degree fails. In particular generators
with internal degree greater than t cannot carry any coefficient. This is an
additive/F2 component condition, not an R-submodule condition. The proof of
reconstruction checks all ring coefficient monomials, so equality is not
inferred solely from the finite coordinate list.

## Coordinate and exactness transport

The ordered coordinate equivalence uses actual raw-row injectivity, exact
membership, completeness of the Milnor basis, and duplicate-free `freeBasis`.
The finite uniqueness check is performed on (raw ID, exponent list) keys;
Nodup of mapped keys implies Nodup of the full pairs. It is not a dimension
coincidence. For s>8 the enumerated component is proved empty from the actual
row filtration bound. For s>t, zero components are justified by the actual
row inequality s<=internal degree, not by an arbitrary empty model.

The differential intertwining proof expands actual left-module basis vectors
and then every reconstructed vector. Products have order input coefficient
followed by raw differential coefficient. It proves both extraction equality
and a genuine module equality after reconstruction. Its homogeneous-support
proof rules out contributions outside the target component.

`exactAt_scalar` transports the original Bool matrix semantics to ZMod 2 using
an injective Bool-to-field map and a field-to-Bool inverse. It reuses the
existing `ExactAt` witnesses, rather than assuming dimensions determine
exactness. `actualExactAt` selects the existing 45 checked cases. Positive
filtration exactness then follows from the full coordinate inverses and
intertwining. Filtration zero uses the actual root/unit augmentation and the
existing augmented outgoing matrix, not the unaugmented differential.

## Augmentation and module action

The augmentation evaluates a vector's actual root-generator coefficient at
the unit monomial. Surjectivity has an explicit degree-(0,0) section. The
proof that augmentation annihilates d works on every module vector; positive
weights of actual edges and multiplicativity of unit-monomial evaluation
supply the necessary coefficient action.

`ringAugmentation` is a proved RingHom. `AugmentationField` is a separate type
alias with additive structure and the `Module.compHom` action induced by that
homomorphism. No commutativity of ActualRing is assumed. ActualHom consists of
R-linear maps to this module; the free-module linear-combination equivalence
is used to prove both coordinate inverses. The action used in
`actualHom_boundary` is explicitly the augmentation value times the target
field element, which is the intended trivial coefficient module.

## Quotient cohomology and non-vacuity

The cochain differential is constructed as actual precomposition with d and
then proved zero. Cycles are its kernel. Positive-degree boundaries are the
previous differential's range; degree-zero boundaries are bottom. Boundaries
are pulled back along the cycle subgroup inclusion before forming the group
quotient. The AddEquiv to coordinate functions is therefore an identification
of the kernel/image quotient, not a definition of cohomology as those
coordinates.

The actual raw data are not replaceable by an empty list in these conclusions:
`actualRows` is fixed by the importer, its earlier raw checker requires the
root, and the cited actual square-zero/minimality checks reduce in Lean. The
component coordinates are nonempty precisely at the actual generator
bidegrees, and the augmentation section explicitly exhibits a nonzero target
value. Conditional generic lemmas are instantiated with these existing checked
theorems. Zero-dimensional positions are handled as mathematical zero spaces,
without being substituted for positions having generators.

## Trust and remaining work

The audited new theorems compile with dependencies restricted to standard
`propext`, `Classical.choice`, and `Quot.sound`. No custom axiom, sorryAx,
native-decide trust, C++ correctness premise, or hash-as-proof enters the
chain. Noncomputable choice is used for coordinate equivalences and quotient
constructions; it does not bypass proof obligations or replace the executable
certificate checker.

The raw source is the pinned current upstream computation described in
ACTUAL_S0_BUILD.md, not silently the paper release. The archived dimension
comparison remains only a dimension comparison. Completing the Kervaire scope
still needs the separate spectrum, Steenrod/Ext, spectral-sequence, and paper
claim comparison theorems, and verification beyond this bounded S0 data set.
Full-project build and regression results are owned by the integrating task;
this audit does not assert that an individual-module build is a full-project
regression run.
