import FiniteFilteredSquareCertificates.Import

namespace FiniteFilteredSquareProducer
open FiniteFilteredSquareCertificates
set_option maxHeartbeats 4000000
set_option maxRecDepth 100000

def batch06 : List WireCertificate :=
  finite_filtered_square_batch% "FiniteFilteredSquareProducer/batch06.jsonl"
theorem batch06_valid : ∀ w ∈ batch06, WireValid w :=
  checkBatch_sound batch06 (by decide)
#print axioms batch06_valid
end FiniteFilteredSquareProducer
