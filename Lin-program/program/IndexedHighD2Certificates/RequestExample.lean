import IndexedHighD2Certificates.Family
import IndexedFamilyCertificates.RequestImport

set_option maxRecDepth 8192
set_option maxHeartbeats 8000000

namespace IndexedHighD2Certificates.RequestExample
open IndexedFamilyCertificates

def request : Request := family_request% "IndexedFamilyProducer/HighD2/request6651.json"

theorem stated_result : DifferentialAt family ⟨"S0", 4, 52, 177⟩ [true] [true] := by
  indexed_family_cert using request.certificate

theorem requested_result : DifferentialAt family request.key request.source request.target := by
  indexed_family_cert using request.certificate

example : (diagnoseResult family { request.key with object := "tmf" }
    request.source request.target request.certificate).map
    LinProgramCertificates.VerificationFailure.location = some "result.key" := by decide

example : (diagnoseResult family request.key request.source [false]
    request.certificate).map
    LinProgramCertificates.VerificationFailure.location = some "result.target" := by decide

#print axioms stated_result
end IndexedHighD2Certificates.RequestExample
