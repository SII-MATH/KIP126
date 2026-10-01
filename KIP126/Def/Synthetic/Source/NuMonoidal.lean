import KIP126.Def.Synthetic.Source.RecoveryMonoidal
import KIP126.Def.Synthetic.Source.RecoveryShift

/-! The actual lax symmetric monoidal structure on nu. First the exact
function-spectrum/Day pairing is uniquely extended from good ordinary
presentations. Then the connective-cover counit uniquely lifts that pairing.
The latter uniqueness is the connective-cover adjunction, not a claim that
nu is fully faithful or strong monoidal on arbitrary spectra. -/
namespace KIP126.Synthetic.Source
open CategoryTheory CategoryTheory.Functor CategoryTheory.MonoidalCategory
open KIP126.StableHomotopy KIP126.StableHomotopy.Source KIP126.Synthetic.Context
noncomputable section

def yonedaTensorLeft (R : RealizedFoundation) :=
  ((spectralYoneda R).prod (spectralYoneda R)) ⋙
    CategoryTheory.MonoidalCategory.tensor (C := HypercompleteCategory R)
def yonedaTensorRight (R : RealizedFoundation) :=
  CategoryTheory.MonoidalCategory.tensor (C := R.foundation.Spectrum) ⋙ spectralYoneda R

/-- Good cofibrant/fibrant presentations are essentially surjective and
retain derived maps. This fixes a NATURAL transformation by its exact
whole-diagram pairing, rather than choosing objectwise isomorphisms. -/
theorem exists_spectralYonedaTensor (R : RealizedFoundation) :
    ∃! a : yonedaTensorLeft R ⟶ yonedaTensorRight R,
      ∀ X Y : GoodSpectrum,
        a.app ((ordinaryRealization R).obj X.obj,(ordinaryRealization R).obj Y.obj) =
          sourceYonedaTensorGood R X Y := by sorry

def spectralYonedaTensor (R : RealizedFoundation) :
    yonedaTensorLeft R ⟶ yonedaTensorRight R :=
  Classical.choose (exists_spectralYonedaTensor R)

theorem spectralYonedaTensor_good (R : RealizedFoundation) (X Y : GoodSpectrum) :
    (spectralYonedaTensor R).app
      ((ordinaryRealization R).obj X.obj,(ordinaryRealization R).obj Y.obj) =
      sourceYonedaTensorGood R X Y := (Classical.choose_spec (exists_spectralYonedaTensor R)).1 X Y

def nuTensorLeft (R : RealizedFoundation) :=
  ((nu R).prod (nu R)) ⋙ CategoryTheory.MonoidalCategory.tensor (C := HypercompleteCategory R)
def nuTensorRight (R : RealizedFoundation) :=
  CategoryTheory.MonoidalCategory.tensor (C := R.foundation.Spectrum) ⋙ nu R

/-- Nu has connective values, and derived Day tensor of connective
spherical diagrams is connective. Therefore its actual connective counit
has this precise unique factorization property, also after hypercompletion. -/
theorem exists_nuTensor (R : RealizedFoundation) :
    ∃! a : nuTensorLeft R ⟶ nuTensorRight R,
      ∀ X Y : R.foundation.Spectrum,
        a.app (X,Y) ≫ (nuToSpectralYoneda R).app (X ⊗ Y) =
          ((nuToSpectralYoneda R).app X ⊗ₘ (nuToSpectralYoneda R).app Y) ≫
            (spectralYonedaTensor R).app (X,Y) := by sorry

def nuTensorTransformation (R : RealizedFoundation) : nuTensorLeft R ⟶ nuTensorRight R :=
  Classical.choose (exists_nuTensor R)

def nuTensor (R : RealizedFoundation) (X Y : R.foundation.Spectrum) :
    (nu R).obj X ⊗ (nu R).obj Y ⟶ (nu R).obj (X ⊗ Y) :=
  (nuTensorTransformation R).app (X,Y)

theorem nuTensor_counit (R : RealizedFoundation) (X Y : R.foundation.Spectrum) :
    nuTensor R X Y ≫ (nuToSpectralYoneda R).app (X ⊗ Y) =
      ((nuToSpectralYoneda R).app X ⊗ₘ (nuToSpectralYoneda R).app Y) ≫
        (spectralYonedaTensor R).app (X,Y) := (Classical.choose_spec (exists_nuTensor R)).1 X Y

