import IndexedFamilyCertificates.GeneratedFamily
import AggregateTargetInventory.EventAudit.IndexedBatch6
import AggregateTargetInventory.EventAudit.IndexedBatch7
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
namespace IndexedFamilyCertificates.Generated
def event4671 : BoundWire := bound_event% "IndexedFamilyProducer/events/event4671.json"
theorem event4671_valid : event4671.Valid family := by
  refine ⟨rfl, ⟨AggregateTargetInventory.EventAudit.IndexedBatch6.event4671_valid, ?_⟩⟩
  refine ⟨by decide, family_unique, ?_, ?_, ?_⟩
  · decide
  · decide
  · decide
theorem event4671_differential : DifferentialAt family (keyAt event4671.object event4671.event.eventPage event4671.event.sourceDegree)
    event4671.event.finite.source event4671.event.finite.target := event4671_valid.2.differential
def event4763 : BoundWire := bound_event% "IndexedFamilyProducer/events/event4763.json"
theorem event4763_valid : event4763.Valid family := by
  refine ⟨rfl, ⟨AggregateTargetInventory.EventAudit.IndexedBatch6.event4763_valid, ?_⟩⟩
  refine ⟨by decide, family_unique, ?_, ?_, ?_⟩
  · decide
  · decide
  · decide
theorem event4763_differential : DifferentialAt family (keyAt event4763.object event4763.event.eventPage event4763.event.sourceDegree)
    event4763.event.finite.source event4763.event.finite.target := event4763_valid.2.differential
def event4764 : BoundWire := bound_event% "IndexedFamilyProducer/events/event4764.json"
theorem event4764_valid : event4764.Valid family := by
  refine ⟨rfl, ⟨AggregateTargetInventory.EventAudit.IndexedBatch6.event4764_valid, ?_⟩⟩
  refine ⟨by decide, family_unique, ?_, ?_, ?_⟩
  · decide
  · decide
  · decide
theorem event4764_differential : DifferentialAt family (keyAt event4764.object event4764.event.eventPage event4764.event.sourceDegree)
    event4764.event.finite.source event4764.event.finite.target := event4764_valid.2.differential
def event4929 : BoundWire := bound_event% "IndexedFamilyProducer/events/event4929.json"
theorem event4929_valid : event4929.Valid family := by
  refine ⟨rfl, ⟨AggregateTargetInventory.EventAudit.IndexedBatch7.event4929_valid, ?_⟩⟩
  refine ⟨by decide, family_unique, ?_, ?_, ?_⟩
  · decide
  · decide
  · decide
theorem event4929_differential : DifferentialAt family (keyAt event4929.object event4929.event.eventPage event4929.event.sourceDegree)
    event4929.event.finite.source event4929.event.finite.target := event4929_valid.2.differential
def event4930 : BoundWire := bound_event% "IndexedFamilyProducer/events/event4930.json"
theorem event4930_valid : event4930.Valid family := by
  refine ⟨rfl, ⟨AggregateTargetInventory.EventAudit.IndexedBatch7.event4930_valid, ?_⟩⟩
  refine ⟨by decide, family_unique, ?_, ?_, ?_⟩
  · decide
  · decide
  · decide
theorem event4930_differential : DifferentialAt family (keyAt event4930.object event4930.event.eventPage event4930.event.sourceDegree)
    event4930.event.finite.source event4930.event.finite.target := event4930_valid.2.differential
def event5027 : BoundWire := bound_event% "IndexedFamilyProducer/events/event5027.json"
theorem event5027_valid : event5027.Valid family := by
  refine ⟨rfl, ⟨AggregateTargetInventory.EventAudit.IndexedBatch7.event5027_valid, ?_⟩⟩
  refine ⟨by decide, family_unique, ?_, ?_, ?_⟩
  · decide
  · decide
  · decide
theorem event5027_differential : DifferentialAt family (keyAt event5027.object event5027.event.eventPage event5027.event.sourceDegree)
    event5027.event.finite.source event5027.event.finite.target := event5027_valid.2.differential
def event5028 : BoundWire := bound_event% "IndexedFamilyProducer/events/event5028.json"
theorem event5028_valid : event5028.Valid family := by
  refine ⟨rfl, ⟨AggregateTargetInventory.EventAudit.IndexedBatch7.event5028_valid, ?_⟩⟩
  refine ⟨by decide, family_unique, ?_, ?_, ?_⟩
  · decide
  · decide
  · decide
theorem event5028_differential : DifferentialAt family (keyAt event5028.object event5028.event.eventPage event5028.event.sourceDegree)
    event5028.event.finite.source event5028.event.finite.target := event5028_valid.2.differential
def event5143 : BoundWire := bound_event% "IndexedFamilyProducer/events/event5143.json"
theorem event5143_valid : event5143.Valid family := by
  refine ⟨rfl, ⟨AggregateTargetInventory.EventAudit.IndexedBatch7.event5143_valid, ?_⟩⟩
  refine ⟨by decide, family_unique, ?_, ?_, ?_⟩
  · decide
  · decide
  · decide
theorem event5143_differential : DifferentialAt family (keyAt event5143.object event5143.event.eventPage event5143.event.sourceDegree)
    event5143.event.finite.source event5143.event.finite.target := event5143_valid.2.differential
def event5217 : BoundWire := bound_event% "IndexedFamilyProducer/events/event5217.json"
theorem event5217_valid : event5217.Valid family := by
  refine ⟨rfl, ⟨AggregateTargetInventory.EventAudit.IndexedBatch7.event5217_valid, ?_⟩⟩
  refine ⟨by decide, family_unique, ?_, ?_, ?_⟩
  · decide
  · decide
  · decide
theorem event5217_differential : DifferentialAt family (keyAt event5217.object event5217.event.eventPage event5217.event.sourceDegree)
    event5217.event.finite.source event5217.event.finite.target := event5217_valid.2.differential
def event5326 : BoundWire := bound_event% "IndexedFamilyProducer/events/event5326.json"
theorem event5326_valid : event5326.Valid family := by
  refine ⟨rfl, ⟨AggregateTargetInventory.EventAudit.IndexedBatch7.event5326_valid, ?_⟩⟩
  refine ⟨by decide, family_unique, ?_, ?_, ?_⟩
  · decide
  · decide
  · decide
theorem event5326_differential : DifferentialAt family (keyAt event5326.object event5326.event.eventPage event5326.event.sourceDegree)
    event5326.event.finite.source event5326.event.finite.target := event5326_valid.2.differential
end IndexedFamilyCertificates.Generated
