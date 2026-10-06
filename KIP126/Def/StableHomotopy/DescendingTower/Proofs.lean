import KIP126.Def.StableHomotopy.DescendingTower.Data

/-! Laws of the specified composites and the constant-tail extension.
These are properties of the defined maps, not further tower inputs. -/

namespace KIP126.StableHomotopy

open CategoryTheory

universe u v

namespace DescendingTower

variable {C : Type u} [Category.{v} C] (T : DescendingTower C)

@[simp] theorem map_self (k : ℤ) : T.map k k le_rfl = 𝟙 (T.obj k) := by
  sorry

theorem map_succ (s t : ℤ) (h : s ≤ t) :
    T.map s (t + 1) (by omega) = T.step t ≫ T.map s t h := by
  sorry

@[simp] theorem map_adjacent (k : ℤ) :
    T.map k (k + 1) (by omega) = T.step k := by
  sorry

theorem map_comp (s t z : ℤ) (hst : s ≤ t) (htz : t ≤ z) :
    T.map t z htz ≫ T.map s t hst = T.map s z (hst.trans htz) := by
  sorry

end DescendingTower

namespace InverseSequence

variable {C : Type u} [StableHomotopyCategory.{u, v} C] (D : InverseSequence C)

@[simp] theorem toDescendingTower_obj_nat (k : ℕ) :
    D.toDescendingTower.obj (k : ℤ) = D.obj k := by
  simp [toDescendingTower]

theorem toDescendingTower_obj_nonpos (k : ℤ) (hk : k ≤ 0) :
    D.toDescendingTower.obj k = D.obj 0 := by
  change D.obj k.toNat = D.obj 0
  exact congrArg D.obj (by omega : k.toNat = 0)

theorem toDescendingTower_step_nonneg (k : ℤ) (hk : 0 ≤ k) :
    D.toDescendingTower.step k =
      eqToHom (congrArg D.obj (by omega : (k + 1).toNat = k.toNat + 1)) ≫
        D.step k.toNat := by
  simp only [toDescendingTower, dif_pos hk]

theorem toDescendingTower_step_neg (k : ℤ) (hk : k < 0) :
    D.toDescendingTower.step k =
      eqToHom (congrArg D.obj (by omega : (k + 1).toNat = k.toNat)) := by
  simp only [toDescendingTower, dif_neg (by omega : ¬ 0 ≤ k)]

/-- Every map inside the nonpositive tail is the equality map on stage zero. -/
theorem toDescendingTower_map_nonpos (s t : ℤ) (hst : s ≤ t) (ht : t ≤ 0) :
    D.toDescendingTower.map s t hst =
      eqToHom (congrArg D.obj (by omega : t.toNat = s.toNat)) := by
  sorry

end InverseSequence
end KIP126.StableHomotopy
