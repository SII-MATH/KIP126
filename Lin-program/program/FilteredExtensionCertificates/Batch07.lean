import FilteredExtensionCertificates.Import

namespace FilteredExtensionCertificates.Examples
set_option maxRecDepth 100000
set_option maxHeartbeats 16000000

def batch07 : List WireCertificate :=
  filtered_extension_batch% "FilteredExtensionCertificates/batch07.jsonl"
theorem batch07_valid : ∀ w ∈ batch07, WireValid w := checkBatch_sound batch07 (by decide)

#print axioms batch07_valid
end FilteredExtensionCertificates.Examples
