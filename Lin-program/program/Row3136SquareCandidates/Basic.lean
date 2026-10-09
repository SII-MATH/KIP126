import Row3136SquareCandidates.Data
import PageTransitionCertificates.InducedMap
import Mathlib.Data.Fintype.Pi

namespace Row3136SquareCandidates
open LinearCertificates PageTransitionCertificates

local instance (p : Vec n → Prop) [DecidablePred p] : Decidable (∀ x, p x) :=
  Fintype.decidableForallFintype
local instance (x y : Vec n) : Decidable (x = y) :=
  inferInstanceAs (Decidable ((fun i => x i) = (fun i => y i)))

def targetDifferential (u : Bool) : Matrix 1 2 := fun _ j => if j.val == 0 then u else true
def sourceDifferential (a b : Bool) : Matrix 2 2 :=
  fun i j => if j.val == 0 then (if i.val == 0 then a else b) else false
def candidate (u a : Bool) : Vec 2 := fun i => if i.val == 0 then a else u && a

theorem square_iff (u a b : Bool) :
    (∀ x : Vec 2, eval (targetDifferential u) (eval (sourceDifferential a b) x) = zero) ↔
      b = (u && a) := by
  cases u <;> cases a <;> cases b <;> decide

theorem cycle_iff (u : Bool) (v : Vec 2) :
    eval (targetDifferential u) v = zero ↔ v = candidate u (v 0) := by
  exact (show ∀ u : Bool, ∀ v : Vec 2,
    eval (targetDifferential u) v = zero ↔ v = candidate u (v 0) from by decide) u v

theorem two_candidates (u : Bool) (v : Vec 2)
    (cycle : eval (targetDifferential u) v = zero) :
    v = zero ∨ v = candidate u true := by
  have h := (cycle_iff u v).mp cycle
  cases hu : v 0
  · left
    rw [hu] at h
    exact h.trans (by cases u <;> decide)
  · right
    simpa only [hu] using h

theorem four_parameter_pairs : ∀ u a : Bool,
    (u = false ∧ a = false) ∨ (u = false ∧ a = true) ∨
    (u = true ∧ a = false) ∨ (u = true ∧ a = true) := by decide

theorem diagonal_nonzero_case : candidate true true = (fun _ => true) ∧
    candidate true true ≠ (fun i : Fin 2 => i.val == 0) := by decide

#print axioms square_iff
#print axioms cycle_iff
#print axioms two_candidates
#print axioms four_parameter_pairs
#print axioms diagonal_nonzero_case
end Row3136SquareCandidates
