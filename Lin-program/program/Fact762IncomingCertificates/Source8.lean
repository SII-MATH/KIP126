import Fact762IncomingCertificates.Data
import Row2574Detector.Additional.Combined

namespace Fact762IncomingCertificates.Source8
open LinearCertificates PageTransitionCertificates Row2574Detector.Quotient

theorem source_projection :
    eval AggregateD5Conditional.Data.b_S0_6_132_d2.comparison.projection
      (fun i => i.val == 0) = (fun _ => true) := by decide

/-- The existing full h2 quotient product forces a nonzero differential.
The source's complete E3 space is one-dimensional, so this kills its whole
kernel at d3. Neither the unknown value nor a later differential is selected. -/
theorem nonzero_coordinates_from_product
    (d : Q ann.right → Q detect.right) (dp : Q ann.target → Q detect.target)
    (knownDifferential : dp productNamed = knownValue)
    (leibniz : ∀ x, dp (annMap x) = detectMap (d x)) :
    candidateCoordinates.toCoordinates (d named) ≠ zero := by
  have h := (differential_restricted d dp knownDifferential leibniz).1
  intro hz
  have bit := congrFun hz ⟨2,by decide⟩
  rw [h] at bit
  contradiction

theorem quotient_zero_from_product
    (d : Q ann.right → Q detect.right) (dp : Q ann.target → Q detect.target)
    (knownDifferential : dp productNamed = knownValue)
    (leibniz : ∀ x, dp (annMap x) = detectMap (d x))
    (incoming : Matrix 1 n)
    (x : Homology (Data.source8 (candidateCoordinates.toCoordinates (d named)))
      incoming) : x = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) :=
  Data.source8_quotient_zero _ (nonzero_coordinates_from_product d dp knownDifferential leibniz) incoming x

#print axioms nonzero_coordinates_from_product
#print axioms quotient_zero_from_product
end Fact762IncomingCertificates.Source8
