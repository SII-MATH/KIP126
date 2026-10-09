import FiniteFilteredSquareCertificates.Import

namespace FiniteFilteredSquareProducer
open FiniteFilteredSquareCertificates
set_option maxHeartbeats 4000000
set_option maxRecDepth 100000

def batch03 : List WireCertificate :=
  finite_filtered_square_batch% "FiniteFilteredSquareProducer/batch03.jsonl"
theorem batch03_valid : ∀ w ∈ batch03, WireValid w :=
  checkBatch_sound batch03 (by decide)
#print axioms batch03_valid
end FiniteFilteredSquareProducer
