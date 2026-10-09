import Row2907PDeltaDetection.Branches
import Row3136SquareCandidates.Parameters

namespace Row2907TargetProduct
open LinearCertificates PageTransitionCertificates PageProductCertificates
open Row2907PDeltaDetection

def comparison (r a : Bool) : WireComparison :=
  let w := Row3136SquareCandidates.Parameters.sourceSelected false a r
  { version := 1, k := 2, m := 2, n := 1, h := w.h,
    outgoing := w.outgoing, incoming := w.incoming,
    projection := w.projection, inclusion := w.inclusion, up := w.up, down := w.down }
theorem comparison_valid (r a : Bool) : (comparison r a).Valid := by
  cases r <;> cases a <;> lin_cert using ()
theorem comparison_exact (r a : Bool) : comparison r a =
    Row3136SquareCandidates.Parameters.sourceSelected false a r := by
  cases r <;> cases a <;> rfl

def action (x : Vec 1) (y : Vec 2) : Vec 1 := fun _ => x 0 && y 0

theorem complete_quotient_action (x : Q Data.c12_42_2) (y : Q Data.c20_140_2) :
    knownTargetCoordinates.toCoordinates (targetMul x y) =
      action (factorCoordinates.toCoordinates x) (targetCoordinates.toCoordinates y) := by
  have hx := factorCoordinates.leftInverse x
  have hy := targetCoordinates.leftInverse y
  conv_lhs => rw [← hx,← hy]
  exact (show ∀ (a : Vec 1) (b : Vec 2),
    knownTargetCoordinates.toCoordinates
      (targetMul (factorCoordinates.fromCoordinates a) (targetCoordinates.fromCoordinates b)) =
        action a b from by decide) _ _

theorem nonzero_branch_cycles_annihilated (r : Bool) (x : Vec 1) (y : Vec 2)
    (cycle : eval (matrixOf 2 2 (comparison r true).outgoing) y = zero) : action x y = zero := by
  cases r <;> exact (show ∀ (x : Vec 1) (y : Vec 2),
    eval (matrixOf 2 2 (comparison _ true).outgoing) y = zero → action x y = zero from by decide) x y cycle

#print axioms comparison_valid
#print axioms comparison_exact
#print axioms complete_quotient_action
#print axioms nonzero_branch_cycles_annihilated
end Row2907TargetProduct
