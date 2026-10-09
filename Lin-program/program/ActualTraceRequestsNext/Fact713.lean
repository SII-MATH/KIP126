import ActualTraceRequests.Import
import Fact713ConstructedE9.Request

namespace ActualTraceRequestsNext.Fact713
open ActualTraceRequests ManualInputObligations.Reference

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}

def spec : Specification := ⟨"fact-7.13:E9", [true,true], [true]⟩

def RequestedValid (P : Fact713ConstructedE9.Prefix9 S pages) (request : Request) : Prop :=
  request.version = 1 ∧ request.claim = spec.claim ∧
    Fact713ConstructedE9.RequestedValid P request.source request.output

theorem request_sound (P : Fact713ConstructedE9.Prefix9 S pages) (request : Request)
    (accepted : check spec request = true) : RequestedValid P request := by
  obtain ⟨hv,hc,hs,ho⟩ := check_sound spec request accepted
  refine ⟨hv,hc,?_⟩
  apply Fact713ConstructedE9.checkRequest_sound P
  rw [hs,ho]
  decide

theorem batch_sound (P : Fact713ConstructedE9.Prefix9 S pages) (requests : List Request)
    (accepted : checkBatch spec requests = true) :
    ∀ request ∈ requests, RequestedValid P request := by
  intro request member
  exact request_sound P request ((List.all_eq_true.mp accepted) request member)

#print axioms request_sound
#print axioms batch_sound
end ActualTraceRequestsNext.Fact713
