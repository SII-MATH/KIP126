import KIP126.Def.StableHomotopy.Source.Orthogonal.Function
import Mathlib.CategoryTheory.Localization.Equivalence

/-! The orthogonal and sequential presentations of the SAME stable category.
The comparison functor is induced by the displayed forgetful functor and
the actual stable homotopy equivalences; it is not an unspecified
equivalence of unrelated categories. -/
namespace KIP126.StableHomotopy.Source.Orthogonal
open CategoryTheory
noncomputable section

abbrev Ho := stableEquivalences.Localization
abbrev toHo : Spectrum ⥤ Ho := stableEquivalences.Q

theorem forget_inverts :
    stableEquivalences.IsInvertedBy (forget ⋙ Source.stabilizeFunctor) := by
  intro E F f h
  exact Source.stableEquivalences.Q_inverts (forget.map f) h

def forgetLocalized : Ho ⥤ Source.StableCategory :=
  Localization.Construction.lift (forget ⋙ Source.stabilizeFunctor) forget_inverts

theorem forgetLocalized_fac : toHo ⋙ forgetLocalized = forget ⋙ Source.stabilizeFunctor :=
  Localization.Construction.fac _ _

/-- The ordinary stable comparison theorem for orthogonal spectra (not the
positive model and not a symmetric-spectrum naive-pi assertion). -/
instance forgetLocalized_isEquivalence : forgetLocalized.IsEquivalence := by sorry

def prespectrumEquivalence : Ho ≌ Source.StableCategory :=
  forgetLocalized.asEquivalence

/-- Homotopy invariance of the explicitly defined derived function spectrum,
in both variables. This retains its spectrum, rather than replacing it by
the set of morphisms in Ho. -/
theorem derivedMappingMap_equivalence {E E' F F' : Spectrum}
    (f : E' ⟶ E) (g : F ⟶ F')
    (hf : stableEquivalences f) (hg : stableEquivalences g) :
    stableEquivalences (derivedMappingMap f g) := by sorry

/-- HF2 completion of this SAME orthogonal stable presentation. -/
def completedEquivalences (H : Source.Mod2Source) : MorphismProperty Ho :=
  (Source.mod2Equivalences H).inverseImage forgetLocalized
abbrev CompletedHo (H : Source.Mod2Source) := (completedEquivalences H).Localization

theorem completedForget_inverts (H : Source.Mod2Source) :
    (completedEquivalences H).IsInvertedBy (forgetLocalized ⋙ Source.completeFunctor H) := by
  intro E F f h
  exact (Source.mod2Equivalences H).Q_inverts (forgetLocalized.map f) h

def completedForget (H : Source.Mod2Source) : CompletedHo H ⥤ Source.CompleteCategory H :=
  Localization.Construction.lift (forgetLocalized ⋙ Source.completeFunctor H)
    (completedForget_inverts H)

instance completedForget_isEquivalence (H : Source.Mod2Source) :
    (completedForget H).IsEquivalence := by sorry
def completedPrespectrumEquivalence (H : Source.Mod2Source) :
    CompletedHo H ≌ Source.CompleteCategory H := (completedForget H).asEquivalence

end
end KIP126.StableHomotopy.Source.Orthogonal
