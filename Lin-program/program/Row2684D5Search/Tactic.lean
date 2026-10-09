import Row2684D5Search.Actual
import Lean.Elab.Tactic

namespace Row2684D5Search.Actual
open ManualInputObligations ManualInputObligations.Reference
open Lean Elab Tactic

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
  {P : CertifiedAdamsProduct S}

def ResultValid (W : Witness S pages P) (input : (S.element 2 sourceDegree).carrier)
    (result : (S.element 5 (AdamsTarget 5 sourceDegree)).carrier) : Prop :=
  input = W.source.raw ∧ result = 0 ∧
    Nonempty (Trace S pages sourceDegree 5 input W.source.endpoint5.value) ∧
    S.differential 5 sourceDegree W.source.endpoint5.value = result

theorem result_sound (W : Witness S pages P) (input : (S.element 2 sourceDegree).carrier)
    (result : (S.element 5 (AdamsTarget 5 sourceDegree)).carrier)
    (hi : input = W.source.raw) (hr : result = 0) : ResultValid W input result := by
  subst input
  subst result
  exact ⟨rfl,rfl,⟨W.source.endpoint5.trace⟩,named_d5_zero W⟩

theorem zero_input_rejected (W : Witness S pages P)
    (result : (S.element 5 (AdamsTarget 5 sourceDegree)).carrier) : ¬ ResultValid W 0 result := by
  intro h
  have hc := congrArg W.source.initial.equivalence h.1
  rw [W.source.initial.zero_value] at hc
  change LinearCertificates.zero = W.source.initial.equivalence
    (W.source.initial.equivalence.symm Data.sourceVector) at hc
  rw [W.source.initial.equivalence.apply_symm_apply] at hc
  exact (show (LinearCertificates.zero : LinearCertificates.Vec 3) ≠ Data.sourceVector from by decide) hc

syntax (name := row2684D5Cert) "row2684_d5_cert" " using " term : tactic
syntax (name := row2684D5CertBound) "row2684_d5_cert" " using " term
  " named " term " yielding " term : tactic
elab_rules : tactic
  | `(tactic| row2684_d5_cert using $w:term) => do
      withMainContext do
        let goal ← getMainTarget
        unless goal.getAppFn.isConstOf ``ResultValid do
          throwError "row2684_d5_cert: expected Row2684D5Search.Actual.ResultValid for the exact E2 source and d5 value"
        evalTactic (← `(tactic| exact Row2684D5Search.Actual.result_sound $w _ _
          (by first | rfl | assumption) (by first | rfl | assumption)))
  | `(tactic| row2684_d5_cert using $w:term named $hi:term yielding $hr:term) => do
      withMainContext do
        let goal ← getMainTarget
        unless goal.getAppFn.isConstOf ``ResultValid do
          throwError "row2684_d5_cert: expected Row2684D5Search.Actual.ResultValid for the exact E2 source and d5 value"
        evalTactic (← `(tactic| exact Row2684D5Search.Actual.result_sound $w _ _ $hi $hr))

theorem tactic_fixed (W : Witness S pages P) : ResultValid W W.source.raw 0 := by
  row2684_d5_cert using W

theorem tactic_bound (W : Witness S pages P) (input : (S.element 2 sourceDegree).carrier)
    (result : (S.element 5 (AdamsTarget 5 sourceDegree)).carrier)
    (hi : input = W.source.raw) (hr : result = 0) : ResultValid W input result := by
  row2684_d5_cert using W named hi yielding hr

example (W : Witness S pages P) (bad : False) : ResultValid W 0 0 := by
  fail_if_success row2684_d5_cert using W
  exact bad.elim

example (W : Witness S pages P) (result : (S.element 5 (AdamsTarget 5 sourceDegree)).carrier)
    (bad : False) : ResultValid W W.source.raw result := by
  fail_if_success row2684_d5_cert using W
  exact bad.elim

example (W : Witness S pages P) : ¬ ResultValid W 0 0 := by
  fail_if_success row2684_d5_cert using W
  exact zero_input_rejected W 0

#print axioms result_sound
#print axioms zero_input_rejected
#print axioms tactic_fixed
#print axioms tactic_bound
end Row2684D5Search.Actual
