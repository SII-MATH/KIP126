import Row2925EtaD4.LeftTerm
import RemainingThreeAudit.Consequences
import PageTransitionCertificates.AdditiveQuotient

namespace Row2925EtaD4.Restriction
open LinearCertificates PageTransitionCertificates Naturality

def rawNamed : Vec 6 := fun i => decide (i.val = 1 ∨ i.val = 2)
def namedCoordinate : Vec 2 := fun i => decide (i.val = 0)

theorem raw_source_projection :
    eval Higher.source.comparison.projection
      (eval Comparison.sourceS.comparison.projection rawNamed) = namedCoordinate := by decide

theorem named_coordinate :
    (homologyEquivalence _ _ Higher.source.comparison Higher.source_complete.2).toCoordinates named =
      namedCoordinate := by decide

/-- Ordinary two-term Leibniz suffices. No value of d4(eta) is fixed. -/
theorem from_full_leibniz (ds : S → U) (dt : T → V) (deta : LeftTerm.D)
    (zeroPreserving : dt zt = zv)
    (leibniz : ∀ x, dt (f x) =
      homologyAdd (LeftTerm.out LeftTerm.d3.target) (LeftTerm.inc LeftTerm.d3.target)
        (LeftTerm.mul deta x) (g (ds x))) :
    ue.toCoordinates (ds named) (1 : Fin 2) = false := by
  apply named_second_coordinate_zero ds dt zeroPreserving
  intro x
  rw [leibniz,LeftTerm.all_zero]
  induction g (ds x) using Quot.inductionOn with
  | h x =>
    change Quot.mk _ (⟨add zero x.val, _⟩ : Cycle _) = Quot.mk _ x
    congr 1
    apply Subtype.ext
    funext i
    exact Bool.false_xor _

/-- The checked eta map forces exactly the coordinate relevant to event3152. -/
theorem remaining_column (ds : S → U) (dt : T → V) (deta : LeftTerm.D)
    (zeroPreserving : dt zt = zv)
    (leibniz : ∀ x, dt (f x) =
      homologyAdd (LeftTerm.out LeftTerm.d3.target) (LeftTerm.inc LeftTerm.d3.target)
        (LeftTerm.mul deta x) (g (ds x)))
    (b c : Bool)
    (column : ue.toCoordinates (ds named) = fun i => if i.val = 0 then b else c) : c = false := by
  have h := from_full_leibniz ds dt deta zeroPreserving leibniz
  rw [column] at h
  exact h

theorem event3152_source_nonboundary (ds : S → U) (dt : T → V) (deta : LeftTerm.D)
    (zeroPreserving : dt zt = zv)
    (leibniz : ∀ x, dt (f x) =
      homologyAdd (LeftTerm.out LeftTerm.d3.target) (LeftTerm.inc LeftTerm.d3.target)
        (LeftTerm.mul deta x) (g (ds x)))
    (b c : Bool)
    (column : ue.toCoordinates (ds named) = fun i => if i.val = 0 then b else c) :
    ¬ InImage (Row3151BranchCertificates.Semantics.outgoing b c)
      RemainingThreeAudit.event3152Source :=
  (RemainingThreeAudit.event3152_source_nonboundary_iff b c).mpr
    (remaining_column ds dt deta zeroPreserving leibniz b c column)

#print axioms raw_source_projection
#print axioms named_coordinate
#print axioms from_full_leibniz
#print axioms remaining_column
#print axioms event3152_source_nonboundary
end Row2925EtaD4.Restriction
