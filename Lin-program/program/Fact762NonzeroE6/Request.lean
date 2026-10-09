import Fact762NonzeroE6.Actual
import ActualTraceRequests.Import

namespace Fact762NonzeroE6
open LinearCertificates ActualTraceRequests ManualInputObligations.Reference

def spec : Specification := ⟨"fact-7.6-2:E6", [false,true,false], [true]⟩

variable {C S : AdamsSpectralSequence} {R : Type} [CommRing R] [CharP R 2]

/-- The output is a nonvanishing flag. No E6 coordinate chart is claimed. -/
def RequestedValid (c : Certificate C S R) (input : (S.element 2 degree).carrier)
    (request : Request) : Prop :=
  request.version = 1 ∧ request.claim = spec.claim ∧ request.source = spec.source ∧
    request.output = [true] ∧ c.ResultValid input

theorem request_sound (c : Certificate C S R) (input : (S.element 2 degree).carrier)
    (binding : c.previous.source.stage.previous.previous.target.equivalence input =
      Fact762CsigmasqD5.Comparison.sphere2) (request : Request)
    (accepted : check spec request = true) : RequestedValid c input request := by
  obtain ⟨hv,hc,hs,ho⟩ := check_sound spec request accepted
  exact ⟨hv,hc,hs,ho,c.sound input binding⟩

theorem batch_sound (c : Certificate C S R) (input : (S.element 2 degree).carrier)
    (binding : c.previous.source.stage.previous.previous.target.equivalence input =
      Fact762CsigmasqD5.Comparison.sphere2) (requests : List Request)
    (accepted : checkBatch spec requests = true) :
    ∀ request ∈ requests, RequestedValid c input request := by
  intro request member
  exact request_sound c input binding request ((List.all_eq_true.mp accepted) request member)

syntax "fact762_e6_request_cert" " using " term : tactic
macro_rules
  | `(tactic| fact762_e6_request_cert using $cert:term) =>
    `(tactic| first
      | exact request_sound $cert _ (by assumption) _ (by decide)
      | exact batch_sound $cert _ (by assumption) _ (by decide))

def request : Request := actual_trace_request% "Fact762NonzeroE6/request.json"
def requests : List Request := actual_trace_batch% "Fact762NonzeroE6/requests.jsonl"

example (c : Certificate C S R) (input : (S.element 2 degree).carrier)
    (binding : c.previous.source.stage.previous.previous.target.equivalence input =
      Fact762CsigmasqD5.Comparison.sphere2) : RequestedValid c input request := by
  fact762_e6_request_cert using c

example (c : Certificate C S R) (input : (S.element 2 degree).carrier)
    (binding : c.previous.source.stage.previous.previous.target.equivalence input =
      Fact762CsigmasqD5.Comparison.sphere2) :
    ∀ q ∈ requests, RequestedValid c input q := by fact762_e6_request_cert using c

example (_c : Certificate C S R) (_input : (S.element 2 degree).carrier)
    (_binding : _c.previous.source.stage.previous.previous.target.equivalence _input =
      Fact762CsigmasqD5.Comparison.sphere2) : True := by
  fail_if_success
    have : RequestedValid _c _input {request with output := [false]} := by
      fact762_e6_request_cert using _c
  fail_if_success
    have : RequestedValid _c _input {request with source := [true,false,false]} := by
      fact762_e6_request_cert using _c
  fail_if_success
    have : RequestedValid _c _input {request with claim := "fact-7.6-2:permanent"} := by
      fact762_e6_request_cert using _c
  fail_if_success
    have : ∀ q ∈ [request,{request with output := []}], RequestedValid _c _input q := by
      fact762_e6_request_cert using _c
  trivial

example : (diagnoseBatch spec [request,{request with output := []}] 1).map
    (fun failure => (failure.1,failure.2.location)) = some (2,"output.length") := by decide

#print axioms request_sound
#print axioms batch_sound
end Fact762NonzeroE6
