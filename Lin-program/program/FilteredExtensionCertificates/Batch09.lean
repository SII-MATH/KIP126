import FilteredExtensionCertificates.Import

namespace FilteredExtensionCertificates.Examples
set_option maxRecDepth 100000
set_option maxHeartbeats 16000000

def batch09 : List WireCertificate :=
  filtered_extension_batch% "FilteredExtensionCertificates/batch09.jsonl"
theorem batch09_valid : ∀ w ∈ batch09, WireValid w := checkBatch_sound batch09 (by decide)

#print axioms batch09_valid
end FilteredExtensionCertificates.Examples
