import Fact764NamedActualE5.Actual
import Lean.Elab.Tactic

namespace Fact764NamedActualE5
open Lean Elab Tactic
open ManualInputObligations.Reference ActualAdamsProductCycleBridge

syntax (name := fact764NamedCert) "fact764_named_cert" " using " term
  " named " term " yielding " term : tactic
syntax (name := fact764NamedCertAuto) "fact764_named_cert" " using " term : tactic

elab_rules : tactic
  | `(tactic| fact764_named_cert using $w:term named $i:term yielding $o:term) => do
      withMainContext do
        let goal ← getMainTarget
        unless goal.getAppFn.isConstOf ``ResultValid do
          throwError "fact764_named_cert: expected Fact764NamedActualE5.ResultValid with exact E2 input and E5 output"
        evalTactic (← `(tactic| exact Fact764NamedActualE5.result_sound $w _ _ $i $o))
  | `(tactic| fact764_named_cert using $w:term) => do
      withMainContext do
        let goal ← getMainTarget
        unless goal.getAppFn.isConstOf ``ResultValid do
          throwError "fact764_named_cert: expected Fact764NamedActualE5.ResultValid with exact E2 input and E5 output"
        evalTactic (← `(tactic| exact Fact764NamedActualE5.result_sound $w _ _
          (by first | rfl | assumption) (by first | rfl | assumption)))

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S} {I : Input S pages}

theorem tactic_fixed (W : Witness I) : ResultValid I I.initial I.endpoint5.value := by
  fact764_named_cert using W

theorem tactic_bound (W : Witness I) (input : (S.element 2 namedDegree).carrier)
    (output : (S.element 5 namedDegree).carrier)
    (hi : input = I.initial) (ho : output = I.endpoint5.value) : ResultValid I input output := by
  fact764_named_cert using W named hi yielding ho

example (W : Witness I) (wrong : False) : ResultValid I 0 I.endpoint5.value := by
  fail_if_success fact764_named_cert using W
  exact wrong.elim

example (W : Witness I) (wrong : False) : ResultValid I I.initial 0 := by
  fail_if_success fact764_named_cert using W
  exact wrong.elim

example (W : Witness I) : ¬ ResultValid I I.initial 0 := by
  fail_if_success fact764_named_cert using W
  exact zero_output_rejected I.initial

example (W : Witness I) (J : Input S pages) (wrong : False) :
    ResultValid J I.initial I.endpoint5.value := by
  fail_if_success fact764_named_cert using W
  exact wrong.elim

#print axioms tactic_fixed
#print axioms tactic_bound
end Fact764NamedActualE5
