import KIP126.Def.Synthetic.Source.Realization
import KIP126.Def.StableHomotopy.Source.Orthogonal.Pairing
import Mathlib.CategoryTheory.Monoidal.NaturalTransformation

/-! The monoidal structure on lambda realization is fixed by an adjunction
mate, not supplied as an arbitrary structure on its underlying functor.
The right-adjoint tensor pairing is calculated on cofibrant/fibrant spectra
from ACTUAL function-spectrum evaluation and extended through a precise
relative-diagram comparison. No monoidal structure on R is presumed. -/
namespace KIP126.Synthetic.Source
open CategoryTheory CategoryTheory.Functor CategoryTheory.MonoidalCategory Opposite
open KIP126.StableHomotopy.Source
open KIP126.Synthetic.Context
noncomputable section

abbrev GoodBivariateDiagram := (GoodFiniteᵒᵖ × GoodFiniteᵒᵖ) ⥤ Orthogonal.Spectrum
def goodBivariateEquivalences : MorphismProperty GoodBivariateDiagram :=
  fun _ _ f => ∀ P, Orthogonal.stableEquivalences (f.app P)
abbrev goodBivariateLocalization := goodBivariateEquivalences.Q

def goodBivariateRestriction : BivariateDiagram ⥤ GoodBivariateDiagram where
  obj F :=
    { obj := fun P => F.obj (op P.1.unop.obj,op P.2.unop.obj)
      map := fun f => F.map (f.1.unop.hom.op,f.2.unop.hom.op)
      map_id := by sorry
      map_comp := by sorry }
  map f := { app := fun P => f.app (op P.1.unop.obj,op P.2.unop.obj)
             naturality := by sorry }
  map_id := by sorry
  map_comp := by sorry

theorem goodBivariateRestriction_inverts : bivariateStableEquivalences.IsInvertedBy
    (goodBivariateRestriction ⋙ goodBivariateLocalization) := by sorry

def goodBivariateRestrictionDerived :
    BivariateHomotopyCategory ⥤ goodBivariateEquivalences.Localization :=
  Localization.Construction.lift (goodBivariateRestriction ⋙ goodBivariateLocalization)
    goodBivariateRestriction_inverts

def goodRawFunctionExternal (X Y : Orthogonal.Spectrum) : GoodBivariateDiagram where
  obj P := Orthogonal.derivedSmashPointset
    (Orthogonal.functionSpectrum P.1.unop.obj.obj X)
    (Orthogonal.functionSpectrum P.2.unop.obj.obj Y)
  map f := Orthogonal.smashMap
    (Orthogonal.cofibrantResolution.functor.map
      (Orthogonal.functionMap f.1.unop.hom.hom (𝟙 X)))
    (Orthogonal.cofibrantResolution.functor.map
      (Orthogonal.functionMap f.2.unop.hom.hom (𝟙 Y)))
  map_id := by sorry
  map_comp := by sorry

def goodMixedFunctionTarget (X Y : Orthogonal.Spectrum) : GoodBivariateDiagram where
  obj P := Orthogonal.derivedMappingSpectrum
    (Orthogonal.derivedSmashPointset P.1.unop.obj.obj P.2.unop.obj.obj)
    (Orthogonal.smash X Y)
  map f := Orthogonal.derivedMappingMap
    (Orthogonal.smashMap
      (Orthogonal.cofibrantResolution.functor.map f.1.unop.hom.hom)
      (Orthogonal.cofibrantResolution.functor.map f.2.unop.hom.hom)) (𝟙 _)
  map_id := by sorry
  map_comp := by sorry

/-- Raw function spectra on good objects compare to derived ones using
only Q projection and R inclusion. -/
def goodFunctionExternalMap (X Y : Orthogonal.Spectrum) :
    goodRawFunctionExternal X Y ⟶ goodBivariateRestriction.obj
      (externalProduct (yonedaDiagrams.obj X) (yonedaDiagrams.obj Y)) where
  app P := Orthogonal.smashMap
    (Orthogonal.cofibrantResolution.functor.map
      (Orthogonal.functionToDerived P.1.unop.obj.obj X))
    (Orthogonal.cofibrantResolution.functor.map
      (Orthogonal.functionToDerived P.2.unop.obj.obj Y))
  naturality := by sorry

/-- Actual evaluation tensor, then actual replacements in the domain and
codomain. The fibrant replacement is not assumed lax monoidal. -/
def goodFunctionTensorMap (X Y : Orthogonal.Spectrum) :
    goodRawFunctionExternal X Y ⟶ goodMixedFunctionTarget X Y where
  app P :=
    Orthogonal.smashMap
      (Orthogonal.cofibrantResolution.projection.app
        (Orthogonal.functionSpectrum P.1.unop.obj.obj X))
      (Orthogonal.cofibrantResolution.projection.app
        (Orthogonal.functionSpectrum P.2.unop.obj.obj Y)) ≫
    Orthogonal.functionSmashPairing P.1.unop.obj.obj P.2.unop.obj.obj X Y ≫
    Orthogonal.functionToDerived
      (Orthogonal.smash P.1.unop.obj.obj P.2.unop.obj.obj) (Orthogonal.smash X Y) ≫
    Orthogonal.derivedMappingMap
      (Orthogonal.smashMap
        (Orthogonal.cofibrantResolution.projection.app P.1.unop.obj.obj)
        (Orthogonal.cofibrantResolution.projection.app P.2.unop.obj.obj)) (𝟙 _)
  naturality := by sorry

