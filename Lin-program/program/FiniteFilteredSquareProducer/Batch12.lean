import FiniteFilteredSquareCertificates.Import

namespace FiniteFilteredSquareProducer
open FiniteFilteredSquareCertificates
set_option maxHeartbeats 4000000
set_option maxRecDepth 100000

def batch12 : List WireCertificate :=
  finite_filtered_square_batch% "FiniteFilteredSquareProducer/batch12.jsonl"
theorem batch12_valid : ∀ w ∈ batch12, WireValid w :=
  checkBatch_sound batch12 (by decide)
#print axioms batch12_valid
end FiniteFilteredSquareProducer
