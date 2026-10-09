import ActualAdamsAdditiveFiltration.Quotient
import Mathlib.Logic.Equiv.Basic

namespace ActualAdamsAdditiveFiltration.Counterexamples
open ManualInputObligations.Reference

abbrev V := Fin 3 → F2
def e0 : V := fun i => if i.val = 0 then 1 else 0
def e1 : V := fun i => if i.val = 1 then 1 else 0
def e2 : V := fun i => if i.val = 2 then 1 else 0

noncomputable def permutation : V ≃ V := Equiv.swap e0 e1

theorem preserves_zero : permutation 0 = 0 := by
  apply Equiv.swap_apply_of_ne_of_ne <;> decide

theorem fails_addition : permutation (e0+e2) ≠ permutation e0 + permutation e2 := by
  have h1 : e0+e2 ≠ e0 := by decide
  have h2 : e0+e2 ≠ e1 := by decide
  have h3 : e2 ≠ e0 := by decide
  have h4 : e2 ≠ e1 := by decide
  change Equiv.swap e0 e1 (e0+e2) ≠ Equiv.swap e0 e1 e0 + Equiv.swap e0 e1 e2
  rw [Equiv.swap_apply_of_ne_of_ne h1 h2,Equiv.swap_apply_left,
    Equiv.swap_apply_of_ne_of_ne h3 h4]
  decide

/-- Even a zero-preserving full bijection is insufficient for an additive
homology identification. AddMeaning is a substantive local premise. -/
theorem zero_bijection_does_not_imply_additive :
    ∃ f : V ≃ V, f 0 = 0 ∧ ¬ (∀ x y, f (x+y) = f x+f y) :=
  ⟨permutation,preserves_zero,fun h => fails_addition (h e0 e2)⟩

#print axioms preserves_zero
#print axioms fails_addition
#print axioms zero_bijection_does_not_imply_additive
end ActualAdamsAdditiveFiltration.Counterexamples
