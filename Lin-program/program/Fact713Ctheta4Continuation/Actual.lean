import Fact713Ctheta4Continuation.Data
import Fact713Ctheta4Continuation.Incoming
import Fact713Ctheta4Transport.Constructed

namespace Fact713Ctheta4Continuation.Actual
open LinearCertificates PageTransitionCertificates ManualInputObligations ManualInputObligations.Reference
open Row3151ActualTransport ActualAdamsHomologyCoordinates ActualAdamsHomologyCoordinates.Meaning

abbrev degree : Bidegree := ⟨17,138⟩
abbrev wire := Data.b_S0_17_138_d4

/-- Both whole differential equations are derived from the two source
rules. Full target coordinates and local quotient laws remain explicit. -/
structure Input (C S : AdamsSpectralSequence) (product : CertifiedAdamsProduct S) where
  ctheta : Fact713Ctheta4Transport.Constructed.Certificate C S
  incoming : Incoming.Input S ctheta.transport.stage.input.targetPages product
  target : Coordinates S 4 (AdamsTarget 4 degree) 2
  addMeaning : LocalAddMeaning ctheta.transport.stage.input.targetPages 3 degree
  zeroMeaning : LocalZeroMeaning ctheta.transport.stage.input.targetPages 4 degree

variable {C S : AdamsSpectralSequence} {product : CertifiedAdamsProduct S}

noncomputable def Input.current (D : Input C S product) : Coordinates S 4 degree 1 :=
  D.ctheta.transport.stage.input.nextTarget

noncomputable def Input.incomingSource (D : Input C S product) :
    ActualAdamsIncomingBridge.Source S 4 degree ≃ Vec 1 :=
  (ActualAdamsIncomingBridge.sourceEquiv S 4 degree (by decide)).trans D.incoming.page4.equivalence

theorem whole_outgoing (D : Input C S product) (x : (S.element 4 degree).carrier) :
    D.target.equivalence (S.differential 4 degree x) =
      eval (matrixOf 2 1 wire.outgoing) (D.current.equivalence x) :=
  (congrArg D.target.equivalence (Fact713Ctheta4Transport.Actual.whole_d4_zero D.ctheta.transport
    D.ctheta.finiteD4 D.ctheta.targetMap D.ctheta.targetZero D.ctheta.naturality x)).trans
      (D.target.zero_value.trans ((show ∀ v : Vec 1,
        eval (matrixOf 2 1 wire.outgoing) v = zero from by decide) _).symm)

theorem whole_incoming (D : Input C S product) (x : ActualAdamsIncomingBridge.Source S 4 degree) :
    D.current.equivalence (ActualAdamsIncomingBridge.differential S 4 degree x) =
      eval (matrixOf 1 1 wire.incoming) (D.incomingSource x) := by
  have hz := Incoming.whole_d4_zero D.incoming (x (by decide))
  have hi : ActualAdamsIncomingBridge.differential S 4 degree x = 0 := by
    simp only [ActualAdamsIncomingBridge.differential,dif_pos (show 4 ≤ degree.filtration from by decide)]
    have lifted := congrArg (pageCast S 4
      (ActualAdamsIncomingBridge.target_sourceDegree 4 degree (by decide))) hz
    exact lifted.trans (ActualAdamsIncomingBridge.cast_zero S 4 _)
  exact (congrArg D.current.equivalence hi).trans
    (D.current.zero_value.trans ((show ∀ v : Vec 1,
      eval (matrixOf 1 1 wire.incoming) v = zero from by decide) _).symm)

noncomputable def Input.whole (D : Input C S product) : WholeCoordinates S 4 degree wire D.current where
  current_add := nextCoordinates_add D.ctheta.transport.stage.input.targetMeaning
    D.ctheta.transport.stage.input.targetPages Fact713Ctheta4Transport.Comparison.s17_138_3_valid
    D.ctheta.transport.stage.input.targetZero D.addMeaning
  outgoingTarget := D.target
  incomingSource := D.incomingSource
  outgoing := whole_outgoing D
  incoming := whole_incoming D

noncomputable def Input.page5 (D : Input C S product) : Coordinates S 5 degree 1 :=
  D.whole.meaning.nextCoordinates D.ctheta.transport.stage.input.targetPages
    Data.b_S0_17_138_d4_valid D.zeroMeaning

noncomputable def Input.cycle4 (D : Input C S product) : PageCycle S 4 degree :=
  ⟨D.ctheta.transport.stage.input.nextMap D.ctheta.transport.value4,
    (Fact713Ctheta4Transport.Actual.sphere_d4_zero D.ctheta.transport D.ctheta.finiteD4
      D.ctheta.targetMap D.ctheta.targetZero D.ctheta.naturality).trans (S.zero_is_zero _ _).symm⟩

noncomputable def Input.endpoint5 (D : Input C S product) :
    Endpoint S D.ctheta.transport.stage.input.targetPages 5 degree
      (D.ctheta.transport.stage.previous.map D.ctheta.transport.raw) :=
  ⟨_,.step D.ctheta.transport.sphereTrace4 D.cycle4.property⟩

theorem coordinate5 (D : Input C S product) :
    D.page5.equivalence D.endpoint5.value = (fun _ : Fin 1 => true) := by
  have equation := D.whole.meaning.nextCoordinates_quotient D.ctheta.transport.stage.input.targetPages
    Data.b_S0_17_138_d4_valid D.zeroMeaning D.cycle4
  exact equation.trans ((congrArg (eval wire.comparison.projection) D.ctheta.transport.named_image4).trans
    (show eval wire.comparison.projection Fact713Ctheta4Transport.Comparison.sphere = (fun _ => true) from by decide))

theorem nonzero5 (D : Input C S product) : D.endpoint5.value ≠ 0 := by
  intro hz
  have h := coordinate5 D
  rw [hz,D.page5.zero_value] at h
  exact (show (zero : Vec 1) ≠ (fun _ => true) from by decide) h

/-- The new endpoint retains the same requested actual E2 input. -/
theorem same_input_E5 (D : Input C S product) (input : (S.element 2 degree).carrier)
    (binding : D.ctheta.transport.stage.previous.target.equivalence input =
      Fact713Ctheta4Transport.Comparison.sphere2) :
    Nonempty (Trace S D.ctheta.transport.stage.input.targetPages degree 5 input D.endpoint5.value) ∧
      D.endpoint5.value ≠ 0 := by
  have same : input = D.ctheta.transport.stage.previous.map D.ctheta.transport.raw :=
    D.ctheta.transport.stage.previous.target.equivalence.injective
      (binding.trans D.ctheta.transport.sphere_raw.symm)
  subst input
  exact ⟨⟨D.endpoint5.trace⟩,nonzero5 D⟩

#print axioms whole_outgoing
#print axioms whole_incoming
#print axioms Input.whole
#print axioms Input.page5
#print axioms coordinate5
#print axioms nonzero5
#print axioms same_input_E5
end Fact713Ctheta4Continuation.Actual
