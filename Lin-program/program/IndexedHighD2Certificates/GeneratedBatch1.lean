import IndexedHighD2Certificates.Family
import AggregateTargetInventory.EventAudit.IndexedBatch1
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
namespace IndexedHighD2Certificates
open IndexedFamilyCertificates
def event2785 : BoundWire := bound_event% "IndexedFamilyProducer/HighD2/events/event2785.json"
theorem event2785_valid : event2785.Valid family := by
  refine ⟨rfl, ⟨AggregateTargetInventory.EventAudit.IndexedBatch1.event2785_valid, ?_⟩⟩
  refine ⟨by decide, family_unique, ?_, ?_, ?_⟩
  · decide
  · decide
  · decide
theorem event2785_differential : DifferentialAt family (keyAt event2785.object event2785.event.eventPage event2785.event.sourceDegree)
    event2785.event.finite.source event2785.event.finite.target := event2785_valid.2.differential
def event2786 : BoundWire := bound_event% "IndexedFamilyProducer/HighD2/events/event2786.json"
theorem event2786_valid : event2786.Valid family := by
  refine ⟨rfl, ⟨AggregateTargetInventory.EventAudit.IndexedBatch1.event2786_valid, ?_⟩⟩
  refine ⟨by decide, family_unique, ?_, ?_, ?_⟩
  · decide
  · decide
  · decide
theorem event2786_differential : DifferentialAt family (keyAt event2786.object event2786.event.eventPage event2786.event.sourceDegree)
    event2786.event.finite.source event2786.event.finite.target := event2786_valid.2.differential
def event2787 : BoundWire := bound_event% "IndexedFamilyProducer/HighD2/events/event2787.json"
theorem event2787_valid : event2787.Valid family := by
  refine ⟨rfl, ⟨AggregateTargetInventory.EventAudit.IndexedBatch1.event2787_valid, ?_⟩⟩
  refine ⟨by decide, family_unique, ?_, ?_, ?_⟩
  · decide
  · decide
  · decide
theorem event2787_differential : DifferentialAt family (keyAt event2787.object event2787.event.eventPage event2787.event.sourceDegree)
    event2787.event.finite.source event2787.event.finite.target := event2787_valid.2.differential
def event2850 : BoundWire := bound_event% "IndexedFamilyProducer/HighD2/events/event2850.json"
theorem event2850_valid : event2850.Valid family := by
  refine ⟨rfl, ⟨AggregateTargetInventory.EventAudit.IndexedBatch1.event2850_valid, ?_⟩⟩
  refine ⟨by decide, family_unique, ?_, ?_, ?_⟩
  · decide
  · decide
  · decide
theorem event2850_differential : DifferentialAt family (keyAt event2850.object event2850.event.eventPage event2850.event.sourceDegree)
    event2850.event.finite.source event2850.event.finite.target := event2850_valid.2.differential
def event2851 : BoundWire := bound_event% "IndexedFamilyProducer/HighD2/events/event2851.json"
theorem event2851_valid : event2851.Valid family := by
  refine ⟨rfl, ⟨AggregateTargetInventory.EventAudit.IndexedBatch1.event2851_valid, ?_⟩⟩
  refine ⟨by decide, family_unique, ?_, ?_, ?_⟩
  · decide
  · decide
  · decide
theorem event2851_differential : DifferentialAt family (keyAt event2851.object event2851.event.eventPage event2851.event.sourceDegree)
    event2851.event.finite.source event2851.event.finite.target := event2851_valid.2.differential
def event2853 : BoundWire := bound_event% "IndexedFamilyProducer/HighD2/events/event2853.json"
theorem event2853_valid : event2853.Valid family := by
  refine ⟨rfl, ⟨AggregateTargetInventory.EventAudit.IndexedBatch1.event2853_valid, ?_⟩⟩
  refine ⟨by decide, family_unique, ?_, ?_, ?_⟩
  · decide
  · decide
  · decide
theorem event2853_differential : DifferentialAt family (keyAt event2853.object event2853.event.eventPage event2853.event.sourceDegree)
    event2853.event.finite.source event2853.event.finite.target := event2853_valid.2.differential
def event2854 : BoundWire := bound_event% "IndexedFamilyProducer/HighD2/events/event2854.json"
theorem event2854_valid : event2854.Valid family := by
  refine ⟨rfl, ⟨AggregateTargetInventory.EventAudit.IndexedBatch1.event2854_valid, ?_⟩⟩
  refine ⟨by decide, family_unique, ?_, ?_, ?_⟩
  · decide
  · decide
  · decide
theorem event2854_differential : DifferentialAt family (keyAt event2854.object event2854.event.eventPage event2854.event.sourceDegree)
    event2854.event.finite.source event2854.event.finite.target := event2854_valid.2.differential
def event2918 : BoundWire := bound_event% "IndexedFamilyProducer/HighD2/events/event2918.json"
theorem event2918_valid : event2918.Valid family := by
  refine ⟨rfl, ⟨AggregateTargetInventory.EventAudit.IndexedBatch1.event2918_valid, ?_⟩⟩
  refine ⟨by decide, family_unique, ?_, ?_, ?_⟩
  · decide
  · decide
  · decide
theorem event2918_differential : DifferentialAt family (keyAt event2918.object event2918.event.eventPage event2918.event.sourceDegree)
    event2918.event.finite.source event2918.event.finite.target := event2918_valid.2.differential
def event2919 : BoundWire := bound_event% "IndexedFamilyProducer/HighD2/events/event2919.json"
theorem event2919_valid : event2919.Valid family := by
  refine ⟨rfl, ⟨AggregateTargetInventory.EventAudit.IndexedBatch1.event2919_valid, ?_⟩⟩
  refine ⟨by decide, family_unique, ?_, ?_, ?_⟩
  · decide
  · decide
  · decide
theorem event2919_differential : DifferentialAt family (keyAt event2919.object event2919.event.eventPage event2919.event.sourceDegree)
    event2919.event.finite.source event2919.event.finite.target := event2919_valid.2.differential
def event2920 : BoundWire := bound_event% "IndexedFamilyProducer/HighD2/events/event2920.json"
theorem event2920_valid : event2920.Valid family := by
  refine ⟨rfl, ⟨AggregateTargetInventory.EventAudit.IndexedBatch1.event2920_valid, ?_⟩⟩
  refine ⟨by decide, family_unique, ?_, ?_, ?_⟩
  · decide
  · decide
  · decide
theorem event2920_differential : DifferentialAt family (keyAt event2920.object event2920.event.eventPage event2920.event.sourceDegree)
    event2920.event.finite.source event2920.event.finite.target := event2920_valid.2.differential
end IndexedHighD2Certificates
