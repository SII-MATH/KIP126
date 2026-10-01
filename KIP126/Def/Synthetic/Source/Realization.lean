import KIP126.Def.Synthetic.Source.Exactness
import KIP126.Def.Synthetic.Source.Recovery
import KIP126.Def.Synthetic.Source.DayShifts
import KIP126.Def.Synthetic.Source.ShiftCoherence
import KIP126.Def.Synthetic.Source.NuShift
import KIP126.Def.Synthetic.Context.Coherence.Predicates
import KIP126.Def.Synthetic.Localization.Recovery.Data

/-! A same-source realization of the synthetic interface. The comparison
refers to the explicit hypercomplete spectral-diagram source, its nu,
lambda, shifts, actual cone arrows and spectral-Yoneda realization.
It contains no local product value, differential, survival or route theorem.
-/
namespace KIP126.Synthetic.Source
open CategoryTheory CategoryTheory.Functor CategoryTheory.Pretriangulated
open CategoryTheory.MonoidalCategory
open KIP126.StableHomotopy KIP126.StableHomotopy.Source
open KIP126.Synthetic.Context
noncomputable section

variable {R : StableHomotopy.Source.RealizedFoundation}
  {Syn : Type 1} [SyntheticCategory.{1,0} Syn]

/-- The inverse shift comparison is derived from the SAME equivalence's
unit/counit and the forward comparison, not chosen a second time. -/
def inverseBiShiftComparison (e : HypercompleteCategory R ≌ Syn)
    (b : ∀ p, biShift R p ⋙ e.functor ≅ e.functor ⋙ SyntheticCategory.biShift p)
    (p : ℤ × ℤ) (X : Syn) :
    e.inverse.obj ((SyntheticCategory.biShift p).obj X) ≅
      (biShift R p).obj (e.inverse.obj X) :=
  e.inverse.mapIso ((SyntheticCategory.biShift p).mapIso (e.counitIso.app X).symm) ≪≫
    e.inverse.mapIso ((b p).symm.app (e.inverse.obj X)) ≪≫
      (e.unitIso.app ((biShift R p).obj (e.inverse.obj X))).symm

/-- Transport of the boundary arrow uses the specified (1,0) comparison,
so the source predicate below sees all three triangle arrows and their sign. -/
def sourceTriangleBoundary (e : HypercompleteCategory R ≌ Syn)
    (b : ∀ p, biShift R p ⋙ e.functor ≅ e.functor ⋙ SyntheticCategory.biShift p)
    (T : Triangle Syn) :
    e.inverse.obj T.obj₃ ⟶ (biShift R (1,0)).obj (e.inverse.obj T.obj₁) :=
  e.inverse.map T.mor₃ ≫
    e.inverse.map ((SyntheticCategory.biShift_compat (Syn := Syn) 1).inv.app T.obj₁) ≫
      (inverseBiShiftComparison e b (1,0) T.obj₁).hom

variable (R) (N : NuFunctorData R.foundation.Spectrum Syn) (L : LambdaRecovery N)
  [SymmetricCategory Syn]

