import SemanticTrajectoryCertificates.Indexed

namespace SemanticTrajectoryCertificates
open LinearCertificates PageTransitionCertificates
open IndexedFamilyCertificates

/-- The caller fixes the key and vectors, and the same semantic endpoints
carry those coordinates. The mathematical interpretation remains explicit. -/
structure RequestedHolds (family : Family) (key : Key) (source target : List Bool)
    {w : BoundWire} (d : IndexedEventData w) : Prop where
  request_matches : ResultMatches key source target w
  interpreted : d.Holds family
  finite_result : DifferentialAt family key source target
  source_coordinates : ∀ i : Fin w.event.finite.event.m,
    endpointCoordinates d.semantics.sourceEndpoint w.event.finite.event.m
      d.semantics.sourceEndpoint.point i = source[i.val]?.getD false
  target_coordinates : ∀ i : Fin w.event.finite.event.k,
    endpointCoordinates d.semantics.targetEndpoint w.event.finite.event.k
      d.semantics.targetEndpoint.point i = target[i.val]?.getD false

theorem request_sound (family : Family) (key : Key) (source target : List Bool)
    (w : BoundWire) (d : IndexedEventData w)
    (checked : checkResult family key source target w = true) :
    RequestedHolds family key source target d := by
  have raw := checked
  simp only [checkResult, Bool.and_eq_true, decide_eq_true_eq] at raw
  have valid := checkBound_sound family w raw.1
  refine ⟨raw.2, bound_event_transport family w valid d,
    checkResult_sound family key source target w checked, ?_, ?_⟩
  · intro i
    have h := congrFun (endpointCoordinates_named d.semantics.sourceEndpoint
      w.event.finite.event.m valid.2.1.2.1.2.1) i
    simpa only [raw.2.2.1] using h
  · intro i
    have h := congrFun (endpointCoordinates_named d.semantics.targetEndpoint
      w.event.finite.event.k valid.2.1.2.1.2.2.1) i
    simpa only [raw.2.2.2] using h

instance (family : Family) (key : Key) (source target : List Bool)
    (w : BoundWire) (d : IndexedEventData w) :
    LinProgramCertificates.CertificateVerifier (RequestedHolds family key source target d) where
  Cert := Unit
  check := fun _ => checkResult family key source target w
  sound := fun _ checked => request_sound family key source target w d checked

structure SemanticRequest where
  key : Key
  source : List Bool
  target : List Bool
  wire : BoundWire
  interpretation : IndexedEventData wire

def checkRequests (family : Family) (requests : List SemanticRequest) : Bool :=
  requests.all (fun r => checkResult family r.key r.source r.target r.wire)

theorem requests_sound (family : Family) (requests : List SemanticRequest)
    (checked : checkRequests family requests = true) :
    ∀ r ∈ requests, RequestedHolds family r.key r.source r.target r.interpretation := by
  intro r hr
  exact request_sound family r.key r.source r.target r.wire r.interpretation
    ((List.all_eq_true.mp checked) r hr)

instance (family : Family) (requests : List SemanticRequest) :
    LinProgramCertificates.CertificateVerifier
      (∀ r ∈ requests, RequestedHolds family r.key r.source r.target r.interpretation) where
  Cert := Unit
  check := fun _ => checkRequests family requests
  sound := fun _ checked => requests_sound family requests checked

#print axioms request_sound
#print axioms requests_sound
end SemanticTrajectoryCertificates
