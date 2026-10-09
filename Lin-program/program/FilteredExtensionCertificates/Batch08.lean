import FilteredExtensionCertificates.Import

namespace FilteredExtensionCertificates.Examples
set_option maxRecDepth 100000
set_option maxHeartbeats 16000000

def batch08 : List WireCertificate :=
  filtered_extension_batch% "FilteredExtensionCertificates/batch08.jsonl"
theorem batch08_valid : ∀ w ∈ batch08, WireValid w := checkBatch_sound batch08 (by decide)

#print axioms batch08_valid
end FilteredExtensionCertificates.Examples
