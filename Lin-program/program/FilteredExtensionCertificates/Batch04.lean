import FilteredExtensionCertificates.Import

namespace FilteredExtensionCertificates.Examples
set_option maxRecDepth 100000
set_option maxHeartbeats 16000000

def batch04 : List WireCertificate :=
  filtered_extension_batch% "FilteredExtensionCertificates/batch04.jsonl"
theorem batch04_valid : ∀ w ∈ batch04, WireValid w := checkBatch_sound batch04 (by decide)

#print axioms batch04_valid
end FilteredExtensionCertificates.Examples
