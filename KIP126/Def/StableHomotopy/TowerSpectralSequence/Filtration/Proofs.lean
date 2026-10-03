import KIP126.Def.StableHomotopy.TowerSpectralSequence.Filtration.Data
import KIP126.Def.StableHomotopy.TowerSpectralSequence.Pages.Proofs

namespace KIP126.StableHomotopy.TowerSpectralSequence

universe u v
variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)] (T : DescendingTower C) (P : C)

theorem cycleSubmodule_antitone (k n : ℤ) : Antitone (cycleSubmodule T P k n) := by
  sorry

theorem boundarySubmodule_monotone (k n : ℤ) : Monotone (boundarySubmodule T P k n) := by
  sorry

theorem cycleSubmodule_zero (k n : ℤ) : cycleSubmodule T P k n 0 = ⊤ :=
  cycles_one T P k n

theorem boundarySubmodule_le_cycle (k n : ℤ) (r : WithTop ℕ) :
    boundarySubmodule T P k n r ≤ cycleSubmodule T P k n r := by
  sorry

end KIP126.StableHomotopy.TowerSpectralSequence
