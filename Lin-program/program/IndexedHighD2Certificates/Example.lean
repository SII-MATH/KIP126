import IndexedHighD2Certificates.GeneratedCoherence
import IndexedHighD2Certificates.GeneratedAll
import IndexedFamilyCertificates.Results

set_option maxRecDepth 8192
set_option maxHeartbeats 8000000

namespace IndexedHighD2Certificates.Example
open IndexedFamilyCertificates

/-- The goal fixes the object, page, degree and both vectors. -/
theorem event6651 : DifferentialAt family ⟨"S0", 4, 52, 177⟩ [true] [true] := by
  indexed_family_cert using IndexedHighD2Certificates.event6651

theorem common_family : Coherent family := family_coherent

#print axioms event6651
end IndexedHighD2Certificates.Example
