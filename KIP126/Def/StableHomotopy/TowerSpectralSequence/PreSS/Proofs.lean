import KIP126.Def.StableHomotopy.TowerSpectralSequence.PreSS.Data

/-! The exact-couple square-zero and successor laws for the specified
quotient differential. Their proofs remain separate from the construction. -/

namespace KIP126.StableHomotopy.TowerSpectralSequence

open CategoryTheory CategoryTheory.Limits KIP126.Core.SpectralSequence

universe u v
variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)] (T : DescendingTower C) (P : C)

theorem preSS_d_comp_d (r : ℤ) (p : ℤ × ℤ) :
    (preSS T P).d r p ≫ (preSS T P).d r (p + (preSS T P).diffDeg r) = 0 := by
  sorry

theorem preSS_Z_succ (r : ℤ) (p : ℤ × ℤ) (hr : 1 ≤ r) :
    let m := (r - 1).toNat
    kernelSubobject ((preSS T P).d r p) =
      imageSubobject (Subobject.ofLE
        (((preSS T P).ssData p).Z ((m + 1 : ℕ) : WithTop ℕ))
        (((preSS T P).ssData p).Z (m : WithTop ℕ))
        (((preSS T P).ssData p).Z_anti (by exact_mod_cast Nat.le_succ m)) ≫
        ((preSS T P).ssData p).pageπ (m : WithTop ℕ)) := by
  sorry

theorem preSS_B_succ (r : ℤ) (p : ℤ × ℤ) (hr : 1 ≤ r) :
    let m := (r - 1).toNat
    let D := (preSS T P).ssData (p + (preSS T P).diffDeg r)
    imageSubobject ((preSS T P).d r p) =
      imageSubobject (Subobject.ofLE (D.B ((m + 1 : ℕ) : WithTop ℕ))
        (D.Z (m : WithTop ℕ))
        (le_trans (D.B_le_Z ((m + 1 : ℕ) : WithTop ℕ))
          (D.Z_anti (by exact_mod_cast Nat.le_succ m))) ≫ D.pageπ (m : WithTop ℕ)) := by
  sorry

end KIP126.StableHomotopy.TowerSpectralSequence
