import FiniteFilteredSquareCertificates.Import

namespace FiniteFilteredSquareProducer
open FiniteFilteredSquareCertificates
set_option maxHeartbeats 4000000
set_option maxRecDepth 100000

def batch10 : List WireCertificate :=
  finite_filtered_square_batch% "FiniteFilteredSquareProducer/batch10.jsonl"
theorem batch10_valid : ∀ w ∈ batch10, WireValid w :=
  checkBatch_sound batch10 (by decide)
#print axioms batch10_valid
end FiniteFilteredSquareProducer
