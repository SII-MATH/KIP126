import Fact713Row2916Continuation.Data
import Row2916D4Search.Binding
import Fact713Row3143Continuation.ActualRule
import ActualAdamsHomologyCoordinates.Adapter

namespace Fact713Row2916Continuation.Actual
open LinearCertificates PageTransitionCertificates ManualInputObligations.Reference
open Row3151ActualTransport ActualAdamsHomologyCoordinates ActualAdamsHomologyCoordinates.Meaning

abbrev degree : Bidegree := ⟨17,140⟩
abbrev wire := Data.b_S0_17_140_d4

/-- Both complete differential equations are derived below. This input has
full neighboring coordinates and the previously proved rule premises. -/
structure Input (S T : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (P : CertifiedAdamsProduct S) (A : Fact713Row3247Source.ModuleLeibniz.Action S T) where
  row2916 : Row2916D4Search.Actual.Input S T A
  transition2916 : row2916.Transition4
  row3143 : Fact713Row3143Continuation.ActualRule.Input S pages P
  target : Coordinates S 4 (AdamsTarget 4 degree) 1
  sourceAdd : LocalAddMeaning pages 3 degree
  nextZero : LocalZeroMeaning pages 4 degree

variable {S T : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
  {P : CertifiedAdamsProduct S} {A : Fact713Row3247Source.ModuleLeibniz.Action S T}

noncomputable def Input.current (D : Input S T pages P A) : Coordinates S 4 degree 1 :=
  D.row3143.page4

noncomputable def Input.incomingSource (D : Input S T pages P A) :
    ActualAdamsIncomingBridge.Source S 4 degree ≃ Vec 1 :=
  (ActualAdamsIncomingBridge.sourceEquiv S 4 degree (by decide)).trans D.row2916.sphere4.equivalence

theorem whole_incoming (D : Input S T pages P A)
    (x : ActualAdamsIncomingBridge.Source S 4 degree) :
    D.current.equivalence (ActualAdamsIncomingBridge.differential S 4 degree x) =
      eval (matrixOf 1 1 wire.incoming) (D.incomingSource x) := by
  have hz := Row2916D4Search.Actual.whole_sphere_d4_zero D.row2916 D.transition2916 (x (by decide))
  have hi : ActualAdamsIncomingBridge.differential S 4 degree x = 0 := by
    simp only [ActualAdamsIncomingBridge.differential,dif_pos (show 4 ≤ degree.filtration from by decide)]
    have lifted := congrArg (pageCast S 4
      (ActualAdamsIncomingBridge.target_sourceDegree 4 degree (by decide))) hz
    exact lifted.trans (ActualAdamsIncomingBridge.cast_zero S 4 _)
  exact (congrArg D.current.equivalence hi).trans
    (D.current.zero_value.trans ((show ∀ v : Vec 1,
      eval (matrixOf 1 1 wire.incoming) v = zero from by decide) _).symm)

theorem whole_outgoing (D : Input S T pages P A)
    (x : (S.element 4 degree).carrier) :
    D.target.equivalence (S.differential 4 degree x) =
      eval (matrixOf 1 1 wire.outgoing) (D.current.equivalence x) :=
  (congrArg D.target.equivalence
    (Fact713Row3143Continuation.ActualRule.whole_d4_zero D.row3143 x)).trans
      (D.target.zero_value.trans ((show ∀ v : Vec 1,
        eval (matrixOf 1 1 wire.outgoing) v = zero from by decide) _).symm)

noncomputable def Input.whole (D : Input S T pages P A) :
    WholeCoordinates S 4 degree wire D.current where
  current_add := nextCoordinates_add D.row3143.complete pages
    Fact713Row3143Continuation.ActualRule.sourceD3_valid D.row3143.sourceZeroMeaning D.sourceAdd
  outgoingTarget := D.target
  incomingSource := D.incomingSource
  outgoing := whole_outgoing D
  incoming := whole_incoming D

noncomputable def Input.page5 (D : Input S T pages P A) : Coordinates S 5 degree 1 :=
  D.whole.meaning.nextCoordinates pages Data.b_S0_17_140_d4_valid D.nextZero

noncomputable def Input.cycle4 (D : Input S T pages P A) : PageCycle S 4 degree :=
  ⟨D.row3143.next,(Fact713Row3143Continuation.ActualRule.whole_d4_zero D.row3143 _).trans
    (S.zero_is_zero _ _).symm⟩

noncomputable def Input.named5 (D : Input S T pages P A) : (S.element 5 degree).carrier :=
  (pages.nextPage 4 degree).toNext (Quotient.mk _ D.cycle4)

theorem named5_coordinate (D : Input S T pages P A) :
    D.page5.equivalence D.named5 = (fun _ : Fin 1 => true) := by
  have eq := D.whole.meaning.nextCoordinates_quotient pages Data.b_S0_17_140_d4_valid D.nextZero D.cycle4
  exact eq.trans ((congrArg (eval wire.comparison.projection)
    (Fact713Row3143Continuation.ActualRule.actual_next_name D.row3143)).trans
      ((show ∀ v : Vec 1, eval wire.comparison.projection v = v from by decide) _))

theorem named5_nonzero (D : Input S T pages P A) : D.named5 ≠ 0 := by
  intro hz
  have eq := named5_coordinate D
  rw [hz,D.page5.zero_value] at eq
  exact (show (zero : Vec 1) ≠ (fun _ => true) from by decide) eq

#print axioms whole_incoming
#print axioms whole_outgoing
#print axioms Input.whole
#print axioms Input.page5
#print axioms named5_coordinate
#print axioms named5_nonzero
end Fact713Row2916Continuation.Actual