def goodFunctionTargetMap (X Y : Orthogonal.Spectrum) :
    goodBivariateRestriction.obj
      (dayRestriction (yonedaDiagrams.obj (Orthogonal.derivedSmashPointset X Y))) ⟶
    goodMixedFunctionTarget X Y where
  app _ := Orthogonal.derivedMappingMap (𝟙 _)
    (Orthogonal.smashMap (Orthogonal.cofibrantResolution.projection.app X)
      (Orthogonal.cofibrantResolution.projection.app Y))
  naturality := by sorry

theorem goodFunctionExternalMap_equivalence (X Y : GoodSpectrum) :
    goodBivariateEquivalences (goodFunctionExternalMap X.obj Y.obj) := by sorry
theorem goodFunctionTargetMap_equivalence (X Y : GoodSpectrum) :
    goodBivariateEquivalences (goodFunctionTargetMap X.obj Y.obj) := by sorry

/-- The precise good-object roof; its two inverses invert displayed weak
 equivalences with their exact good-object hypotheses. -/
def goodFunctionTensorPairing (X Y : GoodSpectrum) :
    goodBivariateLocalization.obj (goodBivariateRestriction.obj
      (externalProduct (yonedaDiagrams.obj X.obj) (yonedaDiagrams.obj Y.obj))) ⟶
    goodBivariateLocalization.obj (goodBivariateRestriction.obj
      (dayRestriction (yonedaDiagrams.obj (Orthogonal.derivedSmashPointset X.obj Y.obj)))) := by
  let a := goodBivariateLocalization.map (goodFunctionExternalMap X.obj Y.obj)
  let c := goodBivariateLocalization.map (goodFunctionTargetMap X.obj Y.obj)
  letI : IsIso a := goodBivariateEquivalences.Q_inverts _
    (goodFunctionExternalMap_equivalence X Y)
  letI : IsIso c := goodBivariateEquivalences.Q_inverts _
    (goodFunctionTargetMap_equivalence X Y)
  exact inv a ≫ goodBivariateLocalization.map (goodFunctionTensorMap X.obj Y.obj) ≫ inv c

/-- Extension is asserted only for these homotopy-invariant diagrams.
The comparison retains derived natural transformations of WHOLE diagrams. -/
theorem exists_yonedaTensorPairing (X Y : GoodSpectrum) :
    ∃ a : bivariateStableLocalization.obj
        (externalProduct (yonedaDiagrams.obj X.obj) (yonedaDiagrams.obj Y.obj)) ⟶
      bivariateStableLocalization.obj
        (dayRestriction (yonedaDiagrams.obj (Orthogonal.derivedSmashPointset X.obj Y.obj))),
      goodBivariateRestrictionDerived.map a = goodFunctionTensorPairing X Y := by sorry

def yonedaTensorPairing (X Y : GoodSpectrum) :=
  Classical.choose (exists_yonedaTensorPairing X Y)
theorem yonedaTensorPairing_spec (X Y : GoodSpectrum) :
    goodBivariateRestrictionDerived.map (yonedaTensorPairing X Y) =
      goodFunctionTensorPairing X Y := Classical.choose_spec (exists_yonedaTensorPairing X Y)

theorem yonedaTensorPairing_unique (X Y : GoodSpectrum)
    (a : bivariateStableLocalization.obj
        (externalProduct (yonedaDiagrams.obj X.obj) (yonedaDiagrams.obj Y.obj)) ⟶
      bivariateStableLocalization.obj
        (dayRestriction (yonedaDiagrams.obj (Orthogonal.derivedSmashPointset X.obj Y.obj))))
    (h : goodBivariateRestrictionDerived.map a = goodFunctionTensorPairing X Y) :
    a = yonedaTensorPairing X Y := by sorry

/-- The inverse image of the displayed pairing under derived Day adjunction. -/
def sphericalYonedaTensor (X Y : GoodSpectrum) :
    sphericalDay.obj (sphericalStableLocalization.obj (yonedaDiagrams.obj X.obj),
      sphericalStableLocalization.obj (yonedaDiagrams.obj Y.obj)) ⟶
    sphericalStableLocalization.obj
      (yonedaDiagrams.obj (Orthogonal.derivedSmashPointset X.obj Y.obj)) :=
  (sphericalDayHom _ _ _).symm
    (externalProductComparison.hom.app (yonedaDiagrams.obj X.obj,yonedaDiagrams.obj Y.obj) ≫
      yonedaTensorPairing X Y ≫
      dayRestrictionComparison.inv.app
        (yonedaDiagrams.obj (Orthogonal.derivedSmashPointset X.obj Y.obj)))

