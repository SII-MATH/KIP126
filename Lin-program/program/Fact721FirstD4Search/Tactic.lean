import Fact721FirstD4Search.Constructed
import Lean.Elab.Tactic

namespace Fact721FirstD4Search
open Lean Elab Tactic ManualInputObligations.Reference
open Fact721ConstructedActual Constructed

syntax (name := firstE5CertNamed) "fact721_first_e5_cert" " using " term " named " term : tactic
syntax (name := firstE5Cert) "fact721_first_e5_cert" " using " term : tactic

elab_rules : tactic
  | `(tactic| fact721_first_e5_cert using $certificate:term named $binding:term) => do
      withMainContext do
        let target ← getMainTarget
        unless target.getAppFn.isConstOf ``Constructed.ResultValid do
          throwError "fact721_first_e5_cert: expected the fixed-input E5 ResultValid goal"
        evalTactic (← `(tactic| exact Constructed.result_sound $certificate _ $binding))
  | `(tactic| fact721_first_e5_cert using $certificate:term) => do
      withMainContext do
        let target ← getMainTarget
        unless target.getAppFn.isConstOf ``Constructed.ResultValid do
          throwError "fact721_first_e5_cert: expected the fixed-input E5 ResultValid goal; permanence needs further evidence"
        evalTactic (← `(tactic| first
          | exact Constructed.result_sound $certificate _ First.raw_binding
          | exact Constructed.result_sound $certificate _ (by assumption)))

theorem fixed {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
    {initial : AdditiveCoordinates degree S 2 2} (P : Prefix5 S pages initial) :
    ResultValid S pages initial (First.raw initial) := by
  fact721_first_e5_cert using P

theorem supplied {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
    {initial : AdditiveCoordinates degree S 2 2} (P : Prefix5 S pages initial)
    (input : (S.element 2 degree).carrier)
    (binding : initial.coordinates.equivalence input = Fact721PageCertificates.First.target) :
    ResultValid S pages initial input := by
  fact721_first_e5_cert using P named binding

example {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
    {initial : AdditiveCoordinates degree S 2 2} (P : Prefix5 S pages initial) :
    ¬ ResultValid S pages initial 0 := by
  fail_if_success fact721_first_e5_cert using P
  exact zero_input_rejected

example {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
    {initial : AdditiveCoordinates degree S 2 2} (P : Prefix5 S pages initial)
    (impossible : False) : ResultValid S pages initial 0 := by
  fail_if_success fact721_first_e5_cert using P named First.raw_binding
  exact impossible.elim

#print axioms fixed
#print axioms supplied
end Fact721FirstD4Search
