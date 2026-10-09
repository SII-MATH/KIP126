import ActualTraceRequests.Tactic

namespace ActualTraceRequests
open ManualInputObligations.Reference

def request715 : Request := actual_trace_request% "ActualTraceRequests/fact715.json"
def request719 : Request := actual_trace_request% "ActualTraceRequests/fact719.json"
def batch715 : List Request := actual_trace_batch% "ActualTraceRequests/fact715.jsonl"
def batch719 : List Request := actual_trace_batch% "ActualTraceRequests/fact719.jsonl"

theorem imported715 {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
    {initial : Fact715ConstructedActual.AdditiveCoordinates S 2 5}
    (P : Fact715ConstructedActual.Prefix5 S pages initial) :
    Fact715.RequestedValid P request715 := by actual_trace_cert using P

theorem imported719 {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
    {initial : Fact719ConstructedActual.AdditiveCoordinates S 2 1}
    (P : Fact719ConstructedActual.Prefix6 S pages initial) :
    Fact719.RequestedValid P request719 := by actual_trace_cert using P

theorem importedBatch715 {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
    {initial : Fact715ConstructedActual.AdditiveCoordinates S 2 5}
    (P : Fact715ConstructedActual.Prefix5 S pages initial) :
    ∀ request ∈ batch715, Fact715.RequestedValid P request := by actual_trace_cert using P

theorem importedBatch719 {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
    {initial : Fact719ConstructedActual.AdditiveCoordinates S 2 1}
    (P : Fact719ConstructedActual.Prefix6 S pages initial) :
    ∀ request ∈ batch719, Fact719.RequestedValid P request := by actual_trace_cert using P

example {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
    {initial : Fact715ConstructedActual.AdditiveCoordinates S 2 5}
    (P : Fact715ConstructedActual.Prefix5 S pages initial) : True := by
  fail_if_success
    have : Fact715.RequestedValid P {request715 with output := [false]} := by actual_trace_cert using P
  fail_if_success
    have : Fact715.RequestedValid P {request715 with source := [true]} := by actual_trace_cert using P
  fail_if_success
    have : Fact715.RequestedValid P {request715 with source := [false,false,false,true,false,false]} := by actual_trace_cert using P
  fail_if_success
    have : Fact715.RequestedValid P {request715 with output := [true,false]} := by actual_trace_cert using P
  fail_if_success
    have : Fact715.RequestedValid P {request715 with claim := "fact-7.19"} := by actual_trace_cert using P
  fail_if_success
    have : Fact715.RequestedValid P {request715 with version := 2} := by actual_trace_cert using P
  trivial

example : (diagnose Fact715.spec {request715 with output := [false]}).map
    LinProgramCertificates.VerificationFailure.location = some "output" := by decide

example : (diagnoseBatch Fact715.spec
    [request715, {request715 with source := [true]}] 1).map
    (fun result => (result.1, result.2.location)) = some (2, "source.length") := by decide

#print axioms imported715
#print axioms imported719
#print axioms importedBatch715
#print axioms importedBatch719
end ActualTraceRequests
