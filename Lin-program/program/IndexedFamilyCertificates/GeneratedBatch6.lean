import IndexedFamilyCertificates.GeneratedFamily
import AggregateTargetInventory.EventAudit.IndexedBatch5
import AggregateTargetInventory.EventAudit.IndexedBatch6
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
namespace IndexedFamilyCertificates.Generated
def event4264 : BoundWire := bound_event% "IndexedFamilyProducer/events/event4264.json"
theorem event4264_valid : event4264.Valid family := by
  refine ⟨rfl, ⟨AggregateTargetInventory.EventAudit.IndexedBatch5.event4264_valid, ?_⟩⟩
  refine ⟨by decide, family_unique, ?_, ?_, ?_⟩
  · decide
  · decide
  · decide
theorem event4264_differential : DifferentialAt family (keyAt event4264.object event4264.event.eventPage event4264.event.sourceDegree)
    event4264.event.finite.source event4264.event.finite.target := event4264_valid.2.differential
def event4265 : BoundWire := bound_event% "IndexedFamilyProducer/events/event4265.json"
theorem event4265_valid : event4265.Valid family := by
  refine ⟨rfl, ⟨AggregateTargetInventory.EventAudit.IndexedBatch5.event4265_valid, ?_⟩⟩
  refine ⟨by decide, family_unique, ?_, ?_, ?_⟩
  · decide
  · decide
  · decide
theorem event4265_differential : DifferentialAt family (keyAt event4265.object event4265.event.eventPage event4265.event.sourceDegree)
    event4265.event.finite.source event4265.event.finite.target := event4265_valid.2.differential
def event4266 : BoundWire := bound_event% "IndexedFamilyProducer/events/event4266.json"
theorem event4266_valid : event4266.Valid family := by
  refine ⟨rfl, ⟨AggregateTargetInventory.EventAudit.IndexedBatch5.event4266_valid, ?_⟩⟩
  refine ⟨by decide, family_unique, ?_, ?_, ?_⟩
  · decide
  · decide
  · decide
theorem event4266_differential : DifferentialAt family (keyAt event4266.object event4266.event.eventPage event4266.event.sourceDegree)
    event4266.event.finite.source event4266.event.finite.target := event4266_valid.2.differential
def event4337 : BoundWire := bound_event% "IndexedFamilyProducer/events/event4337.json"
theorem event4337_valid : event4337.Valid family := by
  refine ⟨rfl, ⟨AggregateTargetInventory.EventAudit.IndexedBatch6.event4337_valid, ?_⟩⟩
  refine ⟨by decide, family_unique, ?_, ?_, ?_⟩
  · decide
  · decide
  · decide
theorem event4337_differential : DifferentialAt family (keyAt event4337.object event4337.event.eventPage event4337.event.sourceDegree)
    event4337.event.finite.source event4337.event.finite.target := event4337_valid.2.differential
def event4338 : BoundWire := bound_event% "IndexedFamilyProducer/events/event4338.json"
theorem event4338_valid : event4338.Valid family := by
  refine ⟨rfl, ⟨AggregateTargetInventory.EventAudit.IndexedBatch6.event4338_valid, ?_⟩⟩
  refine ⟨by decide, family_unique, ?_, ?_, ?_⟩
  · decide
  · decide
  · decide
theorem event4338_differential : DifferentialAt family (keyAt event4338.object event4338.event.eventPage event4338.event.sourceDegree)
    event4338.event.finite.source event4338.event.finite.target := event4338_valid.2.differential
def event4411 : BoundWire := bound_event% "IndexedFamilyProducer/events/event4411.json"
theorem event4411_valid : event4411.Valid family := by
  refine ⟨rfl, ⟨AggregateTargetInventory.EventAudit.IndexedBatch6.event4411_valid, ?_⟩⟩
  refine ⟨by decide, family_unique, ?_, ?_, ?_⟩
  · decide
  · decide
  · decide
theorem event4411_differential : DifferentialAt family (keyAt event4411.object event4411.event.eventPage event4411.event.sourceDegree)
    event4411.event.finite.source event4411.event.finite.target := event4411_valid.2.differential
def event4412 : BoundWire := bound_event% "IndexedFamilyProducer/events/event4412.json"
theorem event4412_valid : event4412.Valid family := by
  refine ⟨rfl, ⟨AggregateTargetInventory.EventAudit.IndexedBatch6.event4412_valid, ?_⟩⟩
  refine ⟨by decide, family_unique, ?_, ?_, ?_⟩
  · decide
  · decide
  · decide
theorem event4412_differential : DifferentialAt family (keyAt event4412.object event4412.event.eventPage event4412.event.sourceDegree)
    event4412.event.finite.source event4412.event.finite.target := event4412_valid.2.differential
def event4501 : BoundWire := bound_event% "IndexedFamilyProducer/events/event4501.json"
theorem event4501_valid : event4501.Valid family := by
  refine ⟨rfl, ⟨AggregateTargetInventory.EventAudit.IndexedBatch6.event4501_valid, ?_⟩⟩
  refine ⟨by decide, family_unique, ?_, ?_, ?_⟩
  · decide
  · decide
  · decide
theorem event4501_differential : DifferentialAt family (keyAt event4501.object event4501.event.eventPage event4501.event.sourceDegree)
    event4501.event.finite.source event4501.event.finite.target := event4501_valid.2.differential
def event4502 : BoundWire := bound_event% "IndexedFamilyProducer/events/event4502.json"
theorem event4502_valid : event4502.Valid family := by
  refine ⟨rfl, ⟨AggregateTargetInventory.EventAudit.IndexedBatch6.event4502_valid, ?_⟩⟩
  refine ⟨by decide, family_unique, ?_, ?_, ?_⟩
  · decide
  · decide
  · decide
theorem event4502_differential : DifferentialAt family (keyAt event4502.object event4502.event.eventPage event4502.event.sourceDegree)
    event4502.event.finite.source event4502.event.finite.target := event4502_valid.2.differential
def event4503 : BoundWire := bound_event% "IndexedFamilyProducer/events/event4503.json"
theorem event4503_valid : event4503.Valid family := by
  refine ⟨rfl, ⟨AggregateTargetInventory.EventAudit.IndexedBatch6.event4503_valid, ?_⟩⟩
  refine ⟨by decide, family_unique, ?_, ?_, ?_⟩
  · decide
  · decide
  · decide
theorem event4503_differential : DifferentialAt family (keyAt event4503.object event4503.event.eventPage event4503.event.sourceDegree)
    event4503.event.finite.source event4503.event.finite.target := event4503_valid.2.differential
end IndexedFamilyCertificates.Generated
