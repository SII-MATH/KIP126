import AggregateTargetInventory.EventAudit.Executable
namespace AggregateTargetInventory.EventAudit.ExecutableBatch8
open Executable
def event5540 : Wire := finite_event% "AggregateTargetInventory/EventAudit/executable-batch/event5540.json"
theorem event5540_valid : event5540.Valid := by lin_cert using ()
def event5635 : Wire := finite_event% "AggregateTargetInventory/EventAudit/executable-batch/event5635.json"
theorem event5635_valid : event5635.Valid := by lin_cert using ()
def event5636 : Wire := finite_event% "AggregateTargetInventory/EventAudit/executable-batch/event5636.json"
theorem event5636_valid : event5636.Valid := by lin_cert using ()
def event5772 : Wire := finite_event% "AggregateTargetInventory/EventAudit/executable-batch/event5772.json"
theorem event5772_valid : event5772.Valid := by lin_cert using ()
def event5862 : Wire := finite_event% "AggregateTargetInventory/EventAudit/executable-batch/event5862.json"
theorem event5862_valid : event5862.Valid := by lin_cert using ()
def event5977 : Wire := finite_event% "AggregateTargetInventory/EventAudit/executable-batch/event5977.json"
theorem event5977_valid : event5977.Valid := by lin_cert using ()
def event6296 : Wire := finite_event% "AggregateTargetInventory/EventAudit/executable-batch/event6296.json"
theorem event6296_valid : event6296.Valid := by lin_cert using ()
end AggregateTargetInventory.EventAudit.ExecutableBatch8
