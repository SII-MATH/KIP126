import IndexedFamilyCertificates.GeneratedFamily
import AggregateTargetInventory.EventAudit.IndexedBatch3
import AggregateTargetInventory.EventAudit.IndexedBatch4
import AggregateThreeProductConditional.Pipeline.Executable3744
import AggregateThreeProductConditional.Pipeline.Executable3745
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
namespace IndexedFamilyCertificates.Generated
def event3487 : BoundWire := bound_event% "IndexedFamilyProducer/events/event3487.json"
theorem event3487_valid : event3487.Valid family := by
  refine ⟨rfl, ⟨AggregateTargetInventory.EventAudit.IndexedBatch3.event3487_valid, ?_⟩⟩
  refine ⟨by decide, family_unique, ?_, ?_, ?_⟩
  · decide
  · decide
  · decide
theorem event3487_differential : DifferentialAt family (keyAt event3487.object event3487.event.eventPage event3487.event.sourceDegree)
    event3487.event.finite.source event3487.event.finite.target := event3487_valid.2.differential
def event3488 : BoundWire := bound_event% "IndexedFamilyProducer/events/event3488.json"
theorem event3488_valid : event3488.Valid family := by
  refine ⟨rfl, ⟨AggregateTargetInventory.EventAudit.IndexedBatch4.event3488_valid, ?_⟩⟩
  refine ⟨by decide, family_unique, ?_, ?_, ?_⟩
  · decide
  · decide
  · decide
theorem event3488_differential : DifferentialAt family (keyAt event3488.object event3488.event.eventPage event3488.event.sourceDegree)
    event3488.event.finite.source event3488.event.finite.target := event3488_valid.2.differential
def event3556 : BoundWire := bound_event% "IndexedFamilyProducer/events/event3556.json"
theorem event3556_valid : event3556.Valid family := by
  refine ⟨rfl, ⟨AggregateTargetInventory.EventAudit.IndexedBatch4.event3556_valid, ?_⟩⟩
  refine ⟨by decide, family_unique, ?_, ?_, ?_⟩
  · decide
  · decide
  · decide
theorem event3556_differential : DifferentialAt family (keyAt event3556.object event3556.event.eventPage event3556.event.sourceDegree)
    event3556.event.finite.source event3556.event.finite.target := event3556_valid.2.differential
def event3557 : BoundWire := bound_event% "IndexedFamilyProducer/events/event3557.json"
theorem event3557_valid : event3557.Valid family := by
  refine ⟨rfl, ⟨AggregateTargetInventory.EventAudit.IndexedBatch4.event3557_valid, ?_⟩⟩
  refine ⟨by decide, family_unique, ?_, ?_, ?_⟩
  · decide
  · decide
  · decide
theorem event3557_differential : DifferentialAt family (keyAt event3557.object event3557.event.eventPage event3557.event.sourceDegree)
    event3557.event.finite.source event3557.event.finite.target := event3557_valid.2.differential
def event3558 : BoundWire := bound_event% "IndexedFamilyProducer/events/event3558.json"
theorem event3558_valid : event3558.Valid family := by
  refine ⟨rfl, ⟨AggregateTargetInventory.EventAudit.IndexedBatch4.event3558_valid, ?_⟩⟩
  refine ⟨by decide, family_unique, ?_, ?_, ?_⟩
  · decide
  · decide
  · decide
theorem event3558_differential : DifferentialAt family (keyAt event3558.object event3558.event.eventPage event3558.event.sourceDegree)
    event3558.event.finite.source event3558.event.finite.target := event3558_valid.2.differential
def event3629 : BoundWire := bound_event% "IndexedFamilyProducer/events/event3629.json"
theorem event3629_valid : event3629.Valid family := by
  refine ⟨rfl, ⟨AggregateTargetInventory.EventAudit.IndexedBatch4.event3629_valid, ?_⟩⟩
  refine ⟨by decide, family_unique, ?_, ?_, ?_⟩
  · decide
  · decide
  · decide
theorem event3629_differential : DifferentialAt family (keyAt event3629.object event3629.event.eventPage event3629.event.sourceDegree)
    event3629.event.finite.source event3629.event.finite.target := event3629_valid.2.differential
def event3630 : BoundWire := bound_event% "IndexedFamilyProducer/events/event3630.json"
theorem event3630_valid : event3630.Valid family := by
  refine ⟨rfl, ⟨AggregateTargetInventory.EventAudit.IndexedBatch4.event3630_valid, ?_⟩⟩
  refine ⟨by decide, family_unique, ?_, ?_, ?_⟩
  · decide
  · decide
  · decide
theorem event3630_differential : DifferentialAt family (keyAt event3630.object event3630.event.eventPage event3630.event.sourceDegree)
    event3630.event.finite.source event3630.event.finite.target := event3630_valid.2.differential
def event3631 : BoundWire := bound_event% "IndexedFamilyProducer/events/event3631.json"
theorem event3631_valid : event3631.Valid family := by
  refine ⟨rfl, ⟨AggregateTargetInventory.EventAudit.IndexedBatch4.event3631_valid, ?_⟩⟩
  refine ⟨by decide, family_unique, ?_, ?_, ?_⟩
  · decide
  · decide
  · decide
theorem event3631_differential : DifferentialAt family (keyAt event3631.object event3631.event.eventPage event3631.event.sourceDegree)
    event3631.event.finite.source event3631.event.finite.target := event3631_valid.2.differential
def event3744 : BoundWire := bound_event% "IndexedFamilyProducer/events/event3744.json"
theorem event3744_valid : event3744.Valid family := by
  refine ⟨rfl, ⟨AggregateThreeProductConditional.Pipeline.Executable3744.indexed_valid, ?_⟩⟩
  refine ⟨by decide, family_unique, ?_, ?_, ?_⟩
  · decide
  · decide
  · decide
theorem event3744_differential : DifferentialAt family (keyAt event3744.object event3744.event.eventPage event3744.event.sourceDegree)
    event3744.event.finite.source event3744.event.finite.target := event3744_valid.2.differential
def event3745 : BoundWire := bound_event% "IndexedFamilyProducer/events/event3745.json"
theorem event3745_valid : event3745.Valid family := by
  refine ⟨rfl, ⟨AggregateThreeProductConditional.Pipeline.Executable3745.indexed_valid, ?_⟩⟩
  refine ⟨by decide, family_unique, ?_, ?_, ?_⟩
  · decide
  · decide
  · decide
theorem event3745_differential : DifferentialAt family (keyAt event3745.object event3745.event.eventPage event3745.event.sourceDegree)
    event3745.event.finite.source event3745.event.finite.target := event3745_valid.2.differential
end IndexedFamilyCertificates.Generated
