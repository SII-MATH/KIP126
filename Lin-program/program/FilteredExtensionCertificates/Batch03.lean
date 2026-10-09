import FilteredExtensionCertificates.Import

namespace FilteredExtensionCertificates.Examples
set_option maxRecDepth 100000
set_option maxHeartbeats 16000000

def batch03 : List WireCertificate :=
  filtered_extension_batch% "FilteredExtensionCertificates/batch03.jsonl"
theorem batch03_valid : ∀ w ∈ batch03, WireValid w := checkBatch_sound batch03 (by decide)

#print axioms batch03_valid
end FilteredExtensionCertificates.Examples
