import KIP126.Def.StableHomotopy.Source.Realization
import KIP126.Def.StableHomotopy.Source.Orthogonal.Function
import Mathlib.CategoryTheory.ObjectProperty.FullSubcategory
import Mathlib.CategoryTheory.Sites.PrecoverageToGrothendieck
import Mathlib.CategoryTheory.Localization.Opposite

/-!
The finite HF₂-projective site BEFORE HF₂ completion. The site objects are
actual prespectra of finite stable homotopy type, not objects of the completed
homotopy category with a discrete replacement for their mapping spaces.

A finite spectrum is a retract of a desuspended suspension spectrum of a
compact based CW space. This is the usual finite-spectrum class. Over the
graded field HF₂_* every finite spectrum is HF₂-projective. Covers are actual
maps inducing surjections in every HF₂-homology degree. The topology on the
homotopy category is used ONLY to sheafify homotopy GROUPS of higher presheaves;
it is not the domain of the spectrum-valued presheaves below.
-/
namespace KIP126.Synthetic.Source
open CategoryTheory
open KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology
open KIP126.StableHomotopy.Source
noncomputable section

/-- A concrete finite stable homotopy type, including retracts. -/
def FiniteSpectrum : ObjectProperty Prespectrum := fun E =>
  ∃ (X : BasedSpace) (_ : CellularSpace X) (_ : CompactSpace X) (p q : ℕ)
    (i : stabilizeFunctor.obj E ⟶
      stabilizeFunctor.obj (shift (suspensionSpectrum X) p q))
    (r : stabilizeFunctor.obj (shift (suspensionSpectrum X) p q) ⟶
      stabilizeFunctor.obj E), i ≫ r = 𝟙 _

def FiniteOrthogonal : ObjectProperty Orthogonal.Spectrum :=
  fun E => FiniteSpectrum (Orthogonal.forget.obj E)
abbrev FiniteSite := FiniteOrthogonal.FullSubcategory
abbrev finiteOrthogonalInclusion : FiniteSite ⥤ Orthogonal.Spectrum := FiniteOrthogonal.ι
abbrev finiteInclusion : FiniteSite ⥤ Prespectrum :=
  finiteOrthogonalInclusion ⋙ Orthogonal.forget

def siteWeakEquivalences : MorphismProperty FiniteSite :=
  fun _ _ f => Orthogonal.stableEquivalences f.hom

abbrev HoFiniteSite := siteWeakEquivalences.Localization
abbrev finiteLocalization : FiniteSite ⥤ HoFiniteSite := siteWeakEquivalences.Q

/-- The same realization used for the standard sphere. Completing the image
here only computes HF₂ homology; it does not replace the finite site. -/
def siteRealization (R : RealizedFoundation) : FiniteSite ⥤ R.foundation.Spectrum :=
  letI := R.tensor
  finiteInclusion ⋙ sourceFunctor R.coefficientSource ⋙ R.binding.equivalence.functor

theorem siteRealization_inverts (R : RealizedFoundation) :
    siteWeakEquivalences.IsInvertedBy (siteRealization R) := by
  sorry

def hoSiteRealization (R : RealizedFoundation) :
    HoFiniteSite ⥤ R.foundation.Spectrum :=
  Localization.Construction.lift (siteRealization R) (siteRealization_inverts R)

/-- Every integer homology degree is tested, with the SAME coefficient
spectrum and SAME source realization as the ordinary sphere Adams tower. -/
def HomologyCover (R : RealizedFoundation) {P Q : HoFiniteSite} (f : P ⟶ Q) : Prop :=
  ∀ n : ℤ, Function.Surjective
    (Mod2Homology.pushforward R.foundation.hf2 ((hoSiteRealization R).map f) n)

def homologyPrecoverage (R : RealizedFoundation) : Precoverage HoFiniteSite where
  coverings Q := {S | ∃ (P : HoFiniteSite) (f : P ⟶ Q),
    HomologyCover R f ∧ S = Presieve.singleton f}

def homologyTopology (R : RealizedFoundation) : GrothendieckTopology HoFiniteSite :=
  (homologyPrecoverage R).toGrothendieck

/-- Homotopy coproducts are tested in the ACTUAL stable localization; this
predicate does not supply an unrelated addition or chosen mapping set. -/
def IsFiniteCoproduct {P Q Z : FiniteSite} (i : P ⟶ Z) (j : Q ⟶ Z) : Prop :=
  ∀ T : Prespectrum, Function.Bijective
    (fun f : stabilizeFunctor.obj (finiteInclusion.obj Z) ⟶ stabilizeFunctor.obj T =>
      (stabilizeFunctor.map (finiteInclusion.map i) ≫ f, stabilizeFunctor.map (finiteInclusion.map j) ≫ f))

def IsZeroSpectrum (E : Prespectrum) : Prop :=
  ∀ p q : ℕ, Subsingleton (StablePi E p q)

/-- Finite-source projectivity is a property to prove, not an extra arbitrary
choice of the site's object class. It uses the actual HF₂_* of these objects. -/
theorem finite_mod2_homology_finite (R : RealizedFoundation) (P : FiniteSite)
    (n : ℤ) : Finite (Mod2Homology R.foundation.hf2 n ((siteRealization R).obj P)) := by
  sorry

end
end KIP126.Synthetic.Source
