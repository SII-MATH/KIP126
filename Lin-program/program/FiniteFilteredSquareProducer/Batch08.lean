import FiniteFilteredSquareCertificates.Import

namespace FiniteFilteredSquareProducer
open FiniteFilteredSquareCertificates
set_option maxHeartbeats 4000000
set_option maxRecDepth 100000

def batch08 : List WireCertificate :=
  finite_filtered_square_batch% "FiniteFilteredSquareProducer/batch08.jsonl"
theorem batch08_valid : ∀ w ∈ batch08, WireValid w :=
  checkBatch_sound batch08 (by decide)
#print axioms batch08_valid
end FiniteFilteredSquareProducer
