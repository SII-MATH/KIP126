import FiniteFilteredSquareCertificates.Import

namespace FiniteFilteredSquareProducer
open FiniteFilteredSquareCertificates
set_option maxHeartbeats 4000000
set_option maxRecDepth 100000

def batch04 : List WireCertificate :=
  finite_filtered_square_batch% "FiniteFilteredSquareProducer/batch04.jsonl"
theorem batch04_valid : ∀ w ∈ batch04, WireValid w :=
  checkBatch_sound batch04 (by decide)
#print axioms batch04_valid
end FiniteFilteredSquareProducer
