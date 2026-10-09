import FiniteFilteredSquareCertificates.Import

namespace FiniteFilteredSquareProducer
open FiniteFilteredSquareCertificates
set_option maxHeartbeats 4000000
set_option maxRecDepth 100000

def batch20 : List WireCertificate :=
  finite_filtered_square_batch% "FiniteFilteredSquareProducer/batch20.jsonl"
theorem batch20_valid : ∀ w ∈ batch20, WireValid w :=
  checkBatch_sound batch20 (by decide)
#print axioms batch20_valid
end FiniteFilteredSquareProducer
