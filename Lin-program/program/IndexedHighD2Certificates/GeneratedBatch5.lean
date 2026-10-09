import IndexedHighD2Certificates.Family
import AggregateTargetInventory.EventAudit.IndexedBatch4
import AggregateTargetInventory.EventAudit.IndexedBatch5
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
namespace IndexedHighD2Certificates
open IndexedFamilyCertificates
def event3746 : BoundWire := bound_event% "IndexedFamilyProducer/HighD2/events/event3746.json"
theorem event3746_valid : event3746.Valid family := by
  refine ⟨rfl, ⟨AggregateTargetInventory.EventAudit.IndexedBatch4.event3746_valid, ?_⟩⟩
  refine ⟨by decide, family_unique, ?_, ?_, ?_⟩
  · decide
  · decide
  · decide
theorem event3746_differential : DifferentialAt family (keyAt event3746.object event3746.event.eventPage event3746.event.sourceDegree)
    event3746.event.finite.source event3746.event.finite.target := event3746_valid.2.differential
def event3747 : BoundWire := bound_event% "IndexedFamilyProducer/HighD2/events/event3747.json"
theorem event3747_valid : event3747.Valid family := by
  refine ⟨rfl, ⟨AggregateTargetInventory.EventAudit.IndexedBatch4.event3747_valid, ?_⟩⟩
  refine ⟨by decide, family_unique, ?_, ?_, ?_⟩
  · decide
  · decide
  · decide
theorem event3747_differential : DifferentialAt family (keyAt event3747.object event3747.event.eventPage event3747.event.sourceDegree)
    event3747.event.finite.source event3747.event.finite.target := event3747_valid.2.differential
def event3812 : BoundWire := bound_event% "IndexedFamilyProducer/HighD2/events/event3812.json"
theorem event3812_valid : event3812.Valid family := by
  refine ⟨rfl, ⟨AggregateTargetInventory.EventAudit.IndexedBatch4.event3812_valid, ?_⟩⟩
  refine ⟨by decide, family_unique, ?_, ?_, ?_⟩
  · decide
  · decide
  · decide
theorem event3812_differential : DifferentialAt family (keyAt event3812.object event3812.event.eventPage event3812.event.sourceDegree)
    event3812.event.finite.source event3812.event.finite.target := event3812_valid.2.differential
def event3813 : BoundWire := bound_event% "IndexedFamilyProducer/HighD2/events/event3813.json"
theorem event3813_valid : event3813.Valid family := by
  refine ⟨rfl, ⟨AggregateTargetInventory.EventAudit.IndexedBatch5.event3813_valid, ?_⟩⟩
  refine ⟨by decide, family_unique, ?_, ?_, ?_⟩
  · decide
  · decide
  · decide
theorem event3813_differential : DifferentialAt family (keyAt event3813.object event3813.event.eventPage event3813.event.sourceDegree)
    event3813.event.finite.source event3813.event.finite.target := event3813_valid.2.differential
def event3896 : BoundWire := bound_event% "IndexedFamilyProducer/HighD2/events/event3896.json"
theorem event3896_valid : event3896.Valid family := by
  refine ⟨rfl, ⟨AggregateTargetInventory.EventAudit.IndexedBatch5.event3896_valid, ?_⟩⟩
  refine ⟨by decide, family_unique, ?_, ?_, ?_⟩
  · decide
  · decide
  · decide
theorem event3896_differential : DifferentialAt family (keyAt event3896.object event3896.event.eventPage event3896.event.sourceDegree)
    event3896.event.finite.source event3896.event.finite.target := event3896_valid.2.differential
def event3995 : BoundWire := bound_event% "IndexedFamilyProducer/HighD2/events/event3995.json"
theorem event3995_valid : event3995.Valid family := by
  refine ⟨rfl, ⟨AggregateTargetInventory.EventAudit.IndexedBatch5.event3995_valid, ?_⟩⟩
  refine ⟨by decide, family_unique, ?_, ?_, ?_⟩
  · decide
  · decide
  · decide
theorem event3995_differential : DifferentialAt family (keyAt event3995.object event3995.event.eventPage event3995.event.sourceDegree)
    event3995.event.finite.source event3995.event.finite.target := event3995_valid.2.differential
def event4092 : BoundWire := bound_event% "IndexedFamilyProducer/HighD2/events/event4092.json"
theorem event4092_valid : event4092.Valid family := by
  refine ⟨rfl, ⟨AggregateTargetInventory.EventAudit.IndexedBatch5.event4092_valid, ?_⟩⟩
  refine ⟨by decide, family_unique, ?_, ?_, ?_⟩
  · decide
  · decide
  · decide
theorem event4092_differential : DifferentialAt family (keyAt event4092.object event4092.event.eventPage event4092.event.sourceDegree)
    event4092.event.finite.source event4092.event.finite.target := event4092_valid.2.differential
def event4162 : BoundWire := bound_event% "IndexedFamilyProducer/HighD2/events/event4162.json"
theorem event4162_valid : event4162.Valid family := by
  refine ⟨rfl, ⟨AggregateTargetInventory.EventAudit.IndexedBatch5.event4162_valid, ?_⟩⟩
  refine ⟨by decide, family_unique, ?_, ?_, ?_⟩
  · decide
  · decide
  · decide
theorem event4162_differential : DifferentialAt family (keyAt event4162.object event4162.event.eventPage event4162.event.sourceDegree)
    event4162.event.finite.source event4162.event.finite.target := event4162_valid.2.differential
def event4163 : BoundWire := bound_event% "IndexedFamilyProducer/HighD2/events/event4163.json"
theorem event4163_valid : event4163.Valid family := by
  refine ⟨rfl, ⟨AggregateTargetInventory.EventAudit.IndexedBatch5.event4163_valid, ?_⟩⟩
  refine ⟨by decide, family_unique, ?_, ?_, ?_⟩
  · decide
  · decide
  · decide
theorem event4163_differential : DifferentialAt family (keyAt event4163.object event4163.event.eventPage event4163.event.sourceDegree)
    event4163.event.finite.source event4163.event.finite.target := event4163_valid.2.differential
def event4263 : BoundWire := bound_event% "IndexedFamilyProducer/HighD2/events/event4263.json"
theorem event4263_valid : event4263.Valid family := by
  refine ⟨rfl, ⟨AggregateTargetInventory.EventAudit.IndexedBatch5.event4263_valid, ?_⟩⟩
  refine ⟨by decide, family_unique, ?_, ?_, ?_⟩
  · decide
  · decide
  · decide
theorem event4263_differential : DifferentialAt family (keyAt event4263.object event4263.event.eventPage event4263.event.sourceDegree)
    event4263.event.finite.source event4263.event.finite.target := event4263_valid.2.differential
end IndexedHighD2Certificates
