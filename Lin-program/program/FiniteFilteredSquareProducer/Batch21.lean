import FiniteFilteredSquareCertificates.Import

namespace FiniteFilteredSquareProducer
open FiniteFilteredSquareCertificates
set_option maxHeartbeats 4000000
set_option maxRecDepth 100000

def batch21 : List WireCertificate :=
  finite_filtered_square_batch% "FiniteFilteredSquareProducer/batch21.jsonl"
theorem batch21_valid : ∀ w ∈ batch21, WireValid w :=
  checkBatch_sound batch21 (by decide)
#print axioms batch21_valid
end FiniteFilteredSquareProducer
