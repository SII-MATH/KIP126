import FiniteFilteredSquareCertificates.Import

namespace FiniteFilteredSquareProducer
open FiniteFilteredSquareCertificates
set_option maxHeartbeats 4000000
set_option maxRecDepth 100000

def batch13 : List WireCertificate :=
  finite_filtered_square_batch% "FiniteFilteredSquareProducer/batch13.jsonl"
theorem batch13_valid : ∀ w ∈ batch13, WireValid w :=
  checkBatch_sound batch13 (by decide)
#print axioms batch13_valid
end FiniteFilteredSquareProducer