/-- Source unit is literally nu of the ordinary sphere. -/
instance nuLaxMonoidal (R : RealizedFoundation) : (nu R).LaxMonoidal where
  ε := 𝟙 _
  μ := nuTensor R
  μ_natural_left := by sorry
  μ_natural_right := by sorry
  associativity := by sorry
  left_unitality := by sorry
  right_unitality := by sorry

instance nuLaxBraided (R : RealizedFoundation) :
    letI := R.tensor; (nu R).LaxBraided :=
  letI := R.tensor
  { toLaxMonoidal := nuLaxMonoidal R
    braided := by sorry }

/-- Finite objects are identified with the SAME ordinary realization of
finite uncompleted orthogonal spectra. Merely having the name sphere or
a finite-dimensional label vector is not this predicate. -/
def FiniteOrdinary (R : RealizedFoundation) (X : R.foundation.Spectrum) : Prop :=
  ∃ P : FiniteSite, Nonempty ((ordinaryRealization R).obj P.obj ≅ X)

theorem finiteOrdinary_sphere (R : RealizedFoundation) (n : ℤ) :
    FiniteOrdinary R (Sphere n) := by sorry

theorem nuTensor_isIso_of_finite (R : RealizedFoundation) (X Y : R.foundation.Spectrum)
    (hX : FiniteOrdinary R X) (hY : FiniteOrdinary R Y) : IsIso (nuTensor R X Y) := by sorry

def nuTensorSphereIso (R : RealizedFoundation) (m n : ℤ) :
    (nu R).obj (Sphere m) ⊗ (nu R).obj (Sphere n) ≅
      (nu R).obj ((Sphere m : R.foundation.Spectrum) ⊗ Sphere n) :=
  @asIso _ _ _ _ (nuTensor R (Sphere m) (Sphere n))
    (nuTensor_isIso_of_finite R _ _ (finiteOrdinary_sphere R m) (finiteOrdinary_sphere R n))

def nuDerivedSmashIsoFinite (R : RealizedFoundation) (P Q : FiniteSite) :
    (nu R).obj ((ordinaryRealization R).obj P.obj) ⊗
      (nu R).obj ((ordinaryRealization R).obj Q.obj) ≅
    (nu R).obj ((ordinaryRealization R).obj (Orthogonal.derivedSmashPointset P.obj Q.obj)) :=
  @asIso _ _ _ _ (nuTensor R _ _)
    (nuTensor_isIso_of_finite R _ _ ⟨P,⟨Iso.refl _⟩⟩ ⟨Q,⟨Iso.refl _⟩⟩) ≪≫
      (nu R).mapIso (ordinaryDerivedSmashIso R P.obj Q.obj).symm

variable {R : RealizedFoundation} {Syn : Type 1}
  [SyntheticCategory.{1,0} Syn] [SymmetricCategory Syn]
  {N : NuFunctorData R.foundation.Spectrum Syn} {L : LambdaRecovery N}

/-- Transport actual source nu's lax tensor, through this SAME source
binding. This is a construction, not an extra selected model datum. -/
@[reducible] def implementationNuLax (B : Binding R N L) : N.functor.LaxMonoidal :=
  letI := B.monoidal
  { ε := Functor.LaxMonoidal.ε B.equivalence.functor ≫
      B.nuIso.hom.app (SphereSpectrum (C := R.foundation.Spectrum))
    μ := fun X Y =>
      (B.nuIso.inv.app X ⊗ₘ B.nuIso.inv.app Y) ≫
        Functor.LaxMonoidal.μ B.equivalence.functor ((nu R).obj X) ((nu R).obj Y) ≫
        B.equivalence.functor.map (nuTensor R X Y) ≫ B.nuIso.hom.app (X ⊗ Y)
    μ_natural_left := by sorry
    μ_natural_right := by sorry
    associativity := by sorry
    left_unitality := by sorry
    right_unitality := by sorry }

theorem implementationNuLax_unit (B : Binding R N L) :
    letI := implementationNuLax B
    Functor.LaxMonoidal.ε N.functor = N.unitIso.inv := by sorry

/-- The transport itself is monoidal for the literal constructed maps. -/
instance implementationNuIso_monoidal (B : Binding R N L) :
    letI := B.monoidal; letI := implementationNuLax B
    NatTrans.IsMonoidal B.nuIso.hom := by sorry

end
end KIP126.Synthetic.Source
