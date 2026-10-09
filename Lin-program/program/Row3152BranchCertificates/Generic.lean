import Row2925EtaD4.Links
import Mathlib.Data.Fintype.Pi

namespace Row3152BranchCertificates.Generic
open LinearCertificates PageTransitionCertificates ResolutionCertificates

def outgoing : Matrix 1 1 := identityMatrix 1
def incoming (n : Nat) : Matrix 1 n := fun _ _ => false
def comparison (n : Nat) : Comparison 1 1 n 0 where
  inclusion := fun _ i => Fin.elim0 i
  projection := fun i => Fin.elim0 i
  up := fun _ _ => false
  down := identityMatrix 1

theorem incoming_eval (n : Nat) (x : Vec n) : eval (incoming n) x = zero := by
  funext i
  exact zero_dot x

/-- Completeness for every incoming dimension; no dimension is chosen from
the fact that the incoming image is zero. -/
theorem complete (n : Nat) : HomologyComparison outgoing (incoming n) (comparison n) := by
  have he : ∀ x : Vec 1, eval outgoing x = x := eval_identity
  have hk : ∀ x : Vec 1, InKernel outgoing x → x = zero := by
    intro x hx
    exact (he x).symm.trans hx
  refine ⟨?_,?_,?_,?_,?_⟩
  · intro x
    rw [incoming_eval,eval_zero]
  · intro z
    have hz : z = zero := Subsingleton.elim _ _
    subst z
    rw [eval_zero]
    exact eval_zero _
  · intro z
    exact Subsingleton.elim _ _
  · intro x hx
    rw [hk x hx,eval_zero,eval_zero,add_self]
    exact ⟨zero,eval_zero _⟩
  · intro x y hx hy
    rw [hk x hx,hk y hy]
    constructor
    · intro _
      rw [add_self]
      exact ⟨zero,eval_zero _⟩
    · intro _
      rfl

theorem complex_forces_incoming_zero (n : Nat) (inc : Matrix 1 n)
    (complex : IsComplex outgoing inc) : ∀ x, eval inc x = zero := by
  intro x
  have h := complex x
  simpa only [outgoing,eval_identity] using h

theorem named_event : eval outgoing (fun _ => true) = (fun _ => true) := eval_identity _

theorem target_nonzero : (fun _ : Fin 1 => true) ≠ zero := by
  intro h
  have bad := congrFun h 0
  contradiction

#print axioms complete
#print axioms complex_forces_incoming_zero
#print axioms named_event
end Row3152BranchCertificates.Generic
