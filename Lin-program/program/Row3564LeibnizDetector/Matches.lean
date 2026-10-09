import Row3564LeibnizDetector.ProductSemantics
import AggregateD5Conditional.Data

namespace Row3564LeibnizDetector.Matches
open LinearCertificates PageTransitionCertificates Quotient

theorem source_outgoing : namedProduct.target.outgoing =
    AggregateD5Conditional.Data.b_S0_18_145_d2.outgoing := rfl
theorem source_incoming : namedProduct.target.incoming =
    AggregateD5Conditional.Data.b_S0_18_145_d2.incoming := rfl
theorem target_outgoing : rightTerm.target.outgoing =
    AggregateD5Conditional.Data.b_S0_21_147_d2.outgoing := rfl
theorem target_incoming : rightTerm.target.incoming =
    AggregateD5Conditional.Data.b_S0_21_147_d2.incoming := rfl

theorem raw_source_coordinates :
    eval AggregateD5Conditional.Data.b_S0_18_145_d2.comparison.projection
      (fun i => i.val == 1) = (fun i => i.val == 1) := by decide

theorem factor_raw : h1.factor = [[1]] := rfl
theorem derivative_factor_raw : h04.factor = [[0,0,0,0]] := rfl
theorem named_product_raw : h1.column3393.output = [[1,493]] := rfl
theorem derivative_product_raw : h04.column3393.output = [] := rfl

def targetCoordinates := homologyEquivalence (out rightTerm.target) (inc rightTerm.target)
  rightTerm.target.comparison (PageTransitionCertificates.checkWire_sound _ (by decide)).2

theorem matched
    (dh : Q namedProduct.left → Q leftTerm.left)
    (dx : Q namedProduct.right → Q rightTerm.right)
    (ds : Q namedProduct.target → Q rightTerm.target)
    (xPrefix : dx xClass = z rightTerm.right)
    (leibniz : ∀ a b, ds (mul namedProduct namedProduct_checked a b) =
      homologyAdd (out rightTerm.target) (inc rightTerm.target)
        (mul leftTerm leftTerm_checked (dh a) b)
        (mul rightTerm rightTerm_checked a (dx b))) :
    ds named = z rightTerm.target ∧ targetCoordinates.toCoordinates (ds named) = zero := by
  have hz := named_d3_zero dh dx ds xPrefix leibniz
  refine ⟨hz, ?_⟩
  rw [hz]
  exact eval_zero _

#print axioms matched
#print axioms raw_source_coordinates
end Row3564LeibnizDetector.Matches
