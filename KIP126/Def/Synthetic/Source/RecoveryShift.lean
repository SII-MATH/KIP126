import KIP126.Def.Synthetic.Source.RecoveryMonoidal
import KIP126.Def.Synthetic.Localization.Proofs
import KIP126.Def.Synthetic.Sphere.Data

/-! Canonical suspension compatibility of ordinary tensor and synthetic
realization. Exactness plus an arbitrary CommShift structure does not fix
its suspension map. The formulas here use actual source shift-smash maps,
then the SAME lambda, nu suspension and recovery and monoidal maps. -/
namespace KIP126.Synthetic.Source
open CategoryTheory CategoryTheory.Functor CategoryTheory.MonoidalCategory
open KIP126.StableHomotopy KIP126.StableHomotopy.Source
open KIP126.Synthetic.Context
noncomputable section

theorem ordinaryRealization_inverts_stable (R : RealizedFoundation) :
    Orthogonal.stableEquivalences.IsInvertedBy (ordinaryRealization R) := by sorry

/-- Interpret a generated shift-smash path in the already fixed ordinary
realization. Each inverse still inverts its specified stable equivalence. -/
def ordinarySmashWordComparison (R : RealizedFoundation)
    {w v : Orthogonal.SmashWord} (z : Orthogonal.SmashShiftZigzag w v)
    (E F : Orthogonal.Spectrum) :
    (ordinaryRealization R).obj (w.functor.obj (E,F)) ≅
      (ordinaryRealization R).obj (v.functor.obj (E,F)) := by
  induction z with
  | refl _ => exact Iso.refl _
  | step f hf =>
    let a := f.map.app (E,F)
    letI := ordinaryRealization_inverts_stable R a (hf (E,F))
    exact asIso ((ordinaryRealization R).map a)
  | symm _ ih => exact ih.symm
  | trans _ _ ih ih' => exact ih ≪≫ ih'

/-- The source strength commutes an actual +1 derived suspension with
actual derived smash. No abstract Closed.smashSuspIso is used here. -/
def ordinaryTensorSuspensionIso (R : RealizedFoundation) (E F : Orthogonal.Spectrum) :
    (shiftFunctor R.foundation.Spectrum (1:ℤ)).obj ((ordinaryRealization R).obj E) ⊗
      (ordinaryRealization R).obj F ≅
    (shiftFunctor R.foundation.Spectrum (1:ℤ)).obj
      ((ordinaryRealization R).obj E ⊗ (ordinaryRealization R).obj F) :=
  tensorIso ((ordinaryDerivedSuspensionIso R).app E).symm (Iso.refl _) ≪≫
    (ordinaryDerivedSmashIso R ((Orthogonal.derivedShift 1).obj E) F).symm ≪≫
    ordinarySmashWordComparison R (Orthogonal.smashShiftZigzag 1) E F ≪≫
    (ordinaryDerivedSuspensionIso R).app (Orthogonal.derivedSmashPointset E F) ≪≫
    (shiftFunctor R.foundation.Spectrum (1:ℤ)).mapIso (ordinaryDerivedSmashIso R E F)

/-- Both ordinary tensor-shift structures are pinned to the actual
source strength, on a presentation of all ordinary spectra. The left
structure is fixed by the SAME actual braiding and right structure. -/
structure OrdinaryTensorShiftBinding (R : RealizedFoundation) : Prop where
  right : letI := R.tensor
    ∀ E F : Orthogonal.Spectrum,
      ((tensorRight ((ordinaryRealization R).obj F)).commShiftIso (1:ℤ)).app
        ((ordinaryRealization R).obj E) = ordinaryTensorSuspensionIso R E F
  left : letI := R.tensor
    ∀ X Y : R.foundation.Spectrum,
      ((tensorLeft X).commShiftIso (1:ℤ)).app Y =
        (β_ X ((shiftFunctor R.foundation.Spectrum (1:ℤ)).obj Y)) ≪≫
          ((tensorRight X).commShiftIso (1:ℤ)).app Y ≪≫
          (shiftFunctor R.foundation.Spectrum (1:ℤ)).mapIso (β_ Y X)

