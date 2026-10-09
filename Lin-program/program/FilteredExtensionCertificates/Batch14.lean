import FilteredExtensionCertificates.Import

namespace FilteredExtensionCertificates.Examples
set_option maxRecDepth 100000
set_option maxHeartbeats 16000000

def batch14 : List WireCertificate :=
  filtered_extension_batch% "FilteredExtensionCertificates/batch14.jsonl"
theorem batch14_valid : ∀ w ∈ batch14, WireValid w := checkBatch_sound batch14 (by decide)

#print axioms batch14_valid
end FilteredExtensionCertificates.Examples
