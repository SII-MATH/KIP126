import Fact713Row3005Continuation.IncomingData
import ActualAdamsHomologyCoordinates.Adapter

namespace Fact713Row3005Continuation.Actual
open LinearCertificates PageTransitionCertificates ManualInputObligations ManualInputObligations.Reference
open Row3151ActualTransport ActualAdamsHomologyCoordinates ActualAdamsHomologyCoordinates.Meaning

abbrev degree : Bidegree := ⟨14,138⟩
abbrev incomingDegree : Bidegree := ⟨10,135⟩
abbrev wire := Data.b_S0_14_138_d4

structure Incoming (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S) where
  initial : Coordinates S 2 incomingDegree 5
  meaning2 : Meaning S 2 incomingDegree incoming2 initial
  zero2 : LocalZeroMeaning pages 2 incomingDegree
  meaning3 : Meaning S 3 incomingDegree Data.b_S0_10_135_d3
    (meaning2.nextCoordinates pages incoming2_valid zero2)
  zero3 : LocalZeroMeaning pages 3 incomingDegree

noncomputable def Incoming.page4 {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
    (I : Incoming S pages) : Coordinates S 4 incomingDegree 0 :=
  I.meaning3.nextCoordinates pages Data.b_S0_10_135_d3_valid I.zero3

structure Input (C S : AdamsSpectralSequence) where
  calculation : Row3005D4Search.Actual.Certificate C S
  incoming : Incoming S calculation.input.stage2.middle.targetPages
  sourceAdd : LocalAddMeaning calculation.input.stage2.middle.targetPages 3 degree
  target : Coordinates S 4 (AdamsTarget 4 degree) 1
  zero4 : LocalZeroMeaning calculation.input.stage2.middle.targetPages 4 degree

variable {C S : AdamsSpectralSequence}

noncomputable def Input.incomingSource (D : Input C S) :
    ActualAdamsIncomingBridge.Source S 4 degree ≃ Vec 0 :=
  (ActualAdamsIncomingBridge.sourceEquiv S 4 degree (by decide)).trans D.incoming.page4.equivalence

noncomputable def Input.whole (D : Input C S) : WholeCoordinates S 4 degree wire
    D.calculation.input.sphere4 where
  current_add := nextCoordinates_add D.calculation.input.sphereMeaning3
    D.calculation.input.stage2.middle.targetPages Row3005D4Search.Data.sphere3_valid
    D.calculation.input.sphereZero3 D.sourceAdd
  outgoingTarget := D.target
  incomingSource := D.incomingSource
  outgoing := by
    intro x
    change D.target.equivalence (S.differential 4 degree x) =
      eval (matrixOf 1 1 wire.outgoing) (D.calculation.input.sphere4.equivalence x)
    rw [D.calculation.whole_zero4,D.target.zero_value]
    exact (show ∀ v : Vec 1, zero = eval (matrixOf 1 1 wire.outgoing) v from by decide) _
  incoming := by
    intro x
    have hz := Prop79TargetSearch.ZeroSpaces.incoming_zero S 4 degree D.incomingSource x
    exact (congrArg D.calculation.input.sphere4.equivalence hz).trans
      (D.calculation.input.sphere4.zero_value.trans (by funext i; rfl))

noncomputable def Input.page5 (D : Input C S) : Coordinates S 5 degree 1 :=
  D.whole.meaning.nextCoordinates D.calculation.input.stage2.middle.targetPages
    Data.b_S0_14_138_d4_valid D.zero4

theorem coordinate5 (D : Input C S) :
    D.page5.equivalence D.calculation.value5 = (fun _ => true) := by
  let x : PageCycle S 4 degree := ⟨D.calculation.input.map4 D.calculation.input.value4,
    D.calculation.named_zero4.trans (S.zero_is_zero _ _).symm⟩
  have h := D.whole.meaning.nextCoordinates_quotient D.calculation.input.stage2.middle.targetPages
    Data.b_S0_14_138_d4_valid D.zero4 x
  exact h.trans ((congrArg (eval wire.comparison.projection)
    (D.calculation.input.named4 D.calculation.transition3)).trans (by decide))

theorem nonzero5 (D : Input C S) : D.calculation.value5 ≠ 0 := by
  intro hz
  have h := coordinate5 D
  rw [hz,D.page5.zero_value] at h
  exact (show (zero : Vec 1) ≠ (fun _ => true) from by decide) h

theorem same_input_E5 (D : Input C S) (input : (S.element 2 degree).carrier)
    (binding : D.calculation.input.stage2.sphereCoordinates.equivalence input = Row3005D4Search.Data.sphereRaw) :
    Nonempty (Trace S D.calculation.input.stage2.middle.targetPages degree 5 input D.calculation.value5) ∧
      D.calculation.value5 ≠ 0 :=
  ⟨(Row3005D4Search.Actual.result_sound D.calculation input binding).2.1,nonzero5 D⟩

#print axioms Incoming.page4
#print axioms Input.incomingSource
#print axioms Input.whole
#print axioms Input.page5
#print axioms coordinate5
#print axioms nonzero5
#print axioms same_input_E5
end Fact713Row3005Continuation.Actual
