import Fact764ConstrainedE5.Conclusion

namespace Fact764ConstrainedE5.Obstructions
open LinearCertificates NamedElementCertificates BranchReplayCertificates
open BasisSemantics

variable {R : Type*} [CommRing R] [CharP R 2]

/-- The actual product equation is transported through every checked product column.
Reflection of zero into the earlier-boundary image is an explicit completeness premise. -/
theorem product_compatible (v : Nat → R) (candidate : Vec 4)
    (hr3992 : ∀ r ∈ Products.column3992.relations, evaluate v r = 0)
    (hr3993 : ∀ r ∈ Products.column3993.relations, evaluate v r = 0)
    (hr3994 : ∀ r ∈ Products.column3994.relations, evaluate v r = 0)
    (hr3995 : ∀ r ∈ Products.column3995.relations, evaluate v r = 0)
    (boundaryReflection : ∀ x : Vec 3,
      interpret (fun i => evaluate v (ProductBasisSemantics.c3992Basis i)) x = 0 →
      InImage ProductRefutation.earlierBoundaries x)
    (leibniz : interpret (fun i => evaluate v (ProductBasisSemantics.c3992Basis i)) ProductRefutation.residual +
      evaluate v Products.factor *
        interpret (fun j => evaluate v (ProductBasisSemantics.source25 j)) candidate = 0) :
    ProductRefutation.Compatible candidate := by
  apply boundaryReflection
  rw [interpret_add, ProductBasisSemantics.allCoefficients25 v hr3992 hr3993 hr3994 hr3995]
  exact leibniz

/-- The residual equality follows from a genuine Leibniz equation, a cycle factor,
and the supplied known differential of the product. These are actual-page premises. -/
structure ProductMeaning (v : Nat → R) (candidate : Vec 4) where
  relations3992 : ∀ r ∈ Products.column3992.relations, evaluate v r = 0
  relations3993 : ∀ r ∈ Products.column3993.relations, evaluate v r = 0
  relations3994 : ∀ r ∈ Products.column3994.relations, evaluate v r = 0
  relations3995 : ∀ r ∈ Products.column3995.relations, evaluate v r = 0
  boundaryReflection : ∀ x : Vec 3,
    interpret (fun i => evaluate v (ProductBasisSemantics.c3992Basis i)) x = 0 →
    InImage ProductRefutation.earlierBoundaries x
  differential : R → R
  source : R
  candidateDifferential :
    interpret (fun j => evaluate v (ProductBasisSemantics.source25 j)) candidate = differential source
  factorCycle : differential (evaluate v Products.factor) = 0
  knownProductDifferential : differential (evaluate v Products.factor * source) =
    interpret (fun i => evaluate v (ProductBasisSemantics.c3992Basis i)) ProductRefutation.residual
  leibniz : differential (evaluate v Products.factor * source) =
    differential (evaluate v Products.factor) * source + evaluate v Products.factor * differential source

theorem ProductMeaning.compatible {v : Nat → R} {candidate : Vec 4}
    (h : ProductMeaning v candidate) : ProductRefutation.Compatible candidate := by
  apply product_compatible v candidate h.relations3992 h.relations3993
    h.relations3994 h.relations3995 h.boundaryReflection
  rw [h.candidateDifferential, ← h.knownProductDifferential, h.leibniz, h.factorCycle,
    zero_mul, zero_add, CharTwo.add_self_eq_zero]

variable {S : Type*} [CommRing S] [CharP S 2]

/-- Naturality is an equation about actual differentials. No log reason or SQL sentinel
supplies it, and all map columns and zero-reflection are explicit mathematical inputs. -/
theorem map_compatible (v : Nat → R) (w : Nat → S) (f : R →+* S)
    (dSource : R → R) (dTarget : S → S) (source : R) (candidate : Vec 4)
    (columns : ∀ j,
      interpret (fun i => evaluate w (MapBasisSemantics.basis25 i))
        (fun i => MapRefutation.targetMap i j) =
      f (evaluate v (ProductBasisSemantics.source25 j)))
    (boundaryReflection : ∀ x : Vec 2,
      interpret (fun i => evaluate w (MapBasisSemantics.basis25 i)) x = 0 →
      InImage MapRefutation.tmfB3 x)
    (candidateDifferential :
      interpret (fun j => evaluate v (ProductBasisSemantics.source25 j)) candidate = dSource source)
    (naturality : f (dSource source) = dTarget (f source))
    (mappedSource : f source = 0) (differentialZero : dTarget 0 = 0) :
    MapRefutation.Compatible candidate := by
  apply boundaryReflection
  rw [all_maps f _ _ _ columns, candidateDifferential, naturality, mappedSource, differentialZero]

