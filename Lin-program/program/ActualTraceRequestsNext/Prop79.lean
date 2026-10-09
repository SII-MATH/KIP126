import ActualTraceRequests.Import
import Prop79TargetSearch.Trace

namespace ActualTraceRequestsNext.Prop79
open ActualTraceRequests LinearCertificates ManualInputObligations.Reference
open ManualInputObligations Prop79TargetSearch.Constructed

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
  {initial : AdditiveCoordinates S 2 4}

def spec : Specification := ⟨"prop-7.9:noHitThrough5", [false,false,true,false], [true,false]⟩

noncomputable def requestRaw (initial : AdditiveCoordinates S 2 4) (request : Request) :
    (S.element 2 degree).carrier :=
  initial.coordinates.equivalence.symm (fun i => request.source[i.val]?.getD false)

def RequestedValid (P : Prefix5 S pages initial) (request : Request) : Prop :=
  request.version = 1 ∧ request.claim = spec.claim ∧
  request.source.length = 4 ∧ request.output.length = 2 ∧
  ∃ (e3 : (S.element 3 degree).carrier) (e4 : (S.element 4 degree).carrier)
    (e5 : (S.element 5 degree).carrier),
    Nonempty (Trace S pages degree 3 (requestRaw initial request) e3) ∧
    Nonempty (Trace S pages degree 4 (requestRaw initial request) e4) ∧
    Nonempty (Trace S pages degree 5 (requestRaw initial request) e5) ∧ e5 ≠ 0 ∧
    ¬ PageBoundary S 2 degree (requestRaw initial request) ∧
    ¬ PageBoundary S 3 degree e3 ∧ ¬ PageBoundary S 4 degree e4 ∧
    ¬ PageBoundary S 5 degree e5 ∧
    P.page5.coordinates.equivalence e5 = fun i => request.output[i.val]?.getD false

theorem request_sound (P : Prefix5 S pages initial) (last : Page5Input P) (request : Request)
    (accepted : check spec request = true) : RequestedValid P request := by
  obtain ⟨hv,hc,hs,ho⟩ := check_sound spec request accepted
  have same : requestRaw initial request = raw initial := by
    unfold requestRaw raw
    apply congrArg initial.coordinates.equivalence.symm
    rw [hs]
    decide
  have output : (fun i : Fin 2 => request.output[i.val]?.getD false) = vectorNext := by
    rw [ho]; decide
  refine ⟨hv,hc,?_,?_,P.previous.previous.endpoint3.value,P.previous.endpoint4.value,
    P.endpoint5.value,?_,?_,?_,P.nonzero5,?_,?_,?_,?_,?_⟩
  · rw [hs]; rfl
  · rw [ho]; rfl
  · rw [same]; exact ⟨P.previous.previous.endpoint3.trace⟩
  · rw [same]; exact ⟨P.previous.endpoint4.trace⟩
  · rw [same]; exact ⟨P.endpoint5.trace⟩
  · rw [same]; exact (P.nonboundaries last).1
  · exact (P.nonboundaries last).2.1
  · exact (P.nonboundaries last).2.2.1
  · exact (P.nonboundaries last).2.2.2
  · rw [output]; exact P.coordinate5

theorem batch_sound (P : Prefix5 S pages initial) (last : Page5Input P) (requests : List Request)
    (accepted : checkBatch spec requests = true) :
    ∀ request ∈ requests, RequestedValid P request := by
  intro request member
  exact request_sound P last request ((List.all_eq_true.mp accepted) request member)

#print axioms request_sound
#print axioms batch_sound
end ActualTraceRequestsNext.Prop79
