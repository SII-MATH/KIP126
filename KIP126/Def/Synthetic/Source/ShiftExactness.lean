import KIP126.Def.Synthetic.Source.RecoveryShift
import KIP126.Def.StableHomotopy.Source.Orthogonal.SuspensionCone

/-! Exact bigraded shifts. The boundary comparison is determined by
permuting the actual cone and value-suspension coordinates. Only the VALUE
shift t-w contributes this permutation; finite-input precomposition keeps
all cone coordinates. This is distinct from a preferred sphere-product
Koszul convention. -/
namespace KIP126.Synthetic.Source
open CategoryTheory CategoryTheory.Functor
open KIP126.StableHomotopy KIP126.StableHomotopy.Source KIP126.Synthetic.Context
noncomputable section

/-- Check the actual coordinate permutation in the same ordinary model.
Cofibrancy is retained so raw suspension presents derived suspension. -/
theorem doubleSuspensionSwap_realizes_negative (R : RealizedFoundation)
    (E : Orthogonal.Spectrum) (hE : Orthogonal.Cofibrant E) :
    (ordinaryRealization R).map (Orthogonal.doubleSuspensionSwap E) =
      -(𝟙 ((ordinaryRealization R).obj (Orthogonal.suspension (Orthogonal.suspension E)))) := by
  sorry

/-- F Σ -> Σ F. The two raw normalizations re-associate replacement
words. The interval-coordinate permutation contributes (-1)^(t-w), as
an actual loop-reversal automorphism, with no arbitrary Preadditive data. -/
def biShiftExactSuspensionIso (R : RealizedFoundation) (p : ℤ × ℤ) :
    biShift R (1,0) ⋙ biShift R p ≅ biShift R p ⋙ biShift R (1,0) :=
  biShiftAddRaw R (1,0) p ≪≫
    eqToIso (congrArg (biShift R) (add_comm (1,0) p)) ≪≫
    (biShiftAddRaw R p (1,0)).symm ≪≫
    isoWhiskerLeft (biShift R p ⋙ biShift R (1,0)) (signIso R (p.1-p.2))

/-- The exactness comparison concerns all three ACTUAL cone arrows.
Its proof iterates suspensionConeMap_boundary and its derived inverse,
with the Q/R normalization maps. It is not inferred from bidegrees alone. -/
theorem biShiftExactSuspension_preserves_source_triangles (R : RealizedFoundation)
    (p : ℤ × ℤ) {X Y Z : HypercompleteCategory R}
    (f : X ⟶ Y) (g : Y ⟶ Z) (h : Z ⟶ (biShift R (1,0)).obj X)
    (ht : IsSourceTriangle R f g h) :
    IsSourceTriangle R ((biShift R p).map f) ((biShift R p).map g)
      ((biShift R p).map h ≫ (biShiftExactSuspensionIso R p).hom.app X) := by sorry

variable {R : RealizedFoundation} {Syn : Type 1}
  [SyntheticCategory.{1,0} Syn] [CategoryTheory.SymmetricCategory Syn]
  {N : NuFunctorData R.foundation.Spectrum Syn} {L : LambdaRecovery N}

/-- Source identification for each selected exact-shift structure. The
square uses the same source equivalence, biShiftIso and topological
compatibility as Binding's all-arrow triangle comparison. -/
structure SourceShiftExactBinding (B : Binding R N L)
    (c : ∀ p : ℤ × ℤ, (SyntheticCategory.biShift (Syn := Syn) p).CommShift ℤ) : Prop where
  suspension : ∀ (p : ℤ × ℤ), letI := c p
    ∀ X : HypercompleteCategory R,
      B.equivalence.functor.map ((biShiftExactSuspensionIso R p).hom.app X) ≫
        (B.biShiftIso (1,0)).hom.app ((biShift R p).obj X) ≫
        (SyntheticCategory.biShift_compat (Syn := Syn) 1).hom.app
          (B.equivalence.functor.obj ((biShift R p).obj X)) ≫
        (shiftFunctor Syn (1:ℤ)).map ((B.biShiftIso p).hom.app X) =
      (B.biShiftIso p).hom.app ((biShift R (1,0)).obj X) ≫
        (SyntheticCategory.biShift p).map ((B.biShiftIso (1,0)).hom.app X) ≫
        (SyntheticCategory.biShift p).map
          ((SyntheticCategory.biShift_compat (Syn := Syn) 1).hom.app (B.equivalence.functor.obj X)) ≫
        ((SyntheticCategory.biShift (Syn := Syn) p).commShiftIso (1:ℤ)).hom.app
          (B.equivalence.functor.obj X)

end
end KIP126.Synthetic.Source
