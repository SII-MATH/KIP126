import FiniteFilteredSquareCertificates.Import

namespace FiniteFilteredSquareProducer
open FiniteFilteredSquareCertificates
set_option maxHeartbeats 4000000
set_option maxRecDepth 100000

def batch05 : List WireCertificate :=
  finite_filtered_square_batch% "FiniteFilteredSquareProducer/batch05.jsonl"
theorem batch05_valid : ∀ w ∈ batch05, WireValid w :=
  checkBatch_sound batch05 (by decide)
#print axioms batch05_valid
end FiniteFilteredSquareProducer
