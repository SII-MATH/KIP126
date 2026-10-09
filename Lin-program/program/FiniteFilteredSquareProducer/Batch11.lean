import FiniteFilteredSquareCertificates.Import

namespace FiniteFilteredSquareProducer
open FiniteFilteredSquareCertificates
set_option maxHeartbeats 4000000
set_option maxRecDepth 100000

def batch11 : List WireCertificate :=
  finite_filtered_square_batch% "FiniteFilteredSquareProducer/batch11.jsonl"
theorem batch11_valid : ∀ w ∈ batch11, WireValid w :=
  checkBatch_sound batch11 (by decide)
#print axioms batch11_valid
end FiniteFilteredSquareProducer
