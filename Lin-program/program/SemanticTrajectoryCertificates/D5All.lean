import SemanticTrajectoryCertificates.Request
import IndexedD5Certificates.Events

namespace SemanticTrajectoryCertificates.D5All
open IndexedFamilyCertificates

/-- A proved finite snapshot can be transported to any supplied interpretation.
The interpretation contains the full mathematical comparison obligations. -/
theorem all_interpreted (w : BoundWire) (member : w ∈ IndexedD5Certificates.events)
    (meaning : IndexedEventData w) : meaning.Holds IndexedD5Certificates.family :=
  bound_event_transport _ w (IndexedD5Certificates.all_events w member) meaning

theorem requested (w : BoundWire) (member : w ∈ IndexedD5Certificates.events)
    (meaning : IndexedEventData w) (key : Key) (source target : List Bool)
    (agreement : ResultMatches key source target w) :
    RequestedHolds IndexedD5Certificates.family key source target meaning := by
  have valid := IndexedD5Certificates.all_events w member
  refine ⟨agreement, all_interpreted w member meaning, ?_, ?_, ?_⟩
  · have result := valid.2.differential
    rcases agreement with ⟨hk, hs, ht⟩
    rw [hk, hs, ht] at result
    exact result
  · intro i
    have h := congrFun (endpointCoordinates_named meaning.semantics.sourceEndpoint
      w.event.finite.event.m valid.2.1.2.1.2.1) i
    simpa only [agreement.2.1] using h
  · intro i
    have h := congrFun (endpointCoordinates_named meaning.semantics.targetEndpoint
      w.event.finite.event.k valid.2.1.2.1.2.2.1) i
    simpa only [agreement.2.2] using h

theorem requested_batch (requests : List SemanticRequest)
    (members : ∀ r ∈ requests, r.wire ∈ IndexedD5Certificates.events)
    (agreement : ∀ r ∈ requests, ResultMatches r.key r.source r.target r.wire) :
    ∀ r ∈ requests, RequestedHolds IndexedD5Certificates.family
      r.key r.source r.target r.interpretation := by
  intro r hr
  exact requested r.wire (members r hr) r.interpretation r.key r.source r.target (agreement r hr)

theorem interpreted3391 (meaning : IndexedEventData IndexedD5Certificates.event3391) :
    RequestedHolds IndexedD5Certificates.family ⟨"S0", 5, 13, 139⟩
      [true] [true] meaning := by
  apply requested IndexedD5Certificates.event3391
  · apply List.mem_append.mpr
    exact Or.inr (List.mem_singleton_self _)
  · decide

#print axioms all_interpreted
#print axioms requested
#print axioms requested_batch
#print axioms interpreted3391
end SemanticTrajectoryCertificates.D5All
