import KIP126.Def.ClassicalAdams.Detection.Convergence.Data

namespace KIP126.Classical.Adams.TowerDetection
open CategoryTheory CategoryTheory.MonoidalCategory KIP126.StableHomotopy
open KIP126.Core.SpectralSequence
universe u v
noncomputable section
variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)] {H : C} (unit : 𝟙_ C ⟶ H)
/-- KJ=0 puts the cofiber image of an ACTUAL tower lift in every cycle
submodule, with one common E₁ representative.  The class may be zero; no
nonzero permanent survival or convergence assertion is included here. -/
theorem exists_liftRepresentative (X : C) (p : ℤ × ℤ)
    (a : HomotopyGroup (p.2-p.1) (adamsTowerAt unit X p.1)) :
    ∃ z : InfiniteRepresentative unit X p,
      infiniteRepresentativeE1 unit X p z = adamsJ unit X p.1 p.2 a := by sorry

end
end KIP126.Classical.Adams.TowerDetection
