import KIP126.Def.StableHomotopy.TowerSpectralSequence.Differential.Cycles.Data

/-! Boundary annihilation for the specified linear map on cycles. -/

namespace KIP126.StableHomotopy.TowerSpectralSequence

open CategoryTheory

universe u v
variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)] (T : DescendingTower C) (P : C)

/-- Actual q-boundaries are killed by the quotient-valued differential. -/
theorem boundaries_le_differential_ker (q : ℕ) (hq : 1 ≤ q) (k n : ℤ) :
    cycleBoundaries T P q hq k n ≤
      LinearMap.ker (differentialOnCycles T P q hq k n) := by
  sorry

end KIP126.StableHomotopy.TowerSpectralSequence
