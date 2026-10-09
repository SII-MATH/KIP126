# Semantic review

The proved matrix statements are consistent with their definitions. The review
found overstatements in comments/documentation, corrected without weakening
checks or changing theorem statements:

- `regular_coordinates` proves coordinate reconstruction, not uniqueness or
  freeness as a module over an instantiated quotient algebra. There is no
  abstract algebra carrier or free-module universal property in this file.
- `homCoordinate` is a type equivalence with Bool. A one-dimensional linear
  equivalence and a cohomology quotient identification have not been installed.
- The extra degree-three Milnor certificate checks the degree-two coefficient,
  so the square's observed vanishing is not only a degree-one truncation effect.
  It does not prove the general grading/support theorem needed to conclude an
  unbounded Milnor product vanishes.
- The periodic q complex is exact in every Nat-indexed position, with checked
  equivariant maps and augmentation. Calling it an already formalized A(0)-free
  resolution would require additional algebra/module identification proofs.

Other boundaries remain significant: HomCycle/HomBoundary are finite vector
space predicates; EquivariantHom enforces only supplied generator equations;
Presentation proves word action and supplied relation annihilation rather than
constructing a quotient algebra. No theorem in these modules identifies Ext_A
or topological Adams E2. Basic, Equivariant, Presentation and their examples
contain no new apparent checker-soundness defect on review.

## Minimum concrete input for a full Steenrod resolution bridge

1. A declared finite bidegree range and generator degrees, with all necessary
   neighboring degrees for differentials and Hom cohomology.
2. A mathematically identified mod-2 Steenrod algebra presentation or full Milnor
   algebra, including grading/support and relations sufficient in that range.
3. For each resolution degree, homogeneous free A-module generator lists and
   differential images as A-linear combinations of those generators, not merely
   Ext basis coordinates or an Adams staircase.
4. An explicit augmentation to the intended input module and its verified A
   action (for S0 the trivial augmentation module), with chain identities.
5. Exactness witnesses in the declared range plus proofs that the truncation
   boundaries cannot hide incoming cycles/boundaries. The projective/free module
   identification must be proved, not inferred from finite vector-space rank.
6. A Hom_A basis/equivariance solver certificate and comparison to the exported
   E2 coordinates, followed by the projective-resolution computation-of-Ext
   theorem. Products/maps require corresponding chain lifts and comparisons.

The 362-file naming audit provides no identified raw resolution differential
table. Generator/relation/basis tables for *Ext* do not themselves supply items
3--5. The existing AdamsRes source may be the appropriate place to add an
exporter, but its output would still need all listed certificate checks.
