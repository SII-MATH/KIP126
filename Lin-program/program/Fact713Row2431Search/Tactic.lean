import Fact713Row2431Search.CoordinateBridge
import Lean.Elab.Tactic

namespace Fact713Row2431Search
open Lean Elab Tactic ManualInputObligations.Reference

structure Certificate (sphere detector : AdamsSpectralSequence) where
  meaning : Actual.Meaning sphere detector
  lowerTransition : meaning.lower.Transition
  upperTransition : meaning.upper.Transition
  naturality : ∀ x, detector.differential 3 Actual.sourceDegree (meaning.lower.nextMap x) =
    meaning.upper.nextMap (sphere.differential 3 Actual.sourceDegree x)

def ResultValid (sphere detector : AdamsSpectralSequence) (C : Certificate sphere detector)
    (input : (sphere.element 3 Actual.sourceDegree).carrier) : Prop :=
  C.meaning.lower.nextSource.equivalence input = Actual.named3 ∧
  sphere.differential 3 Actual.sourceDegree input = 0

theorem result_sound (C : Certificate sphere detector)
    (input : (sphere.element 3 Actual.sourceDegree).carrier)
    (binding : C.meaning.lower.nextSource.equivalence input = Actual.named3) :
    ResultValid sphere detector C input :=
  ⟨binding,Actual.actual_row2431_whole_d3_zero sphere detector C.meaning
    C.lowerTransition C.upperTransition C.naturality input⟩

theorem zero_input_rejected (C : Certificate sphere detector) :
    ¬ ResultValid sphere detector C 0 := by
  intro h
  exact Actual.named_nonzero C.meaning 0 h.1 rfl

syntax (name := row2431Cert) "row2431_d3_cert" " using " term " named " term : tactic
elab_rules : tactic
  | `(tactic| row2431_d3_cert using $certificate:term named $binding:term) => do
      withMainContext do
        let target ← getMainTarget
        unless target.getAppFn.isConstOf ``ResultValid do
          throwError "row2431_d3_cert: expected ResultValid for the named row2431 E3 input"
        evalTactic (← `(tactic| exact result_sound $certificate _ $binding))

theorem supplied (C : Certificate sphere detector)
    (input : (sphere.element 3 Actual.sourceDegree).carrier)
    (binding : C.meaning.lower.nextSource.equivalence input = Actual.named3) :
    ResultValid sphere detector C input := by
  row2431_d3_cert using C named binding

example (C : Certificate sphere detector) : ¬ ResultValid sphere detector C 0 := by
  fail_if_success row2431_d3_cert using C named (by decide)
  exact zero_input_rejected C

example (C : Certificate sphere detector)
    (input : (sphere.element 3 Actual.sourceDegree).carrier)
    (binding : C.meaning.lower.nextSource.equivalence input = Actual.named3) : True := by
  fail_if_success row2431_d3_cert using C named binding
  trivial

#print axioms result_sound
#print axioms zero_input_rejected
#print axioms supplied
end Fact713Row2431Search
