import KIP126.Def.StableHomotopy.TowerSpectralSequence.Pages.Data
import KIP126.Def.StableHomotopy.DescendingTower.Proofs
import KIP126.Def.StableHomotopy.RepresentedHom.Proofs

/-! Properties of the specified kernel/image pages. These obligations do
not select an exact couple or substitute a new spectral-sequence object. -/

namespace KIP126.StableHomotopy.TowerSpectralSequence

open CategoryTheory

universe u v
variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)] (T : DescendingTower C) (P : C)

theorem cycleLift_spec (q : ℕ) (hq : 1 ≤ q) (k n : ℤ)
    (x : cycles T P q hq k n) :
    I T P (n - 1) (k + 1) (k + q) (by omega) (cycleLift T P q hq k n x) =
      K T P k n x := Classical.choose_spec x.property

theorem J_mem_cycles (q : ℕ) (hq : 1 ≤ q) (k n : ℤ)
    (x : ShiftedHom P n (T.obj k)) : J T P k n x ∈ cycles T P q hq k n := by
  sorry

theorem cycles_one (k n : ℤ) : cycles T P 1 (by omega) k n = ⊤ := by
  sorry

theorem boundaries_one (k n : ℤ) : boundaries T P 1 (by omega) k n = ⊥ := by
  sorry

theorem cycles_antitone (q r : ℕ) (hq : 1 ≤ q) (hr : 1 ≤ r) (hqr : q ≤ r)
    (k n : ℤ) : cycles T P r hr k n ≤ cycles T P q hq k n := by
  sorry

theorem boundaries_monotone (q r : ℕ) (hq : 1 ≤ q) (hr : 1 ≤ r) (hqr : q ≤ r)
    (k n : ℤ) : boundaries T P q hq k n ≤ boundaries T P r hr k n := by
  sorry

/-- Every boundary has zero connecting image, hence is a cycle at every level. -/
theorem boundaries_le_cycles (q r : ℕ) (hq : 1 ≤ q) (hr : 1 ≤ r) (k n : ℤ) :
    boundaries T P q hq k n ≤ cycles T P r hr k n := by
  sorry

end KIP126.StableHomotopy.TowerSpectralSequence
