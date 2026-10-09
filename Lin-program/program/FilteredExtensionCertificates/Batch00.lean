import FilteredExtensionCertificates.Import

namespace FilteredExtensionCertificates.Examples
set_option maxRecDepth 100000
set_option maxHeartbeats 16000000

def batch00 : List WireCertificate :=
  filtered_extension_batch% "FilteredExtensionCertificates/batch00.jsonl"
theorem batch00_valid : ∀ w ∈ batch00, WireValid w := checkBatch_sound batch00 (by decide)

#print axioms batch00_valid
end FilteredExtensionCertificates.Examples
