import AggregateD5Conditional.Pipeline.Trace3391
import AggregateTargetInventory.EventAudit.Indexed
namespace AggregateD5Conditional.Pipeline.Executable3391
open LinearCertificates PageTransitionCertificates Data Events
open AggregateTargetInventory.EventAudit
def finite : Executable.Wire := finite_event% "FiniteEventProducer/D5/event3391.json"
def indexed : Indexed.Wire := indexed_event% "FiniteEventProducer/D5/indexed-event3391.json"
theorem finite_valid : finite.Valid := by lin_cert using ()
theorem indexed_valid : indexed.Valid := by lin_cert using ()
theorem same_finite : indexed.finite = finite := rfl
theorem event_comparison : finite.event = b_S0_13_139_d5 := rfl
theorem source_vector : finite.sourceVector = event3391Source := by decide
theorem target_vector : finite.targetVector = event3391Target := by decide
theorem raw_source : finite.rawSource = [true,false,false] := rfl
theorem raw_target : finite.rawTarget = [true,false] := rfl
theorem source_d2_comparison : (finite.sourceStages[0]).wire = b_S0_13_139_d2 := rfl
theorem source_d3_comparison : (finite.sourceStages[1]).wire = b_S0_13_139_d3 := rfl
theorem source_d4_comparison : (finite.sourceStages[2]).wire = b_S0_13_139_d4 := rfl
theorem target_d2_comparison : (finite.targetStages[0]).wire = b_S0_18_143_d2 := rfl
theorem target_d3_comparison : (finite.targetStages[1]).wire = b_S0_18_143_d3 := rfl
theorem target_d4_comparison : (finite.targetStages[2]).wire = b_S0_18_143_d4 := rfl
theorem source_not_kernel : ¬ InKernel (matrixOf 1 1 b_S0_13_139_d5.outgoing) event3391Source := finite_valid.source_not_kernel
example : Indexed.check { indexed with eventPage := 6 } = false := by decide
example : Executable.check { finite with rawSource := [] } = false := by decide
example : Executable.check { finite with target := [false] } = false := by decide
#print axioms finite_valid
#print axioms indexed_valid
end AggregateD5Conditional.Pipeline.Executable3391
