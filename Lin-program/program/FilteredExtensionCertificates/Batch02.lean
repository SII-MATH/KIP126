import FilteredExtensionCertificates.Import

namespace FilteredExtensionCertificates.Examples
set_option maxRecDepth 100000
set_option maxHeartbeats 16000000

def batch02 : List WireCertificate :=
  filtered_extension_batch% "FilteredExtensionCertificates/batch02.jsonl"
theorem batch02_valid : ∀ w ∈ batch02, WireValid w := checkBatch_sound batch02 (by decide)

#print axioms batch02_valid
end FilteredExtensionCertificates.Examples
