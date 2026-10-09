import FiniteFilteredSquareCertificates.Import

namespace FiniteFilteredSquareProducer
open FiniteFilteredSquareCertificates
set_option maxHeartbeats 4000000
set_option maxRecDepth 100000

def batch19 : List WireCertificate :=
  finite_filtered_square_batch% "FiniteFilteredSquareProducer/batch19.jsonl"
theorem batch19_valid : ∀ w ∈ batch19, WireValid w :=
  checkBatch_sound batch19 (by decide)
#print axioms batch19_valid
end FiniteFilteredSquareProducer
