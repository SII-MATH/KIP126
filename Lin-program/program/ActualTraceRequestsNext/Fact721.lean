import ActualTraceRequests.Import
import Fact721FirstD4Search.Constructed
import Fact721ConstructedActual.Second

namespace ActualTraceRequestsNext.Fact721
open ActualTraceRequests LinearCertificates ManualInputObligations.Reference
open ManualInputObligations Fact721ConstructedActual

namespace First
open Fact721FirstD4Search.Constructed
variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
  {initial : AdditiveCoordinates degree S 2 2}

def spec : Specification := ⟨"fact-7.21:first:E5", [false,true], [true]⟩
noncomputable def requestRaw (initial : AdditiveCoordinates degree S 2 2) (request : Request) :
    (S.element 2 degree).carrier :=
  initial.coordinates.equivalence.symm (fun i => request.source[i.val]?.getD false)

def RequestedValid (P : Prefix5 S pages initial) (request : Request) : Prop :=
  request.version = 1 ∧ request.claim = spec.claim ∧
  request.source.length = 2 ∧ request.output.length = 1 ∧
  ∃ endpoint : (S.element 5 degree).carrier,
    Nonempty (Trace S pages degree 5 (requestRaw initial request) endpoint) ∧ endpoint ≠ 0 ∧
    P.page5.coordinates.equivalence endpoint = fun i => request.output[i.val]?.getD false

theorem request_sound (P : Prefix5 S pages initial) (request : Request)
    (accepted : check spec request = true) : RequestedValid P request := by
  obtain ⟨hv,hc,hs,ho⟩ := check_sound spec request accepted
  have same : requestRaw initial request = Fact721ConstructedActual.First.raw initial := by
    unfold requestRaw Fact721ConstructedActual.First.raw
    apply congrArg initial.coordinates.equivalence.symm
    rw [hs]
    decide
  have output : (fun i : Fin 1 => request.output[i.val]?.getD false) =
      Fact721ConstructedActual.First.named4 := by rw [ho]; decide
  refine ⟨hv,hc,?_,?_,P.endpoint.value,?_,P.nonzero,?_⟩
  · rw [hs]; rfl
  · rw [ho]; rfl
  · rw [same]; exact ⟨P.endpoint.trace⟩
  · rw [output]; exact P.coordinate

theorem batch_sound (P : Prefix5 S pages initial) (requests : List Request)
    (accepted : checkBatch spec requests = true) :
    ∀ request ∈ requests, RequestedValid P request := by
  intro request member
  exact request_sound P request ((List.all_eq_true.mp accepted) request member)
#print axioms request_sound
#print axioms batch_sound
end First

namespace Second
open Fact721ConstructedActual.Second
variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
  {initial : AdditiveCoordinates degree S 2 3}

def spec : Specification := ⟨"fact-7.21:second:E5", [true,false,false], [true]⟩
noncomputable def requestRaw (initial : AdditiveCoordinates degree S 2 3) (request : Request) :
    (S.element 2 degree).carrier :=
  initial.coordinates.equivalence.symm (fun i => request.source[i.val]?.getD false)

def RequestedValid (P : Prefix5 S pages initial) (request : Request) : Prop :=
  request.version = 1 ∧ request.claim = spec.claim ∧
  request.source.length = 3 ∧ request.output.length = 1 ∧
  ∃ endpoint : (S.element 5 degree).carrier,
    Nonempty (Trace S pages degree 5 (requestRaw initial request) endpoint) ∧ endpoint ≠ 0 ∧
    P.page5.coordinates.equivalence endpoint = fun i => request.output[i.val]?.getD false

theorem request_sound (P : Prefix5 S pages initial) (request : Request)
    (accepted : check spec request = true) : RequestedValid P request := by
  obtain ⟨hv,hc,hs,ho⟩ := check_sound spec request accepted
  have same : requestRaw initial request = raw initial := by
    unfold requestRaw raw
    apply congrArg initial.coordinates.equivalence.symm
    rw [hs]
    decide
  have output : (fun i : Fin 1 => request.output[i.val]?.getD false) = named5 := by
    rw [ho]; decide
  refine ⟨hv,hc,?_,?_,P.endpoint.value,?_,P.nonzero,?_⟩
  · rw [hs]; rfl
  · rw [ho]; rfl
  · rw [same]; exact ⟨P.endpoint.trace⟩
  · rw [output]; exact P.coordinate

theorem batch_sound (P : Prefix5 S pages initial) (requests : List Request)
    (accepted : checkBatch spec requests = true) :
    ∀ request ∈ requests, RequestedValid P request := by
  intro request member
  exact request_sound P request ((List.all_eq_true.mp accepted) request member)
#print axioms request_sound
#print axioms batch_sound
end Second
end ActualTraceRequestsNext.Fact721
