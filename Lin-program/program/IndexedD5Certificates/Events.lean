import IndexedD5Certificates.Family
import IndexedHighD2Certificates.GeneratedAll
import AggregateD5Conditional.Pipeline.Executable3391
set_option maxRecDepth 8192
set_option maxHeartbeats 8000000
namespace IndexedD5Certificates
open IndexedFamilyCertificates
theorem old_events : ∀ e ∈ IndexedHighD2Certificates.events, e.Valid family := by
  intro e he
  exact bound_extension extends_old unique (IndexedHighD2Certificates.all_events_valid e he)
def event3391 : BoundWire := bound_event% "IndexedFamilyProducer/D5/events/event3391.json"
theorem event3391_valid : event3391.Valid family := by
  refine ⟨rfl, ⟨AggregateD5Conditional.Pipeline.Executable3391.indexed_valid, ?_⟩⟩
  exact ⟨by decide, unique, by decide, by decide, by decide⟩
theorem event3391_result : DifferentialAt family (keyAt event3391.object event3391.event.eventPage event3391.event.sourceDegree)
    event3391.event.finite.source event3391.event.finite.target := event3391_valid.2.differential
def events : List BoundWire := IndexedHighD2Certificates.events ++ [event3391]
theorem event_count : events.length = 95 := by decide
theorem all_events : ∀ e ∈ events, e.Valid family := by
  intro e he
  rcases List.mem_append.mp he with h | h
  · exact old_events e h
  · have equal : e = event3391 := List.mem_singleton.mp h
    subst e
    exact event3391_valid
#print axioms all_events
end IndexedD5Certificates
