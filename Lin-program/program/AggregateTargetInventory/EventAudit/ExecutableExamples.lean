import AggregateTargetInventory.EventAudit.Executable
namespace AggregateTargetInventory.EventAudit.ExecutableExamples
open Executable

def d2 : Wire := finite_event% "AggregateTargetInventory/EventAudit/executable1.json"
def d4 : Wire := finite_event% "AggregateTargetInventory/EventAudit/executable2.json"
example : d2.Valid := by lin_cert using ()
example : d4.Valid := by lin_cert using ()
example : check {d4 with rawSource := []} = false := by decide
example : check {d4 with target := [false]} = false := by decide
example : check {d4 with source := []} = false := by decide
#print axioms check_sound
end AggregateTargetInventory.EventAudit.ExecutableExamples

#eval (do
  if (match AggregateTargetInventory.EventAudit.Executable.parse "{\"version\":1}" with | .error _ => false | .ok _ => true) then
    throw (IO.userError "malformed finite event unexpectedly parsed") : IO Unit)
