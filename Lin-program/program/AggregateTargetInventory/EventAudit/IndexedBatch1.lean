import AggregateTargetInventory.EventAudit.Indexed
namespace AggregateTargetInventory.EventAudit.IndexedBatch1
open Indexed
def event2785 : Wire := indexed_event% "AggregateTargetInventory/EventAudit/indexed-batch/event2785.json"
theorem event2785_valid : event2785.Valid := by lin_cert using ()
def event2786 : Wire := indexed_event% "AggregateTargetInventory/EventAudit/indexed-batch/event2786.json"
theorem event2786_valid : event2786.Valid := by lin_cert using ()
def event2787 : Wire := indexed_event% "AggregateTargetInventory/EventAudit/indexed-batch/event2787.json"
theorem event2787_valid : event2787.Valid := by lin_cert using ()
def event2850 : Wire := indexed_event% "AggregateTargetInventory/EventAudit/indexed-batch/event2850.json"
theorem event2850_valid : event2850.Valid := by lin_cert using ()
def event2851 : Wire := indexed_event% "AggregateTargetInventory/EventAudit/indexed-batch/event2851.json"
theorem event2851_valid : event2851.Valid := by lin_cert using ()
def event2853 : Wire := indexed_event% "AggregateTargetInventory/EventAudit/indexed-batch/event2853.json"
theorem event2853_valid : event2853.Valid := by lin_cert using ()
def event2854 : Wire := indexed_event% "AggregateTargetInventory/EventAudit/indexed-batch/event2854.json"
theorem event2854_valid : event2854.Valid := by lin_cert using ()
def event2918 : Wire := indexed_event% "AggregateTargetInventory/EventAudit/indexed-batch/event2918.json"
theorem event2918_valid : event2918.Valid := by lin_cert using ()
def event2919 : Wire := indexed_event% "AggregateTargetInventory/EventAudit/indexed-batch/event2919.json"
theorem event2919_valid : event2919.Valid := by lin_cert using ()
def event2920 : Wire := indexed_event% "AggregateTargetInventory/EventAudit/indexed-batch/event2920.json"
theorem event2920_valid : event2920.Valid := by lin_cert using ()
end AggregateTargetInventory.EventAudit.IndexedBatch1