omit [CharP R 2] in
/-- Full checked substitution columns give the columns used above once the actual
map's values on source monomials are identified. No omitted generator is assigned zero. -/
theorem checked_map_columns (v : Nat → R) (w : Nat → S) (f : R →+* S)
    (hr3992 : ∀ r ∈ MapColumns.column3992.relations, evaluate w r = 0)
    (hr3993 : ∀ r ∈ MapColumns.column3993.relations, evaluate w r = 0)
    (hr3994 : ∀ r ∈ MapColumns.column3994.relations, evaluate w r = 0)
    (hr3995 : ∀ r ∈ MapColumns.column3995.relations, evaluate w r = 0)
    (actualMonomials : ∀ j : Fin 4,
      evaluateMonomial (fun g => evaluate w (MapColumns.images g)) (MapBasisSemantics.monomials25 j) =
      f (evaluate v (ProductBasisSemantics.source25 j))) :
    ∀ j, interpret (fun i => evaluate w (MapBasisSemantics.basis25 i))
      (fun i => MapRefutation.targetMap i j) =
      f (evaluate v (ProductBasisSemantics.source25 j)) := by
  intro j
  have semantic := MapBasisSemantics.allCoefficients25 w hr3992 hr3993 hr3994 hr3995
    (fun k => k == j)
  have left : eval MapRefutation.targetMap (fun k => k == j) =
      (fun i => MapRefutation.targetMap i j) := by
    exact (show ∀ j : Fin 4, eval MapRefutation.targetMap (fun k => k == j) =
      (fun i => MapRefutation.targetMap i j) from by decide) j
  rw [left] at semantic
  have select : ∀ (basis : Fin 4 → S) (j : Fin 4),
      interpret basis (fun k => k == j) = basis j := by
    intro basis j
    fin_cases j <;> simp [interpret]
  rw [select] at semantic
  exact semantic.trans (actualMonomials j)

structure MapMeaning (v : Nat → R) (w : Nat → S) (candidate : Vec 4) where
  map : R →+* S
  relations3992 : ∀ r ∈ MapColumns.column3992.relations, evaluate w r = 0
  relations3993 : ∀ r ∈ MapColumns.column3993.relations, evaluate w r = 0
  relations3994 : ∀ r ∈ MapColumns.column3994.relations, evaluate w r = 0
  relations3995 : ∀ r ∈ MapColumns.column3995.relations, evaluate w r = 0
  actualMonomials : ∀ j : Fin 4,
    evaluateMonomial (fun g => evaluate w (MapColumns.images g)) (MapBasisSemantics.monomials25 j) =
      map (evaluate v (ProductBasisSemantics.source25 j))
  boundaryReflection : ∀ x : Vec 2,
    interpret (fun i => evaluate w (MapBasisSemantics.basis25 i)) x = 0 →
    InImage MapRefutation.tmfB3 x
  dSource : R → R
  dTarget : S → S
  source : R
  candidateDifferential :
    interpret (fun j => evaluate v (ProductBasisSemantics.source25 j)) candidate = dSource source
  naturality : map (dSource source) = dTarget (map source)
  mappedSource : map source = 0
  differentialZero : dTarget 0 = 0

theorem MapMeaning.compatible {v : Nat → R} {w : Nat → S} {candidate : Vec 4}
    (h : MapMeaning v w candidate) : MapRefutation.Compatible candidate :=
  map_compatible v w h.map h.dSource h.dTarget h.source candidate
    (checked_map_columns v w h.map h.relations3992 h.relations3993 h.relations3994
      h.relations3995 h.actualMonomials)
    h.boundaryReflection h.candidateDifferential h.naturality h.mappedSource h.differentialZero

/-- The finite result follows from actual algebraic equations and both source columns.
Identifying these finite spaces with complete actual Adams bidegrees is still separate. -/
theorem unique_from_semantics (v : Nat → R) (w : Nat → S)
    (A : Matrix 1 3) (B : Matrix 3 2) (candidate : Vec 4)
    (productMeaning : ProductMeaning v candidate) (mapMeaning : MapMeaning v w candidate)
    (cycle : candidate 0 = candidate 1)
    (known : eval B Coordinates.knownSource = Coordinates.knownBoundary)
    (unknown : eval B Coordinates.unknownSource = Coordinates.targetToE4 candidate)
    (fullOutgoingZero : A = Conclusion.outgoing) :
    UniqueHomologyCertificates.IsUniqueNonzeroClass A B Coordinates.named :=
  Conclusion.unique_from_constraints A B candidate cycle productMeaning.compatible
    mapMeaning.compatible known unknown fullOutgoingZero

#print axioms product_compatible
#print axioms map_compatible
#print axioms checked_map_columns
#print axioms ProductMeaning.compatible
#print axioms MapMeaning.compatible
#print axioms unique_from_semantics
end Fact764ConstrainedE5.Obstructions
