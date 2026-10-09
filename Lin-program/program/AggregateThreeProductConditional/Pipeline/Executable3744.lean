import AggregateThreeProductConditional.Pipeline.Trace3744
import AggregateTargetInventory.EventAudit.Indexed
namespace AggregateThreeProductConditional.Pipeline.Executable3744
open LinearCertificates PageTransitionCertificates Data Events
open AggregateTargetInventory.EventAudit
def finite : Executable.Wire := finite_event% "FiniteEventProducer/ThreeProduct/event3744.json"
def indexed : Indexed.Wire := indexed_event% "FiniteEventProducer/ThreeProduct/indexed-event3744.json"
theorem finite_valid : finite.Valid := by lin_cert using ()
theorem indexed_valid : indexed.Valid := by lin_cert using ()
theorem same_finite : indexed.finite = finite := rfl
theorem event_comparison : finite.event = b_S0_18_144_d4 := rfl
theorem source_vector : finite.sourceVector = event3744Source := by decide
theorem target_vector : finite.targetVector = event3744Target := by decide
theorem raw_source : finite.rawSource = [false,true,false,false] := rfl
theorem raw_target : finite.rawTarget = [false,true,false,false] := rfl
theorem source_d2_comparison : (finite.sourceStages[0]).wire = b_S0_18_144_d2 := rfl
theorem source_d3_comparison : (finite.sourceStages[1]).wire = b_S0_18_144_d3 := rfl
theorem target_d2_comparison : (finite.targetStages[0]).wire = b_S0_22_147_d2 := rfl
theorem target_d3_comparison : (finite.targetStages[1]).wire = b_S0_22_147_d3 := rfl
theorem source_not_kernel : ¬ InKernel (matrixOf 2 3 b_S0_18_144_d4.outgoing) event3744Source := finite_valid.source_not_kernel
example : Indexed.check { indexed with eventPage := 3 } = false := by decide
example : Executable.check { finite with rawSource := [] } = false := by decide
example : Executable.check { finite with target := [false,false] } = false := by decide
#print axioms finite_valid
#print axioms indexed_valid
end AggregateThreeProductConditional.Pipeline.Executable3744
