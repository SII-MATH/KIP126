import AggregateD4Conditional.Trace
import AggregateTargetInventory.EventAudit.Indexed
namespace AggregateD4Conditional.Executable3254
open LinearCertificates PageTransitionCertificates Data Events
open AggregateTargetInventory.EventAudit

def finite : Executable.Wire := finite_event% "FiniteEventProducer/D4/event3254.json"
def indexed : Indexed.Wire := indexed_event% "FiniteEventProducer/D4/indexed-event3254.json"
theorem finite_valid : finite.Valid := by lin_cert using ()
theorem indexed_valid : indexed.Valid := by lin_cert using ()
theorem same_finite : indexed.finite = finite := rfl
theorem event_comparison : finite.event = b_S0_12_138_d4 := rfl
theorem source_vector : finite.sourceVector = event3254Source := by decide
theorem target_vector : finite.targetVector = event3254Target := by decide
theorem raw_source : finite.rawSource = [false,false,false,true,false] := rfl
theorem raw_target : finite.rawTarget = [false,true,false,false] := rfl
theorem source_d2_comparison : (finite.sourceStages[0]).wire = b_S0_12_138_d2 := rfl
theorem source_d3_comparison : (finite.sourceStages[1]).wire = b_S0_12_138_d3 := rfl
theorem target_d2_comparison : (finite.targetStages[0]).wire = b_S0_16_141_d2 := rfl
theorem target_d3_comparison : (finite.targetStages[1]).wire = b_S0_16_141_d3 := rfl
theorem source_not_kernel : ¬ InKernel (matrixOf 1 1 b_S0_12_138_d4.outgoing) event3254Source :=
  finite_valid.source_not_kernel
example : Indexed.check { indexed with eventPage := 3 } = false := by decide
example : Executable.check { finite with rawSource := [] } = false := by decide
example : Executable.check { finite with target := [false] } = false := by decide
#print axioms finite_valid
#print axioms indexed_valid
end AggregateD4Conditional.Executable3254
