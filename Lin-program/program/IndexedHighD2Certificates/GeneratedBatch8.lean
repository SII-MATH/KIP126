import IndexedHighD2Certificates.Family
import AggregateTargetInventory.EventAudit.IndexedBatch7
import AggregateTargetInventory.EventAudit.IndexedBatch8
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
namespace IndexedHighD2Certificates
open IndexedFamilyCertificates
def event5327 : BoundWire := bound_event% "IndexedFamilyProducer/HighD2/events/event5327.json"
theorem event5327_valid : event5327.Valid family := by
  refine ⟨rfl, ⟨AggregateTargetInventory.EventAudit.IndexedBatch7.event5327_valid, ?_⟩⟩
  refine ⟨by decide, family_unique, ?_, ?_, ?_⟩
  · decide
  · decide
  · decide
theorem event5327_differential : DifferentialAt family (keyAt event5327.object event5327.event.eventPage event5327.event.sourceDegree)
    event5327.event.finite.source event5327.event.finite.target := event5327_valid.2.differential
def event5441 : BoundWire := bound_event% "IndexedFamilyProducer/HighD2/events/event5441.json"
theorem event5441_valid : event5441.Valid family := by
  refine ⟨rfl, ⟨AggregateTargetInventory.EventAudit.IndexedBatch7.event5441_valid, ?_⟩⟩
  refine ⟨by decide, family_unique, ?_, ?_, ?_⟩
  · decide
  · decide
  · decide
theorem event5441_differential : DifferentialAt family (keyAt event5441.object event5441.event.eventPage event5441.event.sourceDegree)
    event5441.event.finite.source event5441.event.finite.target := event5441_valid.2.differential
def event5442 : BoundWire := bound_event% "IndexedFamilyProducer/HighD2/events/event5442.json"
theorem event5442_valid : event5442.Valid family := by
  refine ⟨rfl, ⟨AggregateTargetInventory.EventAudit.IndexedBatch7.event5442_valid, ?_⟩⟩
  refine ⟨by decide, family_unique, ?_, ?_, ?_⟩
  · decide
  · decide
  · decide
theorem event5442_differential : DifferentialAt family (keyAt event5442.object event5442.event.eventPage event5442.event.sourceDegree)
    event5442.event.finite.source event5442.event.finite.target := event5442_valid.2.differential
def event5540 : BoundWire := bound_event% "IndexedFamilyProducer/HighD2/events/event5540.json"
theorem event5540_valid : event5540.Valid family := by
  refine ⟨rfl, ⟨AggregateTargetInventory.EventAudit.IndexedBatch8.event5540_valid, ?_⟩⟩
  refine ⟨by decide, family_unique, ?_, ?_, ?_⟩
  · decide
  · decide
  · decide
theorem event5540_differential : DifferentialAt family (keyAt event5540.object event5540.event.eventPage event5540.event.sourceDegree)
    event5540.event.finite.source event5540.event.finite.target := event5540_valid.2.differential
def event5635 : BoundWire := bound_event% "IndexedFamilyProducer/HighD2/events/event5635.json"
theorem event5635_valid : event5635.Valid family := by
  refine ⟨rfl, ⟨AggregateTargetInventory.EventAudit.IndexedBatch8.event5635_valid, ?_⟩⟩
  refine ⟨by decide, family_unique, ?_, ?_, ?_⟩
  · decide
  · decide
  · decide
theorem event5635_differential : DifferentialAt family (keyAt event5635.object event5635.event.eventPage event5635.event.sourceDegree)
    event5635.event.finite.source event5635.event.finite.target := event5635_valid.2.differential
def event5636 : BoundWire := bound_event% "IndexedFamilyProducer/HighD2/events/event5636.json"
theorem event5636_valid : event5636.Valid family := by
  refine ⟨rfl, ⟨AggregateTargetInventory.EventAudit.IndexedBatch8.event5636_valid, ?_⟩⟩
  refine ⟨by decide, family_unique, ?_, ?_, ?_⟩
  · decide
  · decide
  · decide
theorem event5636_differential : DifferentialAt family (keyAt event5636.object event5636.event.eventPage event5636.event.sourceDegree)
    event5636.event.finite.source event5636.event.finite.target := event5636_valid.2.differential
def event5772 : BoundWire := bound_event% "IndexedFamilyProducer/HighD2/events/event5772.json"
theorem event5772_valid : event5772.Valid family := by
  refine ⟨rfl, ⟨AggregateTargetInventory.EventAudit.IndexedBatch8.event5772_valid, ?_⟩⟩
  refine ⟨by decide, family_unique, ?_, ?_, ?_⟩
  · decide
  · decide
  · decide
theorem event5772_differential : DifferentialAt family (keyAt event5772.object event5772.event.eventPage event5772.event.sourceDegree)
    event5772.event.finite.source event5772.event.finite.target := event5772_valid.2.differential
def event5862 : BoundWire := bound_event% "IndexedFamilyProducer/HighD2/events/event5862.json"
theorem event5862_valid : event5862.Valid family := by
  refine ⟨rfl, ⟨AggregateTargetInventory.EventAudit.IndexedBatch8.event5862_valid, ?_⟩⟩
  refine ⟨by decide, family_unique, ?_, ?_, ?_⟩
  · decide
  · decide
  · decide
theorem event5862_differential : DifferentialAt family (keyAt event5862.object event5862.event.eventPage event5862.event.sourceDegree)
    event5862.event.finite.source event5862.event.finite.target := event5862_valid.2.differential
def event5977 : BoundWire := bound_event% "IndexedFamilyProducer/HighD2/events/event5977.json"
theorem event5977_valid : event5977.Valid family := by
  refine ⟨rfl, ⟨AggregateTargetInventory.EventAudit.IndexedBatch8.event5977_valid, ?_⟩⟩
  refine ⟨by decide, family_unique, ?_, ?_, ?_⟩
  · decide
  · decide
  · decide
theorem event5977_differential : DifferentialAt family (keyAt event5977.object event5977.event.eventPage event5977.event.sourceDegree)
    event5977.event.finite.source event5977.event.finite.target := event5977_valid.2.differential
def event6296 : BoundWire := bound_event% "IndexedFamilyProducer/HighD2/events/event6296.json"
theorem event6296_valid : event6296.Valid family := by
  refine ⟨rfl, ⟨AggregateTargetInventory.EventAudit.IndexedBatch8.event6296_valid, ?_⟩⟩
  refine ⟨by decide, family_unique, ?_, ?_, ?_⟩
  · decide
  · decide
  · decide
theorem event6296_differential : DifferentialAt family (keyAt event6296.object event6296.event.eventPage event6296.event.sourceDegree)
    event6296.event.finite.source event6296.event.finite.target := event6296_valid.2.differential
end IndexedHighD2Certificates
