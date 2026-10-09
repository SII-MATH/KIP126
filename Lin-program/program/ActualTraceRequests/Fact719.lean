import ActualTraceRequests.Import
import Fact719ConstructedActual.Trace

namespace ActualTraceRequests.Fact719
open LinearCertificates ManualInputObligations.Reference ManualInputObligations
open Fact719ConstructedActual

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
  {initial : AdditiveCoordinates S 2 1}

def spec : Specification := ⟨"fact-7.19", [true], [true]⟩

noncomputable def requestRaw (initial : AdditiveCoordinates S 2 1) (request : Request) :
    (S.element 2 degree).carrier :=
  initial.coordinates.equivalence.symm (fun i => request.source[i.val]?.getD false)

/-- Exact lengths prevent padding or truncating the caller's vectors. -/
def RequestedValid (P : Prefix6 S pages initial) (request : Request) : Prop :=
  request.version = 1 ∧ request.claim = spec.claim ∧
  request.source.length = 1 ∧ request.output.length = 1 ∧
  ∃ endpoint : (S.element 6 degree).carrier,
    Nonempty (Trace S pages degree 6 (requestRaw initial request) endpoint) ∧
    endpoint ≠ 0 ∧
    P.page6.coordinates.equivalence endpoint = fun i => request.output[i.val]?.getD false

theorem request_sound (P : Prefix6 S pages initial) (request : Request)
    (accepted : check spec request = true) : RequestedValid P request := by
  obtain ⟨hv, hc, hs, ho⟩ := check_sound spec request accepted
  have same : requestRaw initial request = raw initial := by
    unfold requestRaw raw
    apply congrArg initial.coordinates.equivalence.symm
    rw [hs]
    funext i
    exact (show ∀ i : Fin 1, (spec.source[i.val]?.getD false) = namedVector i from by decide) i
  have output : (fun i : Fin 1 => request.output[i.val]?.getD false) = namedVector := by
    rw [ho]
    decide
  refine ⟨hv, hc, ?_, ?_, P.endpoint6.value, ?_, P.nonzero6, ?_⟩
  · rw [hs]; rfl
  · rw [ho]; rfl
  · rw [same]
    exact ⟨P.endpoint6.trace⟩
  · rw [output]
    exact P.coordinate6

theorem batch_sound (P : Prefix6 S pages initial) (requests : List Request)
    (accepted : checkBatch spec requests = true) :
    ∀ request ∈ requests, RequestedValid P request := by
  intro request member
  exact request_sound P request ((List.all_eq_true.mp accepted) request member)

instance (P : Prefix6 S pages initial) (request : Request) :
    LinProgramCertificates.CertificateVerifier (RequestedValid P request) where
  Cert := Unit
  check := fun _ => ActualTraceRequests.check spec request
  sound := fun _ => request_sound P request

#print axioms request_sound
#print axioms batch_sound
end ActualTraceRequests.Fact719