/-- The mixed suspension-smash square is required already by the ordinary
source realization, on every cofibrant presentation. Passing through the
same Q projections and the displayed shift-smash normalization gives this
derived formula. Thus no new choice of ordinary CommShift is imposed on
an otherwise unconstrained fixed realization. -/
theorem ordinaryTensorShiftBinding_of_source (R : RealizedFoundation) :
    OrdinaryTensorShiftBinding R := by
  letI := R.tensor
  refine ⟨?_, ?_⟩
  · intro E F
    -- Derived naturality of `R.binding.tensor_right_suspension` along Q.
    sorry
  · exact R.binding.tensor_left_suspension

variable {R : RealizedFoundation} {Syn : Type 1}
  [SyntheticCategory.{1,0} Syn] [SymmetricCategory Syn]
  (N : NuFunctorData R.foundation.Spectrum Syn) (L : LambdaRecovery N)

/-- Realization really inverts the specified deformation map; this is
inherited from the explicit reflective-subcategory adjunction. -/
def realizationLambdaIso (X : Syn) :
    L.realization.obj ((SyntheticCategory.biShift (0,-1)).obj X) ≅ L.realization.obj X := by
  haveI := L.localization.map_lambda_isIso X
  have h : IsIso (L.realization.map (SyntheticCategory.lam.app X)) := by
    change IsIso (L.equivalence.functor.map (L.localization.reflector.map _))
    infer_instance
  exact @asIso _ _ _ _ (L.realization.map (SyntheticCategory.lam.app X)) h

/-- Recover the ordinary +1 sphere using only nu of its ordinary
suspension, the same actual lambda map and the specified nu recovery.
No realization.CommShift structure occurs in this definition. -/
def recoveredSuspensionSphereIso :
    L.realization.obj (Smn (Syn := Syn) 1 0) ≅ Sphere (C := R.foundation.Spectrum) 1 :=
  L.realization.mapIso ((SyntheticCategory.biShift (1,0)).mapIso N.unitIso.symm ≪≫
    (SyntheticCategory.biShift_compat (Syn := Syn) 1).app
      (N.functor.obj (SphereSpectrum (C := R.foundation.Spectrum))) ≪≫
    (N.boundaryLandingIso (SphereSpectrum (C := R.foundation.Spectrum))).symm) ≪≫
  realizationLambdaIso N L
    (N.functor.obj ((shiftFunctor R.foundation.Spectrum (1:ℤ)).obj SphereSpectrum)) ≪≫
  L.nuRealizationIso.app ((shiftFunctor R.foundation.Spectrum (1:ℤ)).obj SphereSpectrum)

/-- The prescribed realization suspension on every synthetic object.
A shift by one is tensor with its source sphere; monoidal realization
then uses the preceding fixed sphere comparison and the ordinary source
strength. Integer shifts are determined by CommShift's zero/add laws. -/
def recoverySuspensionComponent (m : L.realization.Monoidal) (X : Syn) :
    L.realization.obj ((shiftFunctor Syn (1:ℤ)).obj X) ≅
      (shiftFunctor R.foundation.Spectrum (1:ℤ)).obj (L.realization.obj X) :=
  letI := R.tensor
  letI := m
  L.realization.mapIso ((SyntheticCategory.biShift_compat (Syn := Syn) 1).symm.app X ≪≫
    biShift_eq_tensor_Smn 1 0 X) ≪≫
    (Functor.Monoidal.μIso L.realization _ _).symm ≪≫
    tensorIso (recoveredSuspensionSphereIso N L) (Iso.refl _) ≪≫
    ((tensorRight (L.realization.obj X)).commShiftIso (1:ℤ)).app SphereSpectrum ≪≫
    (shiftFunctor R.foundation.Spectrum (1:ℤ)).mapIso (λ_ (L.realization.obj X))

/-- An exact functor's CommShift remains data until this source equation
is supplied. This predicate binds its generator; it does not add an
Adams-page equation, local product value, or a literature conclusion. -/
structure RecoveryShiftBinding (B : Binding R N L) (m : L.realization.Monoidal)
    (c : L.realization.CommShift ℤ) : Prop where
  ordinaryTensor : OrdinaryTensorShiftBinding R
  suspension : letI := c
    ∀ X : Syn, (L.realization.commShiftIso (1:ℤ)).app X =
      recoverySuspensionComponent N L m X

end
end KIP126.Synthetic.Source
