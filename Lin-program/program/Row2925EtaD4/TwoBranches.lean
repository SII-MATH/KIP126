import Row2925EtaD4.Restriction

namespace Row2925EtaD4.TwoBranches
open LinearCertificates PageTransitionCertificates Naturality

def se := homologyEquivalence _ _ Higher.source.comparison Higher.source_complete.2
def operator (b : Bool) (x : S) : U :=
  ue.fromCoordinates (eval (Row3151BranchCertificates.Semantics.outgoing b false)
    (se.toCoordinates x))

theorem coordinates (b : Bool) (x : S) :
    ue.toCoordinates (operator b x) =
      eval (Row3151BranchCertificates.Semantics.outgoing b false) (se.toCoordinates x) :=
  ue.rightInverse _

theorem named_value (b : Bool) :
    ue.toCoordinates (operator b named) = fun i => if i.val = 0 then b else false := by
  rw [coordinates]
  change eval (Row3151BranchCertificates.Semantics.outgoing b false)
    ((homologyEquivalence _ _ Higher.source.comparison Higher.source_complete.2).toCoordinates named) = _
  rw [Restriction.named_coordinate]
  cases b <;> decide

theorem product_zero (b : Bool) (x : S) : g (operator b x) = zv := by
  have coord := target_coordinate (operator b x)
  rw [coordinates] at coord
  have zeroBit : ∀ v : Vec 2,
      eval (Row3151BranchCertificates.Semantics.outgoing b false) v (1 : Fin 2) = false := by
    cases b <;> decide
  rw [zeroBit] at coord
  have zeroCoord : ve.toCoordinates zv = zero := eval_zero _
  have h := congrArg ve.fromCoordinates (coord.trans zeroCoord.symm)
  simpa only [ve.leftInverse] using h

/-- Both remaining first bits satisfy the whole ordinary quotient Leibniz
equation. The restriction does not secretly require an impossible premise. -/
theorem full_leibniz (b : Bool) (deta : LeftTerm.D) (x : S) :
    (fun _ : T => zv) (f x) =
      homologyAdd (LeftTerm.out LeftTerm.d3.target) (LeftTerm.inc LeftTerm.d3.target)
        (LeftTerm.mul deta x) (g (operator b x)) := by
  rw [LeftTerm.all_zero,product_zero]
  rfl

theorem both_nonboundary (b : Bool) :
    ¬ InImage (Row3151BranchCertificates.Semantics.outgoing b false)
      RemainingThreeAudit.event3152Source :=
  (RemainingThreeAudit.event3152_source_nonboundary_iff b false).mpr rfl

#print axioms named_value
#print axioms full_leibniz
#print axioms both_nonboundary
end Row2925EtaD4.TwoBranches
