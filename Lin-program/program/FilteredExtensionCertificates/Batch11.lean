import FilteredExtensionCertificates.Import

namespace FilteredExtensionCertificates.Examples
set_option maxRecDepth 100000
set_option maxHeartbeats 16000000

def batch11 : List WireCertificate :=
  filtered_extension_batch% "FilteredExtensionCertificates/batch11.jsonl"
theorem batch11_valid : ∀ w ∈ batch11, WireValid w := checkBatch_sound batch11 (by decide)

#print axioms batch11_valid
end FilteredExtensionCertificates.Examples
