import Fact713SquareContinuation.Data
import Row2684D5Search.Actual
import ActualAdamsHomologyCoordinates.Adapter
import Prop79TargetSearch.ZeroSpaces

namespace Fact713SquareContinuation.Actual
set_option maxRecDepth 100000
set_option maxHeartbeats 16000000
open LinearCertificates PageTransitionCertificates ManualInputObligations ManualInputObligations.Reference
open Row3151ActualTransport (Coordinates)
open ActualAdamsHomologyCoordinates ActualAdamsHomologyCoordinates.Meaning

abbrev degree : Bidegree := ⟨12,134⟩
abbrev wire := Data.b_S0_12_134_d5

theorem source_previous_exact (b : Bool) :
    IndexedFamilyCertificates.lookup (Fact713Ctheta4Continuation.family b) ⟨"S0",2,12,134⟩ =
      some Row2684D5Search.Data.source2 ∧
    IndexedFamilyCertificates.lookup (Fact713Ctheta4Continuation.family b) ⟨"S0",3,12,134⟩ =
      some Row2684D5Search.Data.source3 ∧
    IndexedFamilyCertificates.lookup (Fact713Ctheta4Continuation.family b) ⟨"S0",4,12,134⟩ =
      some Row2684D5Search.Data.source4 := by cases b <;> decide

structure Input (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (product : CertifiedAdamsProduct S) where
  square : Row2684D5Search.Actual.Witness S pages product
  target : Coordinates S 5 (AdamsTarget 5 degree) 1
  incomingEmpty : ActualAdamsIncomingBridge.Source S 5 degree ≃ Vec 0
  addMeaning4 : LocalAddMeaning pages 4 degree
  zeroMeaning5 : LocalZeroMeaning pages 5 degree

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S} {product : CertifiedAdamsProduct S}

noncomputable def Input.current (D : Input S pages product) : Coordinates S 5 degree 1 :=
  D.square.source.step4.next Row2684D5Search.Data.source4_valid

theorem whole_outgoing (D : Input S pages product) (x : (S.element 5 degree).carrier) :
    D.target.equivalence (S.differential 5 degree x) =
      eval (matrixOf 1 1 wire.outgoing) (D.current.equivalence x) :=
  (congrArg D.target.equivalence (Row2684D5Search.Actual.whole_d5_zero D.square x)).trans
    (D.target.zero_value.trans ((show ∀ v : Vec 1,
      eval (matrixOf 1 1 wire.outgoing) v = zero from by decide) _).symm)

noncomputable def Input.whole (D : Input S pages product) : WholeCoordinates S 5 degree wire D.current where
  current_add := nextCoordinates_add D.square.source.step4.meaning pages
    Row2684D5Search.Data.source4_valid D.square.source.step4.zeroMeaning D.addMeaning4
  outgoingTarget := D.target
  incomingSource := D.incomingEmpty
  outgoing := whole_outgoing D
  incoming := by
    intro x
    have hz := Prop79TargetSearch.ZeroSpaces.incoming_zero S 5 degree D.incomingEmpty x
    exact (congrArg D.current.equivalence hz).trans
      (D.current.zero_value.trans (by funext i; rfl))

noncomputable def Input.page6 (D : Input S pages product) : Coordinates S 6 degree 1 :=
  D.whole.meaning.nextCoordinates pages Data.b_S0_12_134_d5_valid D.zeroMeaning5

noncomputable def Input.cycle5 (D : Input S pages product) : PageCycle S 5 degree :=
  ⟨D.square.source.endpoint5.value,
    (Row2684D5Search.Actual.named_d5_zero D.square).trans (S.zero_is_zero _ _).symm⟩

noncomputable def Input.endpoint6 (D : Input S pages product) : Endpoint S pages 6 degree D.square.source.raw :=
  ⟨_,.step D.square.source.endpoint5.trace D.cycle5.property⟩

theorem coordinate6 (D : Input S pages product) :
    D.page6.equivalence D.endpoint6.value = Row2684D5Search.Data.finalVector :=
  (D.whole.meaning.nextCoordinates_quotient pages Data.b_S0_12_134_d5_valid D.zeroMeaning5 D.cycle5).trans
    ((congrArg (eval wire.comparison.projection) D.square.source.coordinate5).trans (by decide))

theorem nonzero6 (D : Input S pages product) : D.endpoint6.value ≠ 0 := by
  intro hz
  have h := coordinate6 D
  rw [hz,D.page6.zero_value] at h
  exact (show (zero : Vec 1) ≠ Row2684D5Search.Data.finalVector from by decide) h

theorem same_input_E6 (D : Input S pages product) (input : (S.element 2 degree).carrier)
    (binding : D.square.source.initial.equivalence input = Row2684D5Search.Data.sourceVector) :
    Nonempty (Trace S pages degree 6 input D.endpoint6.value) ∧ D.endpoint6.value ≠ 0 := by
  have same : input = D.square.source.raw := D.square.source.initial.equivalence.injective
    (binding.trans D.square.source.coordinate2.symm)
  subst input
  exact ⟨⟨D.endpoint6.trace⟩,nonzero6 D⟩

#print axioms whole_outgoing
#print axioms source_previous_exact
#print axioms Input.whole
#print axioms Input.page6
#print axioms coordinate6
#print axioms nonzero6
#print axioms same_input_E6
end Fact713SquareContinuation.Actual
