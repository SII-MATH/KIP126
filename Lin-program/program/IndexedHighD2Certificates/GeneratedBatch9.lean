import IndexedHighD2Certificates.Family
import AggregateHighD2Conditional.Pipeline.Executable6651
import AggregateHighD2Conditional.Pipeline.Executable7007
import AggregateHighD2Conditional.Pipeline.Executable7162
import AggregateHighD2Conditional.Pipeline.Executable7247
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
namespace IndexedHighD2Certificates
open IndexedFamilyCertificates
def event6651 : BoundWire := bound_event% "IndexedFamilyProducer/HighD2/events/event6651.json"
theorem event6651_valid : event6651.Valid family := by
  refine ⟨rfl, ⟨AggregateHighD2Conditional.Pipeline.Executable6651.indexed_valid, ?_⟩⟩
  refine ⟨by decide, family_unique, ?_, ?_, ?_⟩
  · decide
  · decide
  · decide
theorem event6651_differential : DifferentialAt family (keyAt event6651.object event6651.event.eventPage event6651.event.sourceDegree)
    event6651.event.finite.source event6651.event.finite.target := event6651_valid.2.differential
def event7007 : BoundWire := bound_event% "IndexedFamilyProducer/HighD2/events/event7007.json"
theorem event7007_valid : event7007.Valid family := by
  refine ⟨rfl, ⟨AggregateHighD2Conditional.Pipeline.Executable7007.indexed_valid, ?_⟩⟩
  refine ⟨by decide, family_unique, ?_, ?_, ?_⟩
  · decide
  · decide
  · decide
theorem event7007_differential : DifferentialAt family (keyAt event7007.object event7007.event.eventPage event7007.event.sourceDegree)
    event7007.event.finite.source event7007.event.finite.target := event7007_valid.2.differential
def event7162 : BoundWire := bound_event% "IndexedFamilyProducer/HighD2/events/event7162.json"
theorem event7162_valid : event7162.Valid family := by
  refine ⟨rfl, ⟨AggregateHighD2Conditional.Pipeline.Executable7162.indexed_valid, ?_⟩⟩
  refine ⟨by decide, family_unique, ?_, ?_, ?_⟩
  · decide
  · decide
  · decide
theorem event7162_differential : DifferentialAt family (keyAt event7162.object event7162.event.eventPage event7162.event.sourceDegree)
    event7162.event.finite.source event7162.event.finite.target := event7162_valid.2.differential
def event7247 : BoundWire := bound_event% "IndexedFamilyProducer/HighD2/events/event7247.json"
theorem event7247_valid : event7247.Valid family := by
  refine ⟨rfl, ⟨AggregateHighD2Conditional.Pipeline.Executable7247.indexed_valid, ?_⟩⟩
  refine ⟨by decide, family_unique, ?_, ?_, ?_⟩
  · decide
  · decide
  · decide
theorem event7247_differential : DifferentialAt family (keyAt event7247.object event7247.event.eventPage event7247.event.sourceDegree)
    event7247.event.finite.source event7247.event.finite.target := event7247_valid.2.differential
end IndexedHighD2Certificates
