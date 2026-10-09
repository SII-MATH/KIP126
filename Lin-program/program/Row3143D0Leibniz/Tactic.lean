import Row3143D0Leibniz.Binding
import Lean.Elab.Tactic

namespace Row3143D0Leibniz
open Lean Elab Tactic ManualInputObligations.Reference ActualAdamsProductTraceBridge
open ActualAdamsHomologyCoordinates.Meaning

structure Certificate (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (P : CertifiedAdamsProduct S) where
  meaning : Actual.Meaning S P
  known : Descent.KnownDifferential S pages
  transition : Transition S pages P 3 Actual.d0Degree Actual.rightDegree
  zeroMeaning : LocalZeroMeaning pages 3 Actual.leftD4Degree
  left : (S.element 3 Actual.d0Degree).carrier
  right : (S.element 3 Actual.rightDegree).carrier
  leftBinding : meaning.d0 left = namedD0
  rightBinding : meaning.right right = namedRight

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S} {P : CertifiedAdamsProduct S}

def ResultValid (C : Certificate S pages P)
    (input : (S.element 3 Actual.sourceDegree).carrier) : Prop :=
  C.meaning.source input = namedSource ∧
  ∃ cycle : PageCycle S 3 Actual.sourceDegree, cycle.val = input ∧
    S.differential 4 Actual.sourceDegree
      ((pages.nextPage 3 Actual.sourceDegree).toNext (Quotient.mk _ cycle)) = 0

theorem result_sound (C : Certificate S pages P)
    (input : (S.element 3 Actual.sourceDegree).carrier)
    (binding : C.meaning.source input = namedSource) : ResultValid C input := by
  refine ⟨binding,⟨input,(Actual.named_d3_zero C.meaning C.left C.right input
    C.leftBinding C.rightBinding binding).trans (S.zero_is_zero _ _).symm⟩,rfl,?_⟩
  exact Actual.actual_row3143_d4_zero S pages P C.meaning C.known C.transition C.zeroMeaning
    C.left C.right input C.leftBinding C.rightBinding binding

theorem zero_input_rejected (C : Certificate S pages P) : ¬ ResultValid C 0 := by
  intro h
  exact named_source_nonzero (h.1.symm.trans C.meaning.sourceZero)

syntax (name := row3143Cert) "row3143_d4_cert" " using " term " named " term : tactic
elab_rules : tactic
  | `(tactic| row3143_d4_cert using $certificate:term named $binding:term) => do
      withMainContext do
        let target ← getMainTarget
        unless target.getAppFn.isConstOf ``ResultValid do
          throwError "row3143_d4_cert: expected ResultValid for the fixed E3 input and its E4 quotient"
        evalTactic (← `(tactic| exact result_sound $certificate _ $binding))

theorem supplied (C : Certificate S pages P)
    (input : (S.element 3 Actual.sourceDegree).carrier)
    (binding : C.meaning.source input = namedSource) : ResultValid C input := by
  row3143_d4_cert using C named binding

example (C : Certificate S pages P)
    (input : (S.element 3 Actual.sourceDegree).carrier)
    (binding : C.meaning.source input = namedSource) : True := by
  fail_if_success row3143_d4_cert using C named binding
  trivial

example (C : Certificate S pages P) : ¬ ResultValid C 0 := by
  fail_if_success row3143_d4_cert using C named C.meaning.sourceZero
  exact zero_input_rejected C

#print axioms result_sound
#print axioms zero_input_rejected
#print axioms supplied
end Row3143D0Leibniz
