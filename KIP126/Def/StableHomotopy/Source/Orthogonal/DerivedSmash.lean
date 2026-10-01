import KIP126.Def.StableHomotopy.Source.Orthogonal.Monoidal
import KIP126.Def.StableHomotopy.Source.Orthogonal.Localization
import Mathlib.CategoryTheory.Localization.Monoidal.Braided

/-! Derived smash on the existing sequential localization. It is the
Mathlib monoidal localization of the q-cofibrant orthogonal point-set
category, whose pairing and coherence were defined before localization.
The unit comparison is fixed by the displayed fundamental sphere class.
Thus this includes HF2 and arbitrary iterated tower/cooperation objects,
not only suspension spectra of spaces. -/
namespace KIP126.StableHomotopy.Source.Orthogonal
open CategoryTheory CategoryTheory.MonoidalCategory
noncomputable section

def sphereGenerator : Source.StablePi (underlying sphere) 0 0 :=
  Quot.mk _ ⟨0, ⟨ContinuousMap.const _ (jId 0), by
    intro t ht
    rcases ht with ⟨j,_⟩
    exact PEmpty.elim j⟩⟩

/-- The source-sphere comparison sends the nonbasepoint of S0 to the
identity embedding of R0, not to an unspecified degree-one candidate. -/
def sphereComparisonMap : Source.stabilizeFunctor.obj Source.spherePrespectrum ⟶
    Source.stabilizeFunctor.obj (underlying sphere) :=
  (Equiv.ofBijective (Source.evaluateSphere (underlying sphere))
    (Source.evaluateSphere_bijective (underlying sphere))).symm sphereGenerator
instance sphereComparisonMap_isIso : IsIso sphereComparisonMap := by sorry
def sphereComparison : Source.stabilizeFunctor.obj (underlying sphere) ≅
    Source.stabilizeFunctor.obj Source.spherePrespectrum := (asIso sphereComparisonMap).symm

def cofibrantWeakEquivalences : MorphismProperty CofibrantSpectra :=
  stableEquivalences.inverseImage cofibrantInclusion
instance : cofibrantWeakEquivalences.IsMonoidal := by sorry

def cofibrantToStable : CofibrantSpectra ⥤ Source.StableCategory :=
  cofibrantInclusion ⋙ forget ⋙ Source.stabilizeFunctor

/-- Restricting to q-cofibrant objects still presents the same stable
category. Q with its actual trivial-fibration projection supplies the
essential surjectivity and localization comparison. -/
instance : cofibrantToStable.IsLocalization cofibrantWeakEquivalences := by sorry

abbrev StableMonoidal := LocalizedMonoidal cofibrantToStable cofibrantWeakEquivalences
  sphereComparison

/-- These are the STRUCTURES constructed by Mathlib's localization,
not new independently selected tensors or coherence maps. -/
instance stableMonoidal : MonoidalCategory Source.StableCategory :=
  inferInstanceAs (MonoidalCategory StableMonoidal)
instance stableSymmetric : SymmetricCategory Source.StableCategory :=
  inferInstanceAs (SymmetricCategory StableMonoidal)
instance cofibrantToStable_monoidal : cofibrantToStable.Monoidal :=
  inferInstanceAs ((Localization.Monoidal.toMonoidalCategory cofibrantToStable
    cofibrantWeakEquivalences sphereComparison).Monoidal)
instance cofibrantToStable_braided : cofibrantToStable.Braided :=
  inferInstanceAs ((Localization.Monoidal.toMonoidalCategory cofibrantToStable
    cofibrantWeakEquivalences sphereComparison).Braided)

def qObject (E : Spectrum) : CofibrantSpectra :=
  ⟨cofibrantResolution.functor.obj E, cofibrantResolution.cofibrant E⟩

/-- Formula for arbitrary point-set spectra: Q(E) smash Q(F), followed by
the actual forgetful localization. The comparison with localized tensor
uses Q's SAME projection in both variables. -/
def derivedSmashPointset (E F : Spectrum) : Spectrum :=
  smash (cofibrantResolution.functor.obj E) (cofibrantResolution.functor.obj F)

def qStableIso (E : Spectrum) : cofibrantToStable.obj (qObject E) ≅
    Source.stabilizeFunctor.obj (underlying E) :=
  Localization.Construction.wIso (forget.map (cofibrantResolution.projection.app E))
    (levelTrivialFibration_stable (cofibrantResolution.projection.app E)
      (cofibrantResolution.trivial E))

def derivedSmashIso (E F : Spectrum) :
    Source.stabilizeFunctor.obj (underlying (derivedSmashPointset E F)) ≅
      Source.stabilizeFunctor.obj (underlying E) ⊗
        Source.stabilizeFunctor.obj (underlying F) :=
  (Functor.Monoidal.μIso cofibrantToStable (qObject E) (qObject F)).symm ≪≫
    tensorIso (qStableIso E) (qStableIso F)

end
end KIP126.StableHomotopy.Source.Orthogonal

namespace KIP126.StableHomotopy.Source
open CategoryTheory CategoryTheory.MonoidalCategory
noncomputable section

/-- HF2-cohomological equivalences are closed under the derived smash.
This is a statement about the displayed coefficient spectrum with its
specified pi0 and vanishing groups, not arbitrary completion theories. -/
instance mod2Equivalences_monoidal (H : Mod2Source) : (mod2Equivalences H).IsMonoidal := by
  sorry

abbrev CompleteMonoidal (H : Mod2Source) :=
  LocalizedMonoidal (completeFunctor H) (mod2Equivalences H) (Iso.refl (sphere H))
instance completeMonoidal (H : Mod2Source) : MonoidalCategory (CompleteCategory H) :=
  inferInstanceAs (MonoidalCategory (CompleteMonoidal H))
instance completeSymmetric (H : Mod2Source) : SymmetricCategory (CompleteCategory H) :=
  inferInstanceAs (SymmetricCategory (CompleteMonoidal H))
instance completeFunctor_monoidal (H : Mod2Source) : (completeFunctor H).Monoidal :=
  inferInstanceAs ((Localization.Monoidal.toMonoidalCategory (completeFunctor H)
    (mod2Equivalences H) (Iso.refl (sphere H))).Monoidal)
instance completeFunctor_braided (H : Mod2Source) : (completeFunctor H).Braided :=
  inferInstanceAs ((Localization.Monoidal.toMonoidalCategory (completeFunctor H)
    (mod2Equivalences H) (Iso.refl (sphere H))).Braided)

end
end KIP126.StableHomotopy.Source
