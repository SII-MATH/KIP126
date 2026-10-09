import FilteredExtensionCertificates.Import

namespace FilteredExtensionCertificates.Examples
set_option maxRecDepth 100000
set_option maxHeartbeats 16000000

def batch06 : List WireCertificate :=
  filtered_extension_batch% "FilteredExtensionCertificates/batch06.jsonl"
theorem batch06_valid : ∀ w ∈ batch06, WireValid w := checkBatch_sound batch06 (by decide)

#print axioms batch06_valid
end FilteredExtensionCertificates.Examples
