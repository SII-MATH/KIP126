import AggregateTargetInventory.EventAudit.Indexed
namespace AggregateTargetInventory.EventAudit.IndexedBatch6
open Indexed
def event4337 : Wire := indexed_event% "AggregateTargetInventory/EventAudit/indexed-batch/event4337.json"
theorem event4337_valid : event4337.Valid := by lin_cert using ()
def event4338 : Wire := indexed_event% "AggregateTargetInventory/EventAudit/indexed-batch/event4338.json"
theorem event4338_valid : event4338.Valid := by lin_cert using ()
def event4411 : Wire := indexed_event% "AggregateTargetInventory/EventAudit/indexed-batch/event4411.json"
theorem event4411_valid : event4411.Valid := by lin_cert using ()
def event4412 : Wire := indexed_event% "AggregateTargetInventory/EventAudit/indexed-batch/event4412.json"
theorem event4412_valid : event4412.Valid := by lin_cert using ()
def event4501 : Wire := indexed_event% "AggregateTargetInventory/EventAudit/indexed-batch/event4501.json"
theorem event4501_valid : event4501.Valid := by lin_cert using ()
def event4502 : Wire := indexed_event% "AggregateTargetInventory/EventAudit/indexed-batch/event4502.json"
theorem event4502_valid : event4502.Valid := by lin_cert using ()
def event4503 : Wire := indexed_event% "AggregateTargetInventory/EventAudit/indexed-batch/event4503.json"
theorem event4503_valid : event4503.Valid := by lin_cert using ()
def event4671 : Wire := indexed_event% "AggregateTargetInventory/EventAudit/indexed-batch/event4671.json"
theorem event4671_valid : event4671.Valid := by lin_cert using ()
def event4763 : Wire := indexed_event% "AggregateTargetInventory/EventAudit/indexed-batch/event4763.json"
theorem event4763_valid : event4763.Valid := by lin_cert using ()
def event4764 : Wire := indexed_event% "AggregateTargetInventory/EventAudit/indexed-batch/event4764.json"
theorem event4764_valid : event4764.Valid := by lin_cert using ()
end AggregateTargetInventory.EventAudit.IndexedBatch6
