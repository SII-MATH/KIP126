import KIP126.Def.Synthetic.Source.Nu
import Mathlib.CategoryTheory.Adjunction.FullyFaithful

/-! The underlying-spectrum realization is fixed by its right adjoint,
the actual spectral Yoneda functor.  In particular it is NOT specified as
an adjoint of nu.  The connective-cover counit gives the canonical map
from nu to spectral Yoneda before any localization is performed.

This is Pstragowski's Section 4.3 construction with the Section 5.1
hypercomplete convention: its ordinary target is the same HF2-local
foundation, not an independently chosen category of spectra.
-/
namespace KIP126.Synthetic.Source
open CategoryTheory CategoryTheory.Functor Opposite
open KIP126.StableHomotopy.Source
noncomputable section

def spectralRepresentable (X : Orthogonal.Spectrum) : SpectralPresheaf where
  obj P := Orthogonal.derivedMappingSpectrum P.unop.obj X
  map f := Orthogonal.derivedMappingMap f.unop.hom (𝟙 X)
  map_id := by sorry
  map_comp := by sorry

def spectralRepresentableMap {X Y : Orthogonal.Spectrum} (f : X ⟶ Y) :
    spectralRepresentable X ⟶ spectralRepresentable Y where
  app P := Orthogonal.derivedMappingMap (𝟙 P.unop.obj) f
  naturality := by sorry

theorem spectralRepresentable_homotopyInvariant (X : Orthogonal.Spectrum) :
    HomotopyInvariant (spectralRepresentable X) := by sorry

theorem spectralRepresentable_spherical (X : Orthogonal.Spectrum) :
    Spherical (spectralRepresentable X) := by sorry

def yonedaDiagrams : Orthogonal.Spectrum ⥤ SphericalDiagram where
  obj X := ⟨spectralRepresentable X,
    spectralRepresentable_homotopyInvariant X, spectralRepresentable_spherical X⟩
  map f := ⟨spectralRepresentableMap f⟩
  map_id := by sorry
  map_comp := by sorry

def connectiveCounit (X : Orthogonal.Spectrum) :
    connectiveRepresentable X ⟶ spectralRepresentable X where
  app P := connectiveCover.counit.app (Orthogonal.derivedMappingSpectrum P.unop.obj X)
  naturality := by sorry

def nuToYonedaDiagrams : nuDiagrams ⟶ yonedaDiagrams where
  app X := ⟨connectiveCounit X⟩
  naturality := by sorry

def yonedaPointSet (R : RealizedFoundation) :
    Orthogonal.Spectrum ⥤ HypercompleteCategory R := yonedaDiagrams ⋙ hypercompletion R

theorem yonedaPointSet_inverts (R : RealizedFoundation) :
    (completeWeakEquivalences R).IsInvertedBy (yonedaPointSet R) := by sorry

abbrev spectralYoneda (R : RealizedFoundation) :
    R.foundation.Spectrum ⥤ HypercompleteCategory R :=
  Localization.lift (yonedaPointSet R) (yonedaPointSet_inverts R) (ordinaryRealization R)

def spectralYonedaComparison (R : RealizedFoundation) :
    ordinaryRealization R ⋙ spectralYoneda R ≅ yonedaPointSet R :=
  Localization.fac (yonedaPointSet R) (yonedaPointSet_inverts R) (ordinaryRealization R)

def nuToSpectralYoneda (R : RealizedFoundation) : nu R ⟶ spectralYoneda R := by
  letI : Localization.Lifting (ordinaryRealization R) (completeWeakEquivalences R)
      (nuPointSet R) (nu R) := by unfold nu; infer_instance
  exact Localization.liftNatTrans (ordinaryRealization R) (completeWeakEquivalences R)
    (nuPointSet R) (yonedaPointSet R) (nu R) (spectralYoneda R)
    (whiskerRight nuToYonedaDiagrams (hypercompletion R))

/-- This is a fully faithful embedding of HF2-local ordinary spectra.
For uncompleted source diagrams the corresponding target would instead
be all spectra; the two conventions are deliberately not mixed. -/
theorem spectralYoneda_fullyFaithful (R : RealizedFoundation) :
    Nonempty (spectralYoneda R).FullyFaithful := by sorry

/-- The right adjoint is already constructed from the derived function
spectrum. Thus this record cannot be filled by a new unrelated realization.
The adjunction fixes the functor and unit up to unique compatible iso. -/
structure UnderlyingSpectrumRealization (R : RealizedFoundation) where
  functor : HypercompleteCategory R ⥤ R.foundation.Spectrum
  adjunction : functor ⊣ spectralYoneda R

theorem exists_underlyingSpectrumRealization (R : RealizedFoundation) :
    Nonempty (UnderlyingSpectrumRealization R) := by sorry

def underlyingSpectrumRealization (R : RealizedFoundation) :
    UnderlyingSpectrumRealization R := Classical.choice (exists_underlyingSpectrumRealization R)

abbrev realization (R : RealizedFoundation) :
    HypercompleteCategory R ⥤ R.foundation.Spectrum := (underlyingSpectrumRealization R).functor

/-- The canonical recovery map uses the explicit connective-cover map,
then the counit of realization/spectral-Yoneda. -/
def nuRecoveryMap (R : RealizedFoundation) : nu R ⋙ realization R ⟶ 𝟭 R.foundation.Spectrum :=
  whiskerRight (nuToSpectralYoneda R) (realization R) ≫
    (underlyingSpectrumRealization R).adjunction.counit

instance nuRecoveryMap_isIso (R : RealizedFoundation) : IsIso (nuRecoveryMap R) := by sorry

def nuRecoveryIso (R : RealizedFoundation) :
    nu R ⋙ realization R ≅ 𝟭 R.foundation.Spectrum := asIso (nuRecoveryMap R)

end
end KIP126.Synthetic.Source
