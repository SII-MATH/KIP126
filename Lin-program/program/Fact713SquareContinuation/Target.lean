import Fact713SquareContinuation.Actual
import Fact713Ctheta4Continuation.Actual

namespace Fact713SquareContinuation.Target
open LinearCertificates PageTransitionCertificates ManualInputObligations ManualInputObligations.Reference
open Row3151ActualTransport (Coordinates)
open ActualAdamsHomologyCoordinates ActualAdamsHomologyCoordinates.Meaning

abbrev degree : Bidegree := ⟨17,138⟩
abbrev wire := Data.b_S0_17_138_d5

/-- The preceding actual E5 coordinates are constructed by the Ctheta4
package. The square witness uses the identical S and page identifications. -/
structure Input (C S : AdamsSpectralSequence) (product : CertifiedAdamsProduct S) where
  previous : Fact713Ctheta4Continuation.Actual.Input C S product
  square : Row2684D5Search.Actual.Witness S previous.ctheta.transport.stage.input.targetPages product
  outgoing : Coordinates S 5 (AdamsTarget 5 degree) 0
  addMeaning4 : LocalAddMeaning previous.ctheta.transport.stage.input.targetPages 4 degree
  zeroMeaning5 : LocalZeroMeaning previous.ctheta.transport.stage.input.targetPages 5 degree

variable {C S : AdamsSpectralSequence} {product : CertifiedAdamsProduct S}

noncomputable def Input.incomingSource (D : Input C S product) :
    ActualAdamsIncomingBridge.Source S 5 degree ≃ Vec 1 :=
  (ActualAdamsIncomingBridge.sourceEquiv S 5 degree (by decide)).trans
    (D.square.source.step4.next Row2684D5Search.Data.source4_valid).equivalence

theorem whole_incoming (D : Input C S product) (x : ActualAdamsIncomingBridge.Source S 5 degree) :
    D.previous.page5.equivalence (ActualAdamsIncomingBridge.differential S 5 degree x) =
      eval (matrixOf 1 1 wire.incoming) (D.incomingSource x) := by
  have hz := Row2684D5Search.Actual.whole_d5_zero D.square (x (by decide))
  have hi : ActualAdamsIncomingBridge.differential S 5 degree x = 0 := by
    simp only [ActualAdamsIncomingBridge.differential,dif_pos (show 5 ≤ degree.filtration from by decide)]
    have lifted := congrArg (pageCast S 5
      (ActualAdamsIncomingBridge.target_sourceDegree 5 degree (by decide))) hz
    exact lifted.trans (ActualAdamsIncomingBridge.cast_zero S 5 _)
  exact (congrArg D.previous.page5.equivalence hi).trans
    (D.previous.page5.zero_value.trans ((show ∀ v : Vec 1,
      eval (matrixOf 1 1 wire.incoming) v = zero from by decide) _).symm)

noncomputable def Input.whole (D : Input C S product) : WholeCoordinates S 5 degree wire D.previous.page5 where
  current_add := nextCoordinates_add D.previous.whole.meaning D.previous.ctheta.transport.stage.input.targetPages
    Fact713Ctheta4Continuation.Data.b_S0_17_138_d4_valid D.previous.zeroMeaning D.addMeaning4
  outgoingTarget := D.outgoing
  incomingSource := D.incomingSource
  outgoing := by intro x; funext i; exact Fin.elim0 i
  incoming := whole_incoming D

noncomputable def Input.page6 (D : Input C S product) : Coordinates S 6 degree 1 :=
  D.whole.meaning.nextCoordinates D.previous.ctheta.transport.stage.input.targetPages
    Data.b_S0_17_138_d5_valid D.zeroMeaning5

theorem whole_d5_zero (D : Input C S product) (x : (S.element 5 degree).carrier) :
    S.differential 5 degree x = 0 := by
  apply D.outgoing.equivalence.injective
  funext i
  exact Fin.elim0 i

noncomputable def Input.cycle5 (D : Input C S product) : PageCycle S 5 degree :=
  ⟨D.previous.endpoint5.value,(whole_d5_zero D _).trans (S.zero_is_zero _ _).symm⟩

noncomputable def Input.endpoint6 (D : Input C S product) :
    Endpoint S D.previous.ctheta.transport.stage.input.targetPages 6 degree
      (D.previous.ctheta.transport.stage.previous.map D.previous.ctheta.transport.raw) :=
  ⟨_,.step D.previous.endpoint5.trace D.cycle5.property⟩

theorem coordinate6 (D : Input C S product) : D.page6.equivalence D.endpoint6.value =
    (fun _ : Fin 1 => true) :=
  (D.whole.meaning.nextCoordinates_quotient D.previous.ctheta.transport.stage.input.targetPages
    Data.b_S0_17_138_d5_valid D.zeroMeaning5 D.cycle5).trans
      ((congrArg (eval wire.comparison.projection) (Fact713Ctheta4Continuation.Actual.coordinate5 D.previous)).trans
        (by decide))

theorem nonzero6 (D : Input C S product) : D.endpoint6.value ≠ 0 := by
  intro hz
  have h := coordinate6 D
  rw [hz,D.page6.zero_value] at h
  exact (show (zero : Vec 1) ≠ (fun _ => true) from by decide) h

theorem same_input_E6 (D : Input C S product) (input : (S.element 2 degree).carrier)
    (binding : D.previous.ctheta.transport.stage.previous.target.equivalence input =
      Fact713Ctheta4Transport.Comparison.sphere2) :
    Nonempty (Trace S D.previous.ctheta.transport.stage.input.targetPages degree 6 input D.endpoint6.value) ∧
      D.endpoint6.value ≠ 0 := by
  have same : input = D.previous.ctheta.transport.stage.previous.map D.previous.ctheta.transport.raw :=
    D.previous.ctheta.transport.stage.previous.target.equivalence.injective
      (binding.trans D.previous.ctheta.transport.sphere_raw.symm)
  subst input
  exact ⟨⟨D.endpoint6.trace⟩,nonzero6 D⟩

#print axioms whole_incoming
#print axioms Input.whole
#print axioms Input.page6
#print axioms whole_d5_zero
#print axioms coordinate6
#print axioms nonzero6
#print axioms same_input_E6
end Fact713SquareContinuation.Target
