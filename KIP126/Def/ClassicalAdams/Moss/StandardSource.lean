import KIP126.Def.ClassicalAdams.StandardMilnor
import KIP126.Def.ClassicalAdams.Moss.Statement.Predicates
import KIP126.Def.ClassicalAdams.SphereClasses.Product.Data
import KIP126.Def.ClassicalAdams.StandardSphere.Sequence.Data
import KIP126.Def.ClassicalAdams.Detection.Predicates
import KIP126.Def.ClassicalAdams.TowerNaturality.Layer.Data

/-! The structural specialization of the actual mapping Adams resolution
to the fixed sphere. This contains no Moss convergence assertion. In
particular an E2 ring isomorphism alone is not a comparison of the towers,
their defining systems and their detection maps.

The page isomorphisms below are specified on ALL common cycle
representatives by the actual map induced by the closed unit adjunction.
Thus they cannot be replaced by arbitrary linear automorphisms. The
composition pairing already specifies its values on actual long layers.
-/
namespace KIP126.Classical.Adams.Moss
open CategoryTheory CategoryTheory.MonoidalCategory
open KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology
open KIP126.Core.SpectralSequence
noncomputable section

private abbrev C := standardFoundation.Spectrum
private abbrev H := standardFoundation.hf2
private abbrev S : C := SphereSpectrum

/-- The actual closed unit adjunction, not another sphere identification. -/
def standardMappingSphereIso : mappingObject S S ≅ S :=
  MonoidalClosed.unitIsoSelf S

/-- Structural construction/comparison target. The existence and comparison
proof is internal model debt, not an accepted external result. -/
structure StandardMossModel
    (c : TowerDetection.Convergence H.unit S) where
  composition : CompositionPairing H standardMod2Ring
  coherent : composition.Coherent H standardMod2Ring
  convergence : MappingAdamsConvergence H.unit S S
  canonical : TowerDetection.CanonicalIdentification H.unit (mappingObject S S)
    convergence.identification
  page : ∀ (r : ℤ) (p : ℤ × ℤ),
    (mappingSequence H.unit S S).Page r p ≃ₗ[ℤ] sphereAdamsData.Page r p
  representatives : ∀ (r : ℤ) (p : ℤ × ℤ), 2 ≤ r →
    let E := mappingSequence H.unit S S
    let n : WithTop ℕ := ↑(r - 2).toNat
    ∀ z : (Subobject.underlying.obj ((E.ssData p).Z n) : ModuleCat ℤ),
    ∃ z' : (Subobject.underlying.obj ((sphereAdamsData.ssData p).Z n) : ModuleCat ℤ),
      (((sphereAdamsData.ssData p).Z n).arrow z').val =
        adamsE1Induced H.unit standardMappingSphereIso.hom p.1 p.2
          ((((E.ssData p).Z n).arrow z).val) ∧
      page r p ((E.ssData p).pageπ n z) =
        (sphereAdamsData.ssData p).pageπ n z'
  product : ∀ (s t s' t' : ℕ)
    (a : (mappingSequence H.unit S S).Page 2 ((s:ℤ),(t:ℤ)))
    (b : (mappingSequence H.unit S S).Page 2 ((s':ℤ),(t':ℤ))),
    page 2 ((s:ℤ)+(s':ℤ),(t:ℤ)+(t':ℤ))
      (composition.comp S S S 2 ((s:ℤ),(t:ℤ)) ((s':ℤ),(t':ℤ)) a b) =
      Sphere.Internal.product H standardMilnorCooperations
        (page 2 ((s:ℤ),(t:ℤ)) a) (page 2 ((s':ℤ),(t':ℤ)) b)
  detection : ∀ (r : ℤ) (p : ℤ × ℤ), 2 ≤ r →
    ∀ (a : (mappingSequence H.unit S S).Page r p)
      (α : mappingAbutment S S (p.2-p.1)),
      DetectsAbutment H.unit S S convergence r p a α ↔
        ∃ x : sphereAdamsData.Page 2 p,
          RepresentsOnPage sphereAdamsData r p x (page r p a) ∧
          TowerDetection.Detects c p x
            (inducedMap standardMappingSphereIso.hom (p.2-p.1) α)
  detection_composition : composition.DetectionCompatible H standardMod2Ring
    S S S convergence convergence convergence

/-- Construction of the actual standard mapping model. The data are fully
constrained above; this placeholder supplies neither a paper result nor C. -/
def standardMossModel (c : TowerDetection.Convergence H.unit S) :
    StandardMossModel c := by sorry

end
end KIP126.Classical.Adams.Moss
