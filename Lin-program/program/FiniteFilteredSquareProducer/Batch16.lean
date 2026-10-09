import FiniteFilteredSquareCertificates.Import

namespace FiniteFilteredSquareProducer
open FiniteFilteredSquareCertificates
set_option maxHeartbeats 4000000
set_option maxRecDepth 100000

def batch16 : List WireCertificate :=
  finite_filtered_square_batch% "FiniteFilteredSquareProducer/batch16.jsonl"
theorem batch16_valid : ∀ w ∈ batch16, WireValid w :=
  checkBatch_sound batch16 (by decide)
#print axioms batch16_valid
end FiniteFilteredSquareProducer
