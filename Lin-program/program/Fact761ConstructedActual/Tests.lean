import Fact761ConstructedActual.Assembly
import Fact761ConstructedActual.Binding
import Fact761ConstructedActual.SourceTrace

namespace Fact761ConstructedActual
open LinearCertificates PageTransitionCertificates ManualInputObligations.Reference
open NamedPageComparison.ConditionalHigherData

def falseIncoming : WireComparison := { wire5 with incoming := [false,true] }

theorem corrupted_incoming_rejected : checkWire falseIncoming = false := by decide
theorem wrong_raw_vector_rejected :
    eval wire2.comparison.projection (fun i => i.val == 0) ≠ named3 := by decide
theorem source_initial_dimension : Row2858.sourceWire.h = 1 := rfl
theorem detector_target_dimension : Row2858.targetWire.h = 3 := rfl
theorem empty_target_computations : b17_141_2.h = 0 ∧ b12_137_3.h = 0 ∧ b13_138_4.h = 0 := by decide

theorem unknown_rows_retained :
    b13_138_3_incoming_row_0.diff = none ∧ b13_138_3_incoming_row_0.level = 9000 ∧
    b17_141_3_incoming_row_0.diff = none ∧ b17_141_3_incoming_row_0.level = 9000 ∧
    b8_134_5_incoming_row_0.diff = none ∧ b8_134_5_incoming_row_0.level = 9986 := by decide

example : ¬ falseIncoming.Valid := by
  intro h
  have hb : InImage (matrixOf falseIncoming.m falseIncoming.n falseIncoming.incoming)
      (add namedVector zero) := ⟨(fun _ => true), by decide⟩
  have he := (h.2.2.2.2.2 namedVector zero (by unfold InKernel; decide) (eval_zero _)).mpr hb
  exact (show eval falseIncoming.comparison.projection namedVector ≠
    eval falseIncoming.comparison.projection zero from by decide) he

theorem constructed_tactic {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
    {initial : AdditiveCoordinates S 2 6} (c : Certificate S pages initial)
    (input : (S.element 2 degree).carrier)
    (binding : initial.coordinates.equivalence input = named2) : ResultValid S pages initial input := by
  fact761_cert using c.prefix named binding

example {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
    {initial : AdditiveCoordinates S 2 6} (_c : Certificate S pages initial) :
    ¬ ResultValid S pages initial 0 := by
  fail_if_success fact761_cert using _c.prefix
  exact zero_input_rejected

example {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
    {initial : AdditiveCoordinates S 2 6} (_c : Certificate S pages initial) : True := by
  fail_if_success fact761_cert using _c.prefix
  trivial

#print axioms corrupted_incoming_rejected
#print axioms wrong_raw_vector_rejected
#print axioms unknown_rows_retained
#print axioms constructed_tactic
#print axioms Certificate.sound
#print axioms Certificate.nonboundaries
#print axioms Row2858.D2Input.source_same_representative
#print axioms Row2858.D2Input.target_same_representative
end Fact761ConstructedActual
