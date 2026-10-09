import FilteredExtensionCertificates.Import

namespace FilteredExtensionCertificates.Examples
set_option maxRecDepth 100000
set_option maxHeartbeats 16000000

def batch15 : List WireCertificate :=
  filtered_extension_batch% "FilteredExtensionCertificates/batch15.jsonl"
theorem batch15_valid : ∀ w ∈ batch15, WireValid w := checkBatch_sound batch15 (by decide)

#print axioms batch15_valid
end FilteredExtensionCertificates.Examples