/-- The ordinary comparison uses exactly the derived smash, completion
and SAME ordinary Binding monoidal comparison. -/
def ordinaryDerivedSmashIso (R : RealizedFoundation) (X Y : Orthogonal.Spectrum) :
    (ordinaryRealization R).obj (Orthogonal.derivedSmashPointset X Y) ≅
      (ordinaryRealization R).obj X ⊗ (ordinaryRealization R).obj Y := by
  letI := R.tensor
  letI := R.binding.monoidal
  let K := completeFunctor R.coefficientSource ⋙ R.binding.equivalence.functor
  exact K.mapIso (Orthogonal.derivedSmashIso X Y) ≪≫
    (Functor.Monoidal.μIso K _ _).symm

def spectralYonedaPresentedIso (R : RealizedFoundation) (X : Orthogonal.Spectrum) :
    (spectralYoneda R).obj ((ordinaryRealization R).obj X) ≅
      (sphericalToHypercomplete R).obj (sphericalStableLocalization.obj (yonedaDiagrams.obj X)) :=
  (spectralYonedaComparison R).app X ≪≫
    (Localization.fac (hypercompletion R) (hypercompletion_inverts_pointwise R)
      sphericalStableLocalization).symm.app (yonedaDiagrams.obj X)

/-- Canonical spectral-Yoneda tensor pairing on a presentation of ALL
ordinary objects by good spectra. -/
def sourceYonedaTensorGood (R : RealizedFoundation) (X Y : GoodSpectrum) :
    (spectralYoneda R).obj ((ordinaryRealization R).obj X.obj) ⊗
      (spectralYoneda R).obj ((ordinaryRealization R).obj Y.obj) ⟶
    (spectralYoneda R).obj
      ((ordinaryRealization R).obj X.obj ⊗ (ordinaryRealization R).obj Y.obj) :=
  (tensorIso (spectralYonedaPresentedIso R X.obj) (spectralYonedaPresentedIso R Y.obj)).hom ≫
    (sourceDayTensorComparison R
      (sphericalStableLocalization.obj (yonedaDiagrams.obj X.obj))
      (sphericalStableLocalization.obj (yonedaDiagrams.obj Y.obj))).hom ≫
    (sphericalToHypercomplete R).map (sphericalYonedaTensor X Y) ≫
    (spectralYonedaPresentedIso R (Orthogonal.derivedSmashPointset X.obj Y.obj)).inv ≫
    (spectralYoneda R).map (ordinaryDerivedSmashIso R X.obj Y.obj).hom

/-- The mate determined by a proposed realization monoidal structure. -/
def realizationTensorMate (R : RealizedFoundation) (m : (realization R).Monoidal)
    (X Y : R.foundation.Spectrum) :
    (spectralYoneda R).obj X ⊗ (spectralYoneda R).obj Y ⟶
      (spectralYoneda R).obj (X ⊗ Y) :=
  letI := m
  let a := (underlyingSpectrumRealization R).adjunction
  a.homEquiv _ _ ((Functor.Monoidal.μIso (realization R) _ _).inv ≫
    (a.counit.app X ⊗ₘ a.counit.app Y))

/-- These equations fix BOTH tensor and unit maps. The first is tested
on all good presentations; naturality of the proposed monoidal structure
extends it uniquely to all ordinary objects. No local Adams result appears. -/
structure CanonicalRecoveryMonoidal (R : RealizedFoundation)
    (m : (realization R).Monoidal) : Prop where
  tensor : ∀ X Y : GoodSpectrum,
    realizationTensorMate R m ((ordinaryRealization R).obj X.obj)
      ((ordinaryRealization R).obj Y.obj) = sourceYonedaTensorGood R X Y
  unit : letI := m
    (underlyingSpectrumRealization R).adjunction.homEquiv _ _
      (Functor.Monoidal.εIso (realization R)).inv =
        (nuToSpectralYoneda R).app (StableHomotopy.SphereSpectrum (C := R.foundation.Spectrum))

/-- Supplement to Binding for consumers of recovery's tensor maps.
The same realizationIso must be monoidal for the exact source structure. -/
structure RecoveryMonoidalBinding (R : RealizedFoundation)
    {Syn : Type 1} [SyntheticCategory.{1,0} Syn] [SymmetricCategory Syn]
    {N : NuFunctorData R.foundation.Spectrum Syn} {L : LambdaRecovery N}
    (B : Binding R N L) (m : L.realization.Monoidal) where
  sourceMonoidal : (realization R).Monoidal
  canonical : CanonicalRecoveryMonoidal R sourceMonoidal
  compatible : letI := B.monoidal; letI := m; letI := sourceMonoidal
    NatTrans.IsMonoidal B.realizationIso.hom

end
end KIP126.Synthetic.Source
