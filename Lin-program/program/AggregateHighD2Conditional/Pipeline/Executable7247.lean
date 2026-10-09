import AggregateHighD2Conditional.Pipeline.Trace7247
import AggregateTargetInventory.EventAudit.Indexed
namespace AggregateHighD2Conditional.Pipeline.Executable7247
open LinearCertificates PageTransitionCertificates Data Events
open AggregateTargetInventory.EventAudit
def finite : Executable.Wire := finite_event% "FiniteEventProducer/HighD2/event7247.json"
def indexed : Indexed.Wire := indexed_event% "FiniteEventProducer/HighD2/indexed-event7247.json"
theorem finite_valid : finite.Valid := by lin_cert using ()
theorem indexed_valid : indexed.Valid := by lin_cert using ()
theorem same_finite : indexed.finite = finite := rfl
theorem event_comparison : finite.event = b_S0_54_180_d3 := rfl
theorem source_vector : finite.sourceVector = event7247Source := by decide
theorem target_vector : finite.targetVector = event7247Target := by decide
theorem raw_source : finite.rawSource = [true] := rfl
theorem raw_target : finite.rawTarget = [true] := rfl
theorem source_d2_comparison : (finite.sourceStages[0]).wire = b_S0_54_180_d2 := rfl
theorem target_d2_comparison : (finite.targetStages[0]).wire = b_S0_57_182_d2 := rfl
theorem source_not_kernel : ¬ InKernel (matrixOf 1 1 b_S0_54_180_d3.outgoing) event7247Source := finite_valid.source_not_kernel
example : Indexed.check { indexed with eventPage := 4 } = false := by decide
example : Executable.check { finite with rawSource := [] } = false := by decide
example : Executable.check { finite with target := [false] } = false := by decide
#print axioms finite_valid
#print axioms indexed_valid
end AggregateHighD2Conditional.Pipeline.Executable7247
