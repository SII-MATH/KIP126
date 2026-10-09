import IndexedFamilyCertificates.GeneratedFamily
import AggregateTargetInventory.EventAudit.IndexedBatch2
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
namespace IndexedFamilyCertificates.Generated
def event2921 : BoundWire := bound_event% "IndexedFamilyProducer/events/event2921.json"
theorem event2921_valid : event2921.Valid family := by
  refine ⟨rfl, ⟨AggregateTargetInventory.EventAudit.IndexedBatch2.event2921_valid, ?_⟩⟩
  refine ⟨by decide, family_unique, ?_, ?_, ?_⟩
  · decide
  · decide
  · decide
theorem event2921_differential : DifferentialAt family (keyAt event2921.object event2921.event.eventPage event2921.event.sourceDegree)
    event2921.event.finite.source event2921.event.finite.target := event2921_valid.2.differential
def event2922 : BoundWire := bound_event% "IndexedFamilyProducer/events/event2922.json"
theorem event2922_valid : event2922.Valid family := by
  refine ⟨rfl, ⟨AggregateTargetInventory.EventAudit.IndexedBatch2.event2922_valid, ?_⟩⟩
  refine ⟨by decide, family_unique, ?_, ?_, ?_⟩
  · decide
  · decide
  · decide
theorem event2922_differential : DifferentialAt family (keyAt event2922.object event2922.event.eventPage event2922.event.sourceDegree)
    event2922.event.finite.source event2922.event.finite.target := event2922_valid.2.differential
def event3008 : BoundWire := bound_event% "IndexedFamilyProducer/events/event3008.json"
theorem event3008_valid : event3008.Valid family := by
  refine ⟨rfl, ⟨AggregateTargetInventory.EventAudit.IndexedBatch2.event3008_valid, ?_⟩⟩
  refine ⟨by decide, family_unique, ?_, ?_, ?_⟩
  · decide
  · decide
  · decide
theorem event3008_differential : DifferentialAt family (keyAt event3008.object event3008.event.eventPage event3008.event.sourceDegree)
    event3008.event.finite.source event3008.event.finite.target := event3008_valid.2.differential
def event3009 : BoundWire := bound_event% "IndexedFamilyProducer/events/event3009.json"
theorem event3009_valid : event3009.Valid family := by
  refine ⟨rfl, ⟨AggregateTargetInventory.EventAudit.IndexedBatch2.event3009_valid, ?_⟩⟩
  refine ⟨by decide, family_unique, ?_, ?_, ?_⟩
  · decide
  · decide
  · decide
theorem event3009_differential : DifferentialAt family (keyAt event3009.object event3009.event.eventPage event3009.event.sourceDegree)
    event3009.event.finite.source event3009.event.finite.target := event3009_valid.2.differential
def event3010 : BoundWire := bound_event% "IndexedFamilyProducer/events/event3010.json"
theorem event3010_valid : event3010.Valid family := by
  refine ⟨rfl, ⟨AggregateTargetInventory.EventAudit.IndexedBatch2.event3010_valid, ?_⟩⟩
  refine ⟨by decide, family_unique, ?_, ?_, ?_⟩
  · decide
  · decide
  · decide
theorem event3010_differential : DifferentialAt family (keyAt event3010.object event3010.event.eventPage event3010.event.sourceDegree)
    event3010.event.finite.source event3010.event.finite.target := event3010_valid.2.differential
def event3011 : BoundWire := bound_event% "IndexedFamilyProducer/events/event3011.json"
theorem event3011_valid : event3011.Valid family := by
  refine ⟨rfl, ⟨AggregateTargetInventory.EventAudit.IndexedBatch2.event3011_valid, ?_⟩⟩
  refine ⟨by decide, family_unique, ?_, ?_, ?_⟩
  · decide
  · decide
  · decide
theorem event3011_differential : DifferentialAt family (keyAt event3011.object event3011.event.eventPage event3011.event.sourceDegree)
    event3011.event.finite.source event3011.event.finite.target := event3011_valid.2.differential
def event3012 : BoundWire := bound_event% "IndexedFamilyProducer/events/event3012.json"
theorem event3012_valid : event3012.Valid family := by
  refine ⟨rfl, ⟨AggregateTargetInventory.EventAudit.IndexedBatch2.event3012_valid, ?_⟩⟩
  refine ⟨by decide, family_unique, ?_, ?_, ?_⟩
  · decide
  · decide
  · decide
theorem event3012_differential : DifferentialAt family (keyAt event3012.object event3012.event.eventPage event3012.event.sourceDegree)
    event3012.event.finite.source event3012.event.finite.target := event3012_valid.2.differential
def event3079 : BoundWire := bound_event% "IndexedFamilyProducer/events/event3079.json"
theorem event3079_valid : event3079.Valid family := by
  refine ⟨rfl, ⟨AggregateTargetInventory.EventAudit.IndexedBatch2.event3079_valid, ?_⟩⟩
  refine ⟨by decide, family_unique, ?_, ?_, ?_⟩
  · decide
  · decide
  · decide
theorem event3079_differential : DifferentialAt family (keyAt event3079.object event3079.event.eventPage event3079.event.sourceDegree)
    event3079.event.finite.source event3079.event.finite.target := event3079_valid.2.differential
def event3081 : BoundWire := bound_event% "IndexedFamilyProducer/events/event3081.json"
theorem event3081_valid : event3081.Valid family := by
  refine ⟨rfl, ⟨AggregateTargetInventory.EventAudit.IndexedBatch2.event3081_valid, ?_⟩⟩
  refine ⟨by decide, family_unique, ?_, ?_, ?_⟩
  · decide
  · decide
  · decide
theorem event3081_differential : DifferentialAt family (keyAt event3081.object event3081.event.eventPage event3081.event.sourceDegree)
    event3081.event.finite.source event3081.event.finite.target := event3081_valid.2.differential
def event3150 : BoundWire := bound_event% "IndexedFamilyProducer/events/event3150.json"
theorem event3150_valid : event3150.Valid family := by
  refine ⟨rfl, ⟨AggregateTargetInventory.EventAudit.IndexedBatch2.event3150_valid, ?_⟩⟩
  refine ⟨by decide, family_unique, ?_, ?_, ?_⟩
  · decide
  · decide
  · decide
theorem event3150_differential : DifferentialAt family (keyAt event3150.object event3150.event.eventPage event3150.event.sourceDegree)
    event3150.event.finite.source event3150.event.finite.target := event3150_valid.2.differential
end IndexedFamilyCertificates.Generated
