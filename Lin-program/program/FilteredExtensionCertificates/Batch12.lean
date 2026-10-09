import FilteredExtensionCertificates.Import

namespace FilteredExtensionCertificates.Examples
set_option maxRecDepth 100000
set_option maxHeartbeats 16000000

def batch12 : List WireCertificate :=
  filtered_extension_batch% "FilteredExtensionCertificates/batch12.jsonl"
theorem batch12_valid : ∀ w ∈ batch12, WireValid w := checkBatch_sound batch12 (by decide)

#print axioms batch12_valid
end FilteredExtensionCertificates.Examples
