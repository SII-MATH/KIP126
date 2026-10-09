import AggregateThreeProductConditional.Pipeline.Trace3745
import AggregateTargetInventory.EventAudit.Indexed
namespace AggregateThreeProductConditional.Pipeline.Executable3745
open LinearCertificates PageTransitionCertificates Data Events
open AggregateTargetInventory.EventAudit
def finite : Executable.Wire := finite_event% "FiniteEventProducer/ThreeProduct/event3745.json"
def indexed : Indexed.Wire := indexed_event% "FiniteEventProducer/ThreeProduct/indexed-event3745.json"
theorem finite_valid : finite.Valid := by lin_cert using ()
theorem indexed_valid : indexed.Valid := by lin_cert using ()
theorem same_finite : indexed.finite = finite := rfl
theorem event_comparison : finite.event = b_S0_18_144_d4 := rfl
theorem source_vector : finite.sourceVector = event3745Source := by decide
theorem target_vector : finite.targetVector = event3745Target := by decide
theorem raw_source : finite.rawSource = [false,false,true,true] := rfl
theorem raw_target : finite.rawTarget = [true,false,false,true] := rfl
theorem source_d2_comparison : (finite.sourceStages[0]).wire = b_S0_18_144_d2 := rfl
theorem source_d3_comparison : (finite.sourceStages[1]).wire = b_S0_18_144_d3 := rfl
theorem target_d2_comparison : (finite.targetStages[0]).wire = b_S0_22_147_d2 := rfl
theorem target_d3_comparison : (finite.targetStages[1]).wire = b_S0_22_147_d3 := rfl
theorem source_not_kernel : ¬ InKernel (matrixOf 2 3 b_S0_18_144_d4.outgoing) event3745Source := finite_valid.source_not_kernel
example : Indexed.check { indexed with eventPage := 3 } = false := by decide
example : Executable.check { finite with rawSource := [] } = false := by decide
example : Executable.check { finite with target := [false,false] } = false := by decide
#print axioms finite_valid
#print axioms indexed_valid
end AggregateThreeProductConditional.Pipeline.Executable3745
