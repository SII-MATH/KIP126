import Prop79TargetSearch.Trace
import Lean.Elab.Tactic

namespace Prop79TargetSearch.Constructed
open Lean Elab Tactic
open ManualInputObligations.Reference

structure Certificate (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (initial : AdditiveCoordinates S 2 4) where
  stages : Prefix5 S pages initial
  last : Page5Input stages

syntax (name := prop79Cert) "prop79_cert" " using " term " named " term : tactic
syntax (name := prop79CertAuto) "prop79_cert" " using " term : tactic

elab_rules : tactic
  | `(tactic| prop79_cert using $certificate:term named $binding:term) => do
      withMainContext do
        let target ← getMainTarget
        unless target.getAppFn.isConstOf ``ResultValid do
          throwError "prop79_cert: expected Prop79TargetSearch.Constructed.ResultValid for the supplied E2 input"
        evalTactic (← `(tactic| exact Prop79TargetSearch.Constructed.result_sound
          ($certificate).stages ($certificate).last _ $binding))
  | `(tactic| prop79_cert using $certificate:term) => do
      withMainContext do
        let target ← getMainTarget
        unless target.getAppFn.isConstOf ``ResultValid do
          throwError "prop79_cert: expected Prop79TargetSearch.Constructed.ResultValid for the supplied E2 input"
        evalTactic (← `(tactic| first
          | exact Prop79TargetSearch.Constructed.result_sound ($certificate).stages
              ($certificate).last _ Prop79TargetSearch.Constructed.raw_coordinate
          | exact Prop79TargetSearch.Constructed.result_sound ($certificate).stages
              ($certificate).last _ (by assumption)))

theorem tactic_fixed {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
    {initial : AdditiveCoordinates S 2 4} (certificate : Certificate S pages initial) :
    ResultValid S pages initial (raw initial) := by
  prop79_cert using certificate

theorem tactic_input {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
    {initial : AdditiveCoordinates S 2 4} (certificate : Certificate S pages initial)
    (input : (S.element 2 degree).carrier)
    (binding : initial.coordinates.equivalence input = NoHit.input) :
    ResultValid S pages initial input := by
  prop79_cert using certificate named binding

example {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
    {initial : AdditiveCoordinates S 2 4} (certificate : Certificate S pages initial) :
    ¬ ResultValid S pages initial 0 := by
  fail_if_success prop79_cert using certificate
  exact zero_input_rejected

example {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
    {initial : AdditiveCoordinates S 2 4} (certificate : Certificate S pages initial)
    (impossible : False) : ResultValid S pages initial 0 := by
  fail_if_success prop79_cert using certificate named raw_coordinate
  exact impossible.elim

#print axioms tactic_fixed
#print axioms tactic_input
end Prop79TargetSearch.Constructed
