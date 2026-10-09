import AggregateTargetInventory.EventAudit.IndexedBatch0
namespace AggregateTargetInventory.EventAudit.IndexedExamples
open Indexed IndexedBatch0
example : check {event2492 with eventPage := 3} = false := by decide
example : check {event2492 with sourceLabels := []} = false := by decide
example : check {event2492 with targetDegree := ⟨0,0⟩} = false := by decide
example : check {event2492 with finite := {event2492.finite with sourceStages := []}} = false := by decide
example : event2492.finite.Valid := event2492_valid.2
#print axioms check_sound
end AggregateTargetInventory.EventAudit.IndexedExamples
