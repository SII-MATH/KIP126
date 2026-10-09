import Fact721FirstLater.Tactic
import ActualTraceRequests.Import

namespace Fact721FirstLater
open ActualTraceRequests ManualInputObligations.Reference
open Fact721ConstructedActual.First

def spec : Specification := ⟨"fact-7.21:first:E6",[false,true],[true]⟩

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
  {initial : Fact721ConstructedActual.AdditiveCoordinates degree S 2 2}
  {product : CertifiedAdamsProduct S}
  {previous : Fact721FirstD4Search.Constructed.Prefix5 S pages initial}

/-- The output flag certifies nonvanishing, not an unconstructed E6 chart. -/
def RequestedValid (input : (S.element 2 degree).carrier) (request : Request) : Prop :=
  request.version = 1 ∧ request.claim = spec.claim ∧ request.source = spec.source ∧
    request.output = [true] ∧ ResultValid S pages initial input 6

theorem request_sound (I : Input previous product) (input : (S.element 2 degree).carrier)
    (binding : initial.coordinates.equivalence input = Fact721PageCertificates.First.target)
    (request : Request) (accepted : check spec request = true) :
    RequestedValid (pages := pages) (initial := initial) input request := by
  obtain ⟨hv,hc,hs,ho⟩ := check_sound spec request accepted
  exact ⟨hv,hc,hs,ho,e6_sound I input binding⟩

theorem batch_sound (I : Input previous product) (input : (S.element 2 degree).carrier)
    (binding : initial.coordinates.equivalence input = Fact721PageCertificates.First.target)
    (requests : List Request) (accepted : checkBatch spec requests = true) :
    ∀ request ∈ requests, RequestedValid (pages := pages) (initial := initial) input request := by
  intro request member
  exact request_sound I input binding request ((List.all_eq_true.mp accepted) request member)

syntax "fact721_first_request_cert" " using " term " named " term : tactic
macro_rules
  | `(tactic| fact721_first_request_cert using $cert:term named $binding:term) =>
    `(tactic| first
      | exact Fact721FirstLater.request_sound $cert _ $binding _ (by decide)
      | exact Fact721FirstLater.batch_sound $cert _ $binding _ (by decide))

def request : Request := actual_trace_request% "Fact721FirstLater/request.json"
def requests : List Request := actual_trace_batch% "Fact721FirstLater/requests.jsonl"

example (I : Input previous product) :
    RequestedValid (pages := pages) (initial := initial) (raw initial) request := by
  fact721_first_request_cert using I named raw_binding
example (I : Input previous product) :
    ∀ q ∈ requests, RequestedValid (pages := pages) (initial := initial) (raw initial) q := by
  fact721_first_request_cert using I named raw_binding
example (_I : Input previous product) : True := by
  fail_if_success
    have : RequestedValid (pages := pages) (initial := initial) (raw initial)
        {request with output := [false]} := by
      fact721_first_request_cert using _I named raw_binding
  fail_if_success
    have : RequestedValid (pages := pages) (initial := initial) (raw initial)
        {request with source := [true,false]} := by
      fact721_first_request_cert using _I named raw_binding
  fail_if_success
    have : RequestedValid (pages := pages) (initial := initial) (raw initial)
        {request with claim := "fact-7.21:first:permanent"} := by
      fact721_first_request_cert using _I named raw_binding
  trivial

example : (diagnoseBatch spec [request,{request with output := []}] 1).map
    (fun failure => (failure.1,failure.2.location)) = some (2,"output.length") := by decide

#print axioms request_sound
#print axioms batch_sound
end Fact721FirstLater
