import KIP126.Def.Synthetic.Source.Day

/-!
Derived Yoneda on spherical spectral PRESHEAVES, before sheafification.
The evaluation map is defined on the actual identity represented by
Q(P) -> P -> R(P), not an arbitrary bijection of Hom sets.  This is the
presheaf form of Pstragowski's
`yoneda_lemma_for_synthetic_spectra_and_explicit_formula_for_homotopy_groups`.
It applies to every spherical presheaf, without a connectivity assumption.
It must not be used to evaluate an arbitrary un-hypercompleted presentation
of a hypercomplete object; hypercompletion can change its value at P.
-/
namespace KIP126.Synthetic.Source
open CategoryTheory CategoryTheory.Functor Opposite
open KIP126.StableHomotopy.Source
noncomputable section

/-- The actual representative of the identity in the derived function
spectrum. Its mth component is Q(P)_m -> P_m -> R(P)_m. -/
def functionIdentity (P : Orthogonal.Spectrum) :
    Orthogonal.FunctionLevel (Orthogonal.cofibrantResolution.functor.obj P)
      (Orthogonal.fibrantResolution.functor.obj P) 0 where
  level m := by
    simpa only [Nat.zero_add] using
      (Orthogonal.cofibrantResolution.projection.app P).level m ≫
        (Orthogonal.fibrantResolution.inclusion.app P).level m
  naturality := by sorry

def functionIdentityClass (P : Orthogonal.Spectrum) :
    StablePi (Orthogonal.forget.obj (Orthogonal.derivedMappingSpectrum P P)) 0 0 :=
  Quot.mk _ ⟨0, ⟨ContinuousMap.const _ (functionIdentity P), by
    intro t ht
    rcases ht with ⟨j,_⟩
    exact PEmpty.elim j⟩⟩

/-- Connective truncation induces the SPECIFIED pi0 bijection. -/
def connectiveIdentityClass (P : Orthogonal.Spectrum) :
    StablePi (Orthogonal.forget.obj
      (connectiveCover.functor.obj (Orthogonal.derivedMappingSpectrum P P))) 0 0 :=
  (Equiv.ofBijective
    (stableMap (Orthogonal.forget.map (connectiveCover.counit.app
      (Orthogonal.derivedMappingSpectrum P P))) 0 0)
    (connectiveCover.nonnegative (Orthogonal.derivedMappingSpectrum P P) 0 0
      (Nat.le_refl 0))).symm (functionIdentityClass P)

def presentedEvaluation (P : FiniteSite) : SphericalDiagram ⥤ Type where
  obj F := StablePi (Orthogonal.forget.obj (F.obj.obj (op P))) 0 0
  map f := TypeCat.ofHom (stableMap (Orthogonal.forget.map (f.hom.app (op P))) 0 0)
  map_id := by sorry
  map_comp := by sorry

theorem presentedEvaluation_inverts (P : FiniteSite) :
    diagramStableEquivalences.IsInvertedBy (presentedEvaluation P) := by sorry

def derivedEvaluation (P : FiniteSite) : SphericalHomotopyCategory ⥤ Type :=
  Localization.lift (presentedEvaluation P) (presentedEvaluation_inverts P)
    sphericalStableLocalization

def derivedEvaluationComparison (P : FiniteSite) :
    sphericalStableLocalization ⋙ derivedEvaluation P ≅ presentedEvaluation P :=
  Localization.fac (presentedEvaluation P) (presentedEvaluation_inverts P)
    sphericalStableLocalization

def representedIdentity (P : FiniteSite) :
    (derivedEvaluation P).obj (sphericalStableLocalization.obj (nuDiagrams.obj P.obj)) :=
  (derivedEvaluationComparison P).inv.app (nuDiagrams.obj P.obj)
    (connectiveIdentityClass P.obj)

/-- Evaluation at the actual identity, including the displayed comparison
between raw diagrams and their homotopical localization. -/
def yonedaEvaluation (P : FiniteSite) (F : SphericalHomotopyCategory)
    (f : sphericalStableLocalization.obj (nuDiagrams.obj P.obj) ⟶ F) :
    (derivedEvaluation P).obj F :=
  (derivedEvaluation P).map f (representedIdentity P)

theorem yonedaEvaluation_bijective (P : FiniteSite) (F : SphericalHomotopyCategory) :
    Function.Bijective (yonedaEvaluation P F) := by sorry

def derivedYoneda (P : FiniteSite) (F : SphericalHomotopyCategory) :
    (sphericalStableLocalization.obj (nuDiagrams.obj P.obj) ⟶ F) ≃
      (derivedEvaluation P).obj F :=
  Equiv.ofBijective (yonedaEvaluation P F) (yonedaEvaluation_bijective P F)

def yonedaLift (P : FiniteSite) (F : SphericalHomotopyCategory)
    (x : (derivedEvaluation P).obj F) :
    sphericalStableLocalization.obj (nuDiagrams.obj P.obj) ⟶ F :=
  (derivedYoneda P F).symm x

theorem yonedaLift_spec (P : FiniteSite) (F : SphericalHomotopyCategory)
    (x : (derivedEvaluation P).obj F) : yonedaEvaluation P F (yonedaLift P F x) = x :=
  (derivedYoneda P F).apply_symm_apply x

end
end KIP126.Synthetic.Source