/-- Comparison data for one fixed implementation. Construction of this
record is a source-model comparison obligation. Equality of degrees or
of names cannot establish any of its map compatibility fields. -/
structure Binding where
  equivalence : HypercompleteCategory R ≌ Syn
  nuIso : nu R ⋙ equivalence.functor ≅ N.functor
  /-- Strong symmetric monoidal comparison with the actual hypercompleted
  Day tensor. The source unit is literally nu of the SAME ordinary sphere. -/
  monoidal : equivalence.functor.Monoidal
  braided : letI := monoidal; equivalence.functor.Braided
  unit_eq : letI := monoidal
    Functor.LaxMonoidal.ε equivalence.functor ≫
      nuIso.hom.app (SphereSpectrum (C := R.foundation.Spectrum)) ≫ N.unitIso.hom =
        𝟙 (SphereSpectrum (C := Syn))
  biShiftIso : ∀ p,
    biShift R p ⋙ equivalence.functor ≅ equivalence.functor ⋙ SyntheticCategory.biShift p
  biShift_zero : ∀ X : HypercompleteCategory R,
    equivalence.functor.map ((Source.biShiftZero R).hom.app X) =
      (biShiftIso (0,0)).hom.app X ≫
        SyntheticCategory.biShift_zero.hom.app (equivalence.functor.obj X)
  /- The group-action addition is bound by PreferredShiftBinding in
  Source/SpherePairing. Its maps are induced by Pstragowski's preferred
  sphere tensor pairing. The raw pre/post normalizer is not imposed as
  a second, potentially different, addition law here. -/
  nuSuspension_eq : ∀ X : R.foundation.Spectrum,
    equivalence.functor.map ((Source.nuSuspensionIso R).hom.app X) ≫
      (biShiftIso (1,1)).hom.app ((nu R).obj X) ≫
        (SyntheticCategory.biShift (1,1)).map (nuIso.hom.app X) =
    nuIso.hom.app ((shiftFunctor R.foundation.Spectrum (1:ℤ)).obj X) ≫
      (N.suspensionIso X).hom
  /-- The selected shift/tensor arrow is the actual shifted Day pairing,
  transported through the SAME monoidal equivalence and shift comparison. -/
  biShift_tensor : letI := monoidal
    ∀ (p : ℤ × ℤ) (X Y : HypercompleteCategory R),
      equivalence.functor.map ((Source.biShiftTensorIso R p).hom.app (X,Y)) ≫
        (Functor.Monoidal.μIso equivalence.functor ((biShift R p).obj X) Y).inv ≫
          ((biShiftIso p).hom.app X ⊗ₘ 𝟙 (equivalence.functor.obj Y)) =
      (biShiftIso p).hom.app (X ⊗ Y) ≫
        (SyntheticCategory.biShift p).map
          (Functor.Monoidal.μIso equivalence.functor X Y).inv ≫
        (SyntheticCategory.biShift_tensor_comm p
          (equivalence.functor.obj X) (equivalence.functor.obj Y)).hom
  lambda_eq : ∀ X : HypercompleteCategory R,
    equivalence.functor.map ((Source.lambda R).app X) =
      (biShiftIso (0,-1)).hom.app X ≫ SyntheticCategory.lam.app (equivalence.functor.obj X)
  /-- Bind the selected topological grading compatibility to the ordinary
  HasShift zero/add comparisons; the individual compat_n are not free. -/
  topologicalShift_zero : ∀ X : Syn,
    (SyntheticCategory.biShift_compat (Syn := Syn) 0).hom.app X =
      SyntheticCategory.biShift_zero.hom.app X ≫ (shiftFunctorZero Syn ℤ).inv.app X
  topologicalShift_add : ∀ (m n : ℤ) (X : Syn),
    (biShiftAddIso (m,0) (n,0) (m+n,0) (by ext <;> simp)).hom.app X ≫
      (SyntheticCategory.biShift_compat (Syn := Syn) (m+n)).hom.app X ≫
        (shiftFunctorAdd Syn m n).hom.app X =
    (SyntheticCategory.biShift_compat (Syn := Syn) n).hom.app
        ((SyntheticCategory.biShift (m,0)).obj X) ≫
      (shiftFunctor Syn n).map ((SyntheticCategory.biShift_compat (Syn := Syn) m).hom.app X)
  distinguished_source : ∀ T : Triangle Syn,
    T ∈ distTriang Syn ↔
      IsSourceTriangle R (equivalence.inverse.map T.mor₁)
        (equivalence.inverse.map T.mor₂)
        (sourceTriangleBoundary equivalence biShiftIso T)
  /-- The actual lambda-inversion realization is the left adjoint to the
  SOURCE spectral Yoneda embedding. It is not a chosen adjoint of nu. -/
  realizationIso : equivalence.functor ⋙ L.realization ≅ Source.realization R
  /-- Fix the recovery map, not only the recovered objects. -/
  nuRecovery_eq : ∀ X : R.foundation.Spectrum,
    realizationIso.hom.app ((nu R).obj X) ≫ (nuRecoveryMap R).app X =
      L.realization.map (nuIso.hom.app X) ≫ L.nuRealizationIso.hom.app X

/-- One small-Hom implementation together with its SAME source binding.
No route fields, local calculations or Section 7 propositions occur here.
Constructing an inhabitant is a model theorem; this declaration alone
does not select or construct one. -/
structure RealizedSynthetic (R : StableHomotopy.Source.RealizedFoundation) where
  Syn : Type 1
  synthetic : SyntheticCategory.{1,0} Syn
  cofiber : letI := synthetic; HasFunctorialCofiber (C := Syn)
  symmetric : letI := synthetic; SymmetricCategory Syn
  nuData : letI := synthetic; NuFunctorData R.foundation.Spectrum Syn
  recovery : letI := synthetic; LambdaRecovery nuData
  binding : letI := synthetic; letI := symmetric; Binding R nuData recovery

end
end KIP126.Synthetic.Source
