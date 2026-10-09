import FiniteFilteredSquareCertificates.Import

namespace FiniteFilteredSquareProducer
open FiniteFilteredSquareCertificates
set_option maxHeartbeats 4000000
set_option maxRecDepth 100000

def batch18 : List WireCertificate :=
  finite_filtered_square_batch% "FiniteFilteredSquareProducer/batch18.jsonl"
theorem batch18_valid : ∀ w ∈ batch18, WireValid w :=
  checkBatch_sound batch18 (by decide)
#print axioms batch18_valid
end FiniteFilteredSquareProducer
