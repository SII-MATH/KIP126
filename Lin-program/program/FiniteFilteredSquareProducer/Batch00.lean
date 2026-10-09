import FiniteFilteredSquareCertificates.Import

namespace FiniteFilteredSquareProducer
open FiniteFilteredSquareCertificates
set_option maxHeartbeats 4000000
set_option maxRecDepth 100000

def batch00 : List WireCertificate :=
  finite_filtered_square_batch% "FiniteFilteredSquareProducer/batch00.jsonl"
theorem batch00_valid : ∀ w ∈ batch00, WireValid w :=
  checkBatch_sound batch00 (by decide)
#print axioms batch00_valid
end FiniteFilteredSquareProducer
