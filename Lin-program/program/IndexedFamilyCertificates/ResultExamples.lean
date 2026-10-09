import IndexedFamilyCertificates.Results
import IndexedFamilyCertificates.Tests

namespace IndexedFamilyCertificates.ResultExamples
open Tests

def certificate : BoundWire := ⟨1, "S0", actual⟩

theorem event3744 : DifferentialAt family ⟨"S0", 4, 18, 144⟩
    [true, true, false] [true, false] := by
  indexed_family_cert using certificate

example : True := by
  fail_if_success
    have : DifferentialAt family ⟨"tmf", 4, 18, 144⟩
        [true, true, false] [true, false] := by
      indexed_family_cert using certificate
  fail_if_success
    have : DifferentialAt family ⟨"S0", 4, 18, 144⟩
        [true, true, false] [false, true] := by
      indexed_family_cert using certificate
  fail_if_success
    have : DifferentialAt family ⟨"S0", 4, 18, 144⟩
        [false, true, false] [false, true] := by
      indexed_family_cert using certificate
  trivial

example : (diagnoseResult family ⟨"S0", 4, 18, 144⟩
    [true, true, false] [false, true] certificate).map
      LinProgramCertificates.VerificationFailure.location = some "result.target" := by decide

#print axioms event3744
end IndexedFamilyCertificates.ResultExamples
