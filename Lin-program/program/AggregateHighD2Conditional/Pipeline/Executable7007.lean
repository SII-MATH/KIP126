import AggregateHighD2Conditional.Pipeline.Trace7007
import AggregateTargetInventory.EventAudit.Indexed
namespace AggregateHighD2Conditional.Pipeline.Executable7007
open LinearCertificates PageTransitionCertificates Data Events
open AggregateTargetInventory.EventAudit
def finite : Executable.Wire := finite_event% "FiniteEventProducer/HighD2/event7007.json"
def indexed : Indexed.Wire := indexed_event% "FiniteEventProducer/HighD2/indexed-event7007.json"
theorem finite_valid : finite.Valid := by lin_cert using ()
theorem indexed_valid : indexed.Valid := by lin_cert using ()
theorem same_finite : indexed.finite = finite := rfl
theorem event_comparison : finite.event = b_S0_55_180_d2 := rfl
theorem source_vector : finite.sourceVector = event7007Source := by decide
theorem target_vector : finite.targetVector = event7007Target := by decide
theorem raw_source : finite.rawSource = [true] := rfl
theorem raw_target : finite.rawTarget = [true] := rfl
theorem source_not_kernel : ¬ InKernel (matrixOf 1 1 b_S0_55_180_d2.outgoing) event7007Source := finite_valid.source_not_kernel
example : Indexed.check { indexed with eventPage := 3 } = false := by decide
example : Executable.check { finite with rawSource := [] } = false := by decide
example : Executable.check { finite with target := [false] } = false := by decide
#print axioms finite_valid
#print axioms indexed_valid
end AggregateHighD2Conditional.Pipeline.Executable7007
