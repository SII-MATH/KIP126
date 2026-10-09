import Fact763Continuation.Actual
import Lean.Elab.Tactic

namespace Fact763Continuation
open ManualInputObligations ManualInputObligations.Reference

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S} {P : CertifiedAdamsProduct S}

def ResultValid (D : Actual.Input S pages P) (input : (S.element 2 Actual.degree).carrier)
    (page : Nat) : Prop :=
  D.calculation.stage2.product.equivalence input = Fact763PageCertificates.target ∧
    ∃ output : (S.element page Actual.degree).carrier,
      Nonempty (Trace S pages Actual.degree page input output) ∧ output ≠ 0

theorem result_sound (D : Actual.Input S pages P) (input : (S.element 2 Actual.degree).carrier)
    (binding : D.calculation.stage2.product.equivalence input = Fact763PageCertificates.target) :
    ResultValid D input 6 := ⟨binding,D.calculation.value6,Actual.same_input_E6 D input binding⟩

theorem zero_input_rejected (D : Actual.Input S pages P) (page : Nat) : ¬ ResultValid D 0 page := by
  rintro ⟨h,_⟩
  rw [D.calculation.stage2.product.zero_value] at h
  exact (show (LinearCertificates.zero : LinearCertificates.Vec 5) ≠ Fact763PageCertificates.target from by decide) h

open Lean Elab Tactic
syntax "fact763_cert" " using " term " named " term : tactic
elab_rules : tactic
  | `(tactic| fact763_cert using $input:term named $binding:term) => do
    withMainContext do
      let target ← getMainTarget
      unless target.getAppFn.isConstOf ``ResultValid do
        throwError "fact763_cert: expected Fact763Continuation.ResultValid for the exact E2 input and page 6"
      evalTactic (← `(tactic| exact Fact763Continuation.result_sound $input _ $binding))

example (D : Actual.Input S pages P) (input : (S.element 2 Actual.degree).carrier)
    (binding : D.calculation.stage2.product.equivalence input = Fact763PageCertificates.target) :
    ResultValid D input 6 := by fact763_cert using D named binding

example (D : Actual.Input S pages P) : ResultValid D D.calculation.raw 6 := by
  fact763_cert using D named D.calculation.stage2.product.equivalence.apply_symm_apply _

example (D : Actual.Input S pages P) (impossible : False) : ResultValid D 0 6 := by
  fail_if_success fact763_cert using D named D.calculation.stage2.product.equivalence.apply_symm_apply _
  exact impossible.elim
example (D : Actual.Input S pages P) (impossible : False) : ResultValid D D.calculation.raw 7 := by
  fail_if_success fact763_cert using D named D.calculation.stage2.product.equivalence.apply_symm_apply _
  exact impossible.elim

def corrupted : PageTransitionCertificates.WireComparison :=
  {Data.source5 with incoming := [true,false]}
theorem corrupted_incoming_rejected : PageTransitionCertificates.checkWire corrupted = false := by decide

#print axioms result_sound
#print axioms zero_input_rejected
#print axioms corrupted_incoming_rejected
end Fact763Continuation
