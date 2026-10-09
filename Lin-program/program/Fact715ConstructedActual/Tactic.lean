import Fact715ConstructedActual.Trace
import Lean.Elab.Tactic

namespace Fact715ConstructedActual
open Lean Elab Tactic
open ManualInputObligations.Reference

/-- The tactic checks a caller's exact initial element. The prefix argument
contains mathematical whole-map meanings, not untrusted imported evidence. -/
syntax (name := fact715Cert) "fact715_cert" " using " term " named " term : tactic
syntax (name := fact715CertAuto) "fact715_cert" " using " term : tactic

elab_rules : tactic
  | `(tactic| fact715_cert using $certificate:term named $binding:term) => do
      withMainContext do
        let target ← getMainTarget
        unless target.getAppFn.isConstOf ``ResultValid do
          throwError "fact715_cert: expected Fact715ConstructedActual.ResultValid for the supplied E2 input"
        evalTactic (← `(tactic| exact Fact715ConstructedActual.result_sound $certificate _ $binding))
  | `(tactic| fact715_cert using $certificate:term) => do
      withMainContext do
        let target ← getMainTarget
        unless target.getAppFn.isConstOf ``ResultValid do
          throwError "fact715_cert: expected Fact715ConstructedActual.ResultValid for the supplied E2 input"
        evalTactic (← `(tactic| first
          | exact Fact715ConstructedActual.result_sound $certificate _ Fact715ConstructedActual.raw_coordinate
          | exact Fact715ConstructedActual.result_sound $certificate _ (by assumption)))

theorem tactic_fixed {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
    {initial : AdditiveCoordinates S 2 5} (certificate : Prefix5 S pages initial) :
    ResultValid S pages initial (raw initial) := by
  fact715_cert using certificate

theorem tactic_input {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
    {initial : AdditiveCoordinates S 2 5} (certificate : Prefix5 S pages initial)
    (input : (S.element 2 degree).carrier)
    (bindingProof : initial.coordinates.equivalence input = Fact715PageCertificates.target) :
    ResultValid S pages initial input := by
  fact715_cert using certificate named bindingProof

example {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
    {initial : AdditiveCoordinates S 2 5} (certificate : Prefix5 S pages initial) :
    ¬ ResultValid S pages initial 0 := by
  fail_if_success fact715_cert using certificate named raw_coordinate
  exact zero_input_rejected

example {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
    {initial : AdditiveCoordinates S 2 5} (certificate : Prefix5 S pages initial)
    (wrong : False) : ResultValid S pages initial 0 := by
  fail_if_success fact715_cert using certificate named raw_coordinate
  exact wrong.elim

#print axioms result_sound
#print axioms zero_input_rejected
#print axioms tactic_fixed
#print axioms tactic_input
end Fact715ConstructedActual
