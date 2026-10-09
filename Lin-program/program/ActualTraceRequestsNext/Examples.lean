import ActualTraceRequestsNext.Tactic

namespace ActualTraceRequestsNext
open ActualTraceRequests ManualInputObligations.Reference

def e9 : Request := actual_trace_request% "ActualTraceRequestsNext/fact713.json"
def first : Request := actual_trace_request% "ActualTraceRequestsNext/first.json"
def second : Request := actual_trace_request% "ActualTraceRequestsNext/second.json"
def noHit : Request := actual_trace_request% "ActualTraceRequestsNext/prop79.json"
def e9Batch : List Request := actual_trace_batch% "ActualTraceRequestsNext/fact713.jsonl"
def firstBatch : List Request := actual_trace_batch% "ActualTraceRequestsNext/first.jsonl"
def secondBatch : List Request := actual_trace_batch% "ActualTraceRequestsNext/second.jsonl"
def noHitBatch : List Request := actual_trace_batch% "ActualTraceRequestsNext/prop79.jsonl"

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}

example (P : Fact713ConstructedE9.Prefix9 S pages) : Fact713.RequestedValid P e9 := by
  actual_trace_next_cert using P
example (P : Fact713ConstructedE9.Prefix9 S pages) :
    ∀ request ∈ e9Batch, Fact713.RequestedValid P request := by actual_trace_next_cert using P

example {initial : Fact721ConstructedActual.AdditiveCoordinates Fact721ConstructedActual.First.degree S 2 2}
    (P : Fact721FirstD4Search.Constructed.Prefix5 S pages initial) :
    Fact721.First.RequestedValid P first := by actual_trace_next_cert using P
example {initial : Fact721ConstructedActual.AdditiveCoordinates Fact721ConstructedActual.First.degree S 2 2}
    (P : Fact721FirstD4Search.Constructed.Prefix5 S pages initial) :
    ∀ request ∈ firstBatch, Fact721.First.RequestedValid P request := by actual_trace_next_cert using P

example {initial : Fact721ConstructedActual.AdditiveCoordinates Fact721ConstructedActual.Second.degree S 2 3}
    (P : Fact721ConstructedActual.Second.Prefix5 S pages initial) :
    Fact721.Second.RequestedValid P second := by actual_trace_next_cert using P
example {initial : Fact721ConstructedActual.AdditiveCoordinates Fact721ConstructedActual.Second.degree S 2 3}
    (P : Fact721ConstructedActual.Second.Prefix5 S pages initial) :
    ∀ request ∈ secondBatch, Fact721.Second.RequestedValid P request := by actual_trace_next_cert using P

example {initial : Prop79TargetSearch.Constructed.AdditiveCoordinates S 2 4}
    (P : Prop79TargetSearch.Constructed.Prefix5 S pages initial)
    (last : Prop79TargetSearch.Constructed.Page5Input P) :
    Prop79.RequestedValid P noHit := by actual_trace_next_cert using P incoming last
example {initial : Prop79TargetSearch.Constructed.AdditiveCoordinates S 2 4}
    (P : Prop79TargetSearch.Constructed.Prefix5 S pages initial)
    (last : Prop79TargetSearch.Constructed.Page5Input P) :
    ∀ request ∈ noHitBatch, Prop79.RequestedValid P request := by
  actual_trace_next_cert using P incoming last

example (P : Fact713ConstructedE9.Prefix9 S pages) : True := by
  fail_if_success
    have : Fact713.RequestedValid P {e9 with source := [true,false]} := by actual_trace_next_cert using P
  fail_if_success
    have : Fact713.RequestedValid P {e9 with source := [true,true,false]} := by actual_trace_next_cert using P
  fail_if_success
    have : Fact713.RequestedValid P {e9 with output := [false]} := by actual_trace_next_cert using P
  fail_if_success
    have : Fact713.RequestedValid P {e9 with claim := "fact-7.13:E12"} := by actual_trace_next_cert using P
  fail_if_success
    have : Fact713.RequestedValid P {e9 with version := 2} := by actual_trace_next_cert using P
  fail_if_success
    have : Fact713.RequestedValid P first := by actual_trace_next_cert using P
  trivial

example : (diagnoseBatch Fact713.spec [e9, {e9 with output := [false]}] 1).map
    (fun failure => (failure.1, failure.2.location)) = some (2, "output") := by decide

end ActualTraceRequestsNext
