import FilteredFiniteSourceLimit.Basic
import Mathlib.Data.ZMod.Basic

namespace FilteredFiniteSourceLimit.Examples
open FilteredRepresentativeCrossing FilteredMapExtension

def source : Filtration (ZMod 2) where
  group i := if i = 0 then ⊤ else ⊥
  decreasing := by
    intro i j hij x hx
    by_cases hi : i = 0
    · simp [hi]
    · have hj : j ≠ 0 := by omega
      simpa [hi,hj] using hx

/-- Infinite support is permitted; each individual sequence eventually
has zero in every fixed coordinate if it lies in all these tails. -/
def target : Filtration (Nat → ZMod 2) where
  group i := {
    carrier := {x | ∀ j, j < i → x j = 0}
    zero_mem' := by intro j hj; rfl
    add_mem' := by intro x y hx hy j hj; simp [hx j hj,hy j hj]
    neg_mem' := by intro x hx j hj; simp [hx j hj] }
  decreasing := by
    intro i j hij x hx k hk
    exact hx k (lt_of_lt_of_le hk hij)

theorem target_separated : Separated target := by
  intro x hx
  funext i
  exact hx (i+1) i (by omega)

def spike (i : Nat) : Nat → ZMod 2 := fun j => if j = i then 1 else 0

theorem target_unbounded (i : Nat) : target.group i ≠ ⊥ := by
  intro h
  have mem : spike i ∈ target.group i := by
    intro j hj
    simp [spike,show j ≠ i by omega]
  rw [h] at mem
  have zero : spike i = 0 := mem
  have bad := congrFun zero i
  simp [spike] at bad

def intoUnbounded : FilteredMap source target where
  hom := {
    toFun := fun x j => if j = 0 then x else 0
    map_zero' := by funext j; simp
    map_add' := by intro x y; funext j; by_cases h : j = 0 <;> simp [h] }
  preserves := by
    intro i x hx j hj
    by_cases hi : i = 0
    · omega
    · have hz : x = 0 := by simpa [source,hi] using hx
      simp [hz]

theorem image_bound : ∀ x, intoUnbounded.hom x ∈ target.group 1 → intoUnbounded.hom x = 0 := by
  intro x hx
  have hz : x = 0 := hx 0 (by omega)
  subst x
  exact map_zero _

/-- The finite-source theorem applies while every target filtration group
is nonzero; this cannot be obtained by assuming a vanishing target tail. -/
theorem converges_with_unbounded_target :
    ∃ q : Nat, ∀ t n : Nat, q ≤ t+n → t+1 ≤ n →
      Nonempty (FilteredTwoTermSequence.Page source target intoUnbounded n t ≃+
        FilteredTwoTermLimit.GradedHomology source target intoUnbounded t) :=
  finite_source_convergence source target intoUnbounded target_separated

#print axioms target_separated
#print axioms target_unbounded
#print axioms image_bound
#print axioms converges_with_unbounded_target
end FilteredFiniteSourceLimit.Examples
