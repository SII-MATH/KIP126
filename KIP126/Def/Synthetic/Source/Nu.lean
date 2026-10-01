import KIP126.Def.Synthetic.Source.Presheaves
import KIP126.Def.StableHomotopy.Source.Orthogonal.Localization
import KIP126.Def.StableHomotopy.Source.Orthogonal.DerivedSmash

/-!
The synthetic analogue is defined before passing to homotopy categories:
P maps to the connective cover of the actual derived FUNCTION SPECTRUM
F(P,X), followed by hypercomplete spherical sheaf localization.  In
particular, the representable is not the discrete set [P,X].

The final lift is along the HF2 localization of this same orthogonal
presentation.  Pstragowski, Synthetic spectra and the cellular motivic
category, the definition of nu and Section 5.1, supplies the mathematical
source for the hypercomplete convention.  Constructing the replacements
and proving descent remain model-construction obligations.
-/
namespace KIP126.Synthetic.Source
open CategoryTheory CategoryTheory.Functor Opposite
open KIP126.StableHomotopy.Source
noncomputable section

/-- A functorial connective cover, fixed by its map to X and its stable
homotopy groups in every integer degree p-q.  These conditions determine
the connective truncation in the ordinary stable category. -/
structure ConnectiveCover where
  functor : Orthogonal.Spectrum ⥤ Orthogonal.Spectrum
  counit : functor ⟶ 𝟭 Orthogonal.Spectrum
  negative : ∀ (X : Orthogonal.Spectrum) (p q : ℕ), p < q →
    Subsingleton (StablePi (Orthogonal.forget.obj (functor.obj X)) p q)
  nonnegative : ∀ (X : Orthogonal.Spectrum) (p q : ℕ), q ≤ p →
    Function.Bijective (stableMap (Orthogonal.forget.map (counit.app X)) p q)

theorem exists_connectiveCover : Nonempty ConnectiveCover := by sorry
def connectiveCover : ConnectiveCover := Classical.choice exists_connectiveCover

/-- The formula uses the actual orthogonal-spectrum internal function
object with the specified cofibrant and fibrant replacements. -/
def connectiveRepresentable (X : Orthogonal.Spectrum) : SpectralPresheaf where
  obj P := connectiveCover.functor.obj
    (Orthogonal.derivedMappingSpectrum P.unop.obj X)
  map f := connectiveCover.functor.map
    (Orthogonal.derivedMappingMap f.unop.hom (𝟙 X))
  map_id := by sorry
  map_comp := by sorry

def connectiveRepresentableMap {X Y : Orthogonal.Spectrum} (f : X ⟶ Y) :
    connectiveRepresentable X ⟶ connectiveRepresentable Y where
  app P := connectiveCover.functor.map
    (Orthogonal.derivedMappingMap (𝟙 P.unop.obj) f)
  naturality := by sorry

theorem connectiveRepresentable_homotopyInvariant (X : Orthogonal.Spectrum) :
    HomotopyInvariant (connectiveRepresentable X) := by sorry

theorem connectiveRepresentable_spherical (X : Orthogonal.Spectrum) :
    Spherical (connectiveRepresentable X) := by sorry

def nuDiagrams : Orthogonal.Spectrum ⥤ SphericalDiagram where
  obj X := ⟨connectiveRepresentable X,
    connectiveRepresentable_homotopyInvariant X, connectiveRepresentable_spherical X⟩
  map f := ⟨connectiveRepresentableMap f⟩
  map_id := by sorry
  map_comp := by sorry

def nuPointSet (R : RealizedFoundation) :
    Orthogonal.Spectrum ⥤ HypercompleteCategory R := nuDiagrams ⋙ hypercompletion R

/-- Completion is tested by the already specified ordinary HF2 source,
not by a newly chosen synthetic homology operation. -/
def completeWeakEquivalences (R : RealizedFoundation) :
    MorphismProperty Orthogonal.Spectrum :=
  (mod2Equivalences R.coefficientSource).inverseImage
    (Orthogonal.forget ⋙ stabilizeFunctor)

def ordinaryRealization (R : RealizedFoundation) :
    Orthogonal.Spectrum ⥤ R.foundation.Spectrum :=
  letI := R.tensor
  Orthogonal.forget ⋙ sourceFunctor R.coefficientSource ⋙ R.binding.equivalence.functor

/-- The orthogonal sphere generator and the source S0 generator agree
under the previously fixed comparison; the last iso is R's same unit. -/
def ordinarySphereComparison (R : RealizedFoundation) :
    (ordinaryRealization R).obj Orthogonal.sphere ≅
      KIP126.StableHomotopy.SphereSpectrum (C := R.foundation.Spectrum) := by
  letI := R.tensor
  exact R.binding.equivalence.functor.mapIso
    ((completeFunctor R.coefficientSource).mapIso Orthogonal.sphereComparison) ≪≫
      R.binding.sphereIso

/-- A presentation theorem for the displayed functor.  This does not
postulate an arbitrary new realization of spectra. -/
instance ordinaryRealization_isLocalization (R : RealizedFoundation) :
    (ordinaryRealization R).IsLocalization (completeWeakEquivalences R) := by sorry

/-- Hypercompletion is essential here.  The analogous claim for all
uncompleted synthetic spectra would not identify HF2 completion. -/
theorem nuPointSet_inverts (R : RealizedFoundation) :
    (completeWeakEquivalences R).IsInvertedBy (nuPointSet R) := by sorry

/-- The same completed ordinary foundation used by the classical Adams
tower is the domain of nu. -/
def nu (R : RealizedFoundation) :
    R.foundation.Spectrum ⥤ HypercompleteCategory R :=
  Localization.lift (nuPointSet R) (nuPointSet_inverts R) (ordinaryRealization R)

def nu_comparison (R : RealizedFoundation) :
    ordinaryRealization R ⋙ nu R ≅ nuPointSet R :=
  Localization.fac (nuPointSet R) (nuPointSet_inverts R) (ordinaryRealization R)

/-- This iso identifies the Day unit presentation with nu of the same
completed ordinary sphere, with its map fixed by the actual generators. -/
def nuSphereComparison (R : RealizedFoundation) :
    (hypercompletion R).obj (nuDiagrams.obj Orthogonal.sphere) ≅
      (nu R).obj (KIP126.StableHomotopy.SphereSpectrum (C := R.foundation.Spectrum)) :=
  ((nu_comparison R).app Orthogonal.sphere).symm ≪≫
    (nu R).mapIso (ordinarySphereComparison R)

end
end KIP126.Synthetic.Source
