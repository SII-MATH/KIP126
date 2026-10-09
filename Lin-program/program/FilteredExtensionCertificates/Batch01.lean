import FilteredExtensionCertificates.Import

namespace FilteredExtensionCertificates.Examples
set_option maxRecDepth 100000
set_option maxHeartbeats 16000000

def batch01 : List WireCertificate :=
  filtered_extension_batch% "FilteredExtensionCertificates/batch01.jsonl"
theorem batch01_valid : ∀ w ∈ batch01, WireValid w := checkBatch_sound batch01 (by decide)

#print axioms batch01_valid
end FilteredExtensionCertificates.Examples
