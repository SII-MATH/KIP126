import Fact721ConstructedActual.First
import Fact721ConstructedActual.Second
import Lean.Elab.Tactic

namespace Fact721ConstructedActual
open Lean Elab Tactic ManualInputObligations.Reference

syntax (name := fact721Cert) "fact721_cert" " using " term " named " term : tactic
syntax (name := fact721CertAuto) "fact721_cert" " using " term : tactic

elab_rules : tactic
  | `(tactic| fact721_cert using $certificate:term named $binding:term) => do
      withMainContext do
        let target ← getMainTarget
        if target.getAppFn.isConstOf ``First.ResultValid then
          evalTactic (← `(tactic| exact First.result_sound $certificate _ $binding))
        else if target.getAppFn.isConstOf ``Second.ResultValid then
          evalTactic (← `(tactic| exact Second.result_sound $certificate _ $binding))
        else
          throwError "fact721_cert: expected First.ResultValid (E4) or Second.ResultValid (E5) for the supplied input"
  | `(tactic| fact721_cert using $certificate:term) => do
      withMainContext do
        let target ← getMainTarget
        if target.getAppFn.isConstOf ``First.ResultValid then
          evalTactic (← `(tactic| first
            | exact First.result_sound $certificate _ First.raw_binding
            | exact First.result_sound $certificate _ (by assumption)))
        else if target.getAppFn.isConstOf ``Second.ResultValid then
          evalTactic (← `(tactic| first
            | exact Second.result_sound $certificate _ Second.raw_binding
            | exact Second.result_sound $certificate _ (by assumption)))
        else
          throwError "fact721_cert: expected a fixed-input finite actual prefix result; permanence is a different goal"

theorem first_from_detector {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
    {initial : AdditiveCoordinates First.degree S 2 2}
    (P : First.Prefix3 S pages initial) (D : First.DetectorInput P)
    (input : (S.element 2 First.degree).carrier)
    (binding : initial.coordinates.equivalence input = Fact721PageCertificates.First.target) :
    First.ResultValid S pages initial input := by
  fact721_cert using D.assemble named binding

theorem second_from_detectors {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
    {initial : AdditiveCoordinates Second.degree S 2 3}
    (P : Second.Prefix3 S pages initial) (D : Second.DetectorInput P)
    (E : Second.D4Input D.assemble)
    (input : (S.element 2 Second.degree).carrier)
    (binding : initial.coordinates.equivalence input = Fact721PageCertificates.Second.target) :
    Second.ResultValid S pages initial input := by
  fact721_cert using E.assemble named binding

theorem first_fixed {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
    {initial : AdditiveCoordinates First.degree S 2 2} (P : First.Prefix4 S pages initial) :
    First.ResultValid S pages initial (First.raw initial) := by
  fact721_cert using P

theorem second_fixed {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
    {initial : AdditiveCoordinates Second.degree S 2 3} (P : Second.Prefix5 S pages initial) :
    Second.ResultValid S pages initial (Second.raw initial) := by
  fact721_cert using P

example {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
    {initial : AdditiveCoordinates First.degree S 2 2} (P : First.Prefix4 S pages initial) :
    ¬ First.ResultValid S pages initial 0 := by
  fail_if_success fact721_cert using P
  exact First.zero_input_rejected

example {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
    {initial : AdditiveCoordinates Second.degree S 2 3} (P : Second.Prefix5 S pages initial)
    (impossible : False) : Second.ResultValid S pages initial 0 := by
  fail_if_success fact721_cert using P named Second.raw_binding
  exact impossible.elim

#print axioms first_from_detector
#print axioms second_from_detectors
#print axioms first_fixed
#print axioms second_fixed
end Fact721ConstructedActual
