import ActualTraceRequestsE10.Tactic

namespace ActualTraceRequestsE10
open ActualTraceRequests ManualInputObligations.Reference
open Fact713Row3143Continuation.Constructed

def e10 : Request := actual_trace_request% "ActualTraceRequestsE10/fact713.json"
def e10Batch : List Request := actual_trace_batch% "ActualTraceRequestsE10/fact713.jsonl"

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}

theorem imported_single (P : Prefix10 S pages) : RequestedValid P e10 := by
  actual_trace_e10_cert using P
theorem imported_batch (P : Prefix10 S pages) :
    ∀ request ∈ e10Batch, RequestedValid P request := by actual_trace_e10_cert using P

example (P : Prefix10 S pages) : True := by
  fail_if_success
    have : RequestedValid P {e10 with source := [true,false]} := by actual_trace_e10_cert using P
  fail_if_success
    have : RequestedValid P {e10 with source := [true,true,false]} := by actual_trace_e10_cert using P
  fail_if_success
    have : RequestedValid P {e10 with output := [false]} := by actual_trace_e10_cert using P
  fail_if_success
    have : RequestedValid P {e10 with output := [true,false]} := by actual_trace_e10_cert using P
  fail_if_success
    have : RequestedValid P {e10 with claim := "fact-7.13:E9"} := by actual_trace_e10_cert using P
  fail_if_success
    have : RequestedValid P {e10 with claim := "fact-7.13:E12"} := by actual_trace_e10_cert using P
  fail_if_success
    have : RequestedValid P {e10 with version := 2} := by actual_trace_e10_cert using P
  fail_if_success
    have : ∀ request ∈ [e10,{e10 with output := [false]}], RequestedValid P request := by
      actual_trace_e10_cert using P
  trivial

example : (diagnoseBatch spec [e10,{e10 with output := [false]}] 1).map
    (fun failure => (failure.1,failure.2.location)) = some (2,"output") := by decide

#print axioms imported_single
#print axioms imported_batch
end ActualTraceRequestsE10
