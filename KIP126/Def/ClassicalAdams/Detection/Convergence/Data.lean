import KIP126.Def.ClassicalAdams.Detection.Proofs

namespace KIP126.Classical.Adams.TowerDetection
open CategoryTheory CategoryTheory.MonoidalCategory KIP126.StableHomotopy
open KIP126.Core.SpectralSequence
universe u v
noncomputable section
variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)] {H : C} (unit : 𝟙_ C ⟶ H)
def filtration (X : C) : Filtration (homotopy X) where
  F s n := (ModuleCat.subobjectModule _).symm (filtrationSubmodule unit X s n)
  mono s n := (ModuleCat.subobjectModule _).symm.monotone
    (filtrationSubmodule_antitone unit X n (by omega : s ≤ s + 1))

/-- Convergence to the actual homotopy of the *same* object, with the
filtration already constructed. No F₂-vector-space structure is imposed on π. -/
structure Convergence (X : C) where
  identification : ∀ p : ℤ × ℤ,
    ((adamsTowerInternalSpectralSequence unit X).ssData p).eInfty ≅
      (filtration unit X).associatedGraded p.1 (p.2 - p.1)
end
end KIP126.Classical.Adams.TowerDetection
