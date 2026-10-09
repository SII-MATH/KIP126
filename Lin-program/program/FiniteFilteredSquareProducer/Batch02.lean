import FiniteFilteredSquareCertificates.Import

namespace FiniteFilteredSquareProducer
open FiniteFilteredSquareCertificates
set_option maxHeartbeats 4000000
set_option maxRecDepth 100000

def batch02 : List WireCertificate :=
  finite_filtered_square_batch% "FiniteFilteredSquareProducer/batch02.jsonl"
theorem batch02_valid : ∀ w ∈ batch02, WireValid w :=
  checkBatch_sound batch02 (by decide)
#print axioms batch02_valid
end FiniteFilteredSquareProducer
