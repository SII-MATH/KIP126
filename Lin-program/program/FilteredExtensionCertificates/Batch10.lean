import FilteredExtensionCertificates.Import

namespace FilteredExtensionCertificates.Examples
set_option maxRecDepth 100000
set_option maxHeartbeats 16000000

def batch10 : List WireCertificate :=
  filtered_extension_batch% "FilteredExtensionCertificates/batch10.jsonl"
theorem batch10_valid : ∀ w ∈ batch10, WireValid w := checkBatch_sound batch10 (by decide)

#print axioms batch10_valid
end FilteredExtensionCertificates.Examples
