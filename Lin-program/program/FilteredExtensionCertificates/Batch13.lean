import FilteredExtensionCertificates.Import

namespace FilteredExtensionCertificates.Examples
set_option maxRecDepth 100000
set_option maxHeartbeats 16000000

def batch13 : List WireCertificate :=
  filtered_extension_batch% "FilteredExtensionCertificates/batch13.jsonl"
theorem batch13_valid : ∀ w ∈ batch13, WireValid w := checkBatch_sound batch13 (by decide)

#print axioms batch13_valid
end FilteredExtensionCertificates.Examples
