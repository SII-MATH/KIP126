import FilteredExtensionCertificates.Import

namespace FilteredExtensionCertificates.Examples
set_option maxRecDepth 100000
set_option maxHeartbeats 16000000

def batch05 : List WireCertificate :=
  filtered_extension_batch% "FilteredExtensionCertificates/batch05.jsonl"
theorem batch05_valid : ∀ w ∈ batch05, WireValid w := checkBatch_sound batch05 (by decide)

#print axioms batch05_valid
end FilteredExtensionCertificates.Examples
