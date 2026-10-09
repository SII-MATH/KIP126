import Fact713Row2693Continuation.Branches
import Fact763Continuation.Actual
import Fact713H2Continuation.Actual

namespace Fact713Row2693Continuation.Actual
open LinearCertificates PageTransitionCertificates ManualInputObligations ManualInputObligations.Reference
open Row3151ActualTransport ActualAdamsHomologyCoordinates ActualAdamsHomologyCoordinates.Meaning
open IndexedFamilyCertificates
set_option maxRecDepth 100000
set_option maxHeartbeats 16000000

abbrev sourceDegree : Bidegree := ⟨10,134⟩
abbrev targetDegree : Bidegree := ⟨15,138⟩
abbrev Input := Fact763Continuation.Actual.Input

theorem source_wire_exact : Data.b_S0_10_134_d5 = Fact763Continuation.Data.source5 := rfl

theorem inherited_source_exact (b : Bool) :
    lookup (family b) ⟨"S0",2,10,134⟩ = some Row2693D5Search.Data.product2 ∧
    lookup (family b) ⟨"S0",3,10,134⟩ = some Row2693D5Search.Data.product3 ∧
    lookup (family b) ⟨"S0",4,10,134⟩ = some Row2693D5Search.Data.product4 ∧
    lookup (family b) ⟨"S0",4,15,138⟩ = some Row2693D5Search.Data.target4 := by
  cases b <;> decide

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S} {P : CertifiedAdamsProduct S}

noncomputable def source_whole (D : Input S pages P) : WholeCoordinates S 5 sourceDegree
    Data.b_S0_10_134_d5 D.calculation.product.input.nextTarget := D.whole

theorem same_input_E6 (D : Input S pages P) (input : (S.element 2 sourceDegree).carrier)
    (binding : D.calculation.stage2.product.equivalence input = Row2693D5Search.Finite.product2Name) :
    Nonempty (Trace S pages sourceDegree 6 input D.calculation.value6) ∧
      D.calculation.value6 ≠ 0 := Fact763Continuation.Actual.same_input_E6 D input binding

theorem target_is_boundary (D : Input S pages P) (x : (S.element 5 targetDegree).carrier) :
    PageBoundary S 5 targetDegree x := by
  have cases : ∀ v : Vec 1, v = zero ∨ v = (fun _ => true) := by decide
  rcases cases (D.calculation.target.next.equivalence x) with hz | hn
  · apply Or.inl
    exact D.calculation.target.next.equivalence.injective
      (hz.trans D.calculation.target.next.zero_value.symm)
  · let y := D.calculation.product.input.nextTarget.equivalence.symm (Fact763Continuation.Actual.basis2 1)
    have hy := D.lastColumn
    have finite : eval (matrixOf 1 2 Fact763Continuation.Data.source5.outgoing)
        (Fact763Continuation.Actual.basis2 1) = (fun _ => true) := by decide
    have same : S.differential 5 sourceDegree y = x :=
      D.calculation.target.next.equivalence.injective (hy.trans (finite.trans hn.symm))
    refine Or.inr ⟨sourceDegree,y,by decide,?_⟩
    exact same

theorem target_d5_zero (D : Input S pages P) (x : (S.element 5 targetDegree).carrier) :
    S.differential 5 targetDegree x = 0 :=
  Fact713H2Continuation.Actual.boundary_differential_zero S 5 targetDegree x (target_is_boundary D x)

structure TargetInput (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (P : CertifiedAdamsProduct S) where
  source : Input S pages P
  targetAdd : LocalAddMeaning pages 4 targetDegree
  outgoing : Coordinates S 5 (AdamsTarget 5 targetDegree) 0
  zero5 : LocalZeroMeaning pages 5 targetDegree

noncomputable def TargetInput.incoming (T : TargetInput S pages P) :
    ActualAdamsIncomingBridge.Source S 5 targetDegree ≃ Vec 2 :=
  (ActualAdamsIncomingBridge.sourceEquiv S 5 targetDegree (by decide)).trans
    T.source.calculation.product.input.nextTarget.equivalence

noncomputable def TargetInput.whole (T : TargetInput S pages P) : WholeCoordinates S 5 targetDegree
    Data.b_S0_15_138_d5 T.source.calculation.target.next where
  current_add := nextCoordinates_add T.source.calculation.target.meaning pages
    Row2693D5Search.Data.target4_valid T.source.calculation.target.zero T.targetAdd
  outgoingTarget := T.outgoing
  incomingSource := T.incoming
  outgoing := by intro x; funext i; exact Fin.elim0 i
  incoming := by
    intro x
    change T.source.calculation.target.next.equivalence
      (ActualAdamsIncomingBridge.differential S 5 targetDegree x) =
        eval (matrixOf 1 2 Data.b_S0_15_138_d5.incoming)
          (T.source.calculation.product.input.nextTarget.equivalence (x (by decide)))
    rw [ActualAdamsIncomingBridge.differential, dif_pos (show 5 ≤ targetDegree.filtration from by decide)]
    change T.source.calculation.target.next.equivalence
      (S.differential 5 sourceDegree (x (by decide))) =
        eval (matrixOf 1 2 Fact763Continuation.Data.source5.outgoing)
          (T.source.calculation.product.input.nextTarget.equivalence (x (by decide)))
    exact Fact763Continuation.Actual.whole_outgoing T.source (x (by decide))

noncomputable def TargetInput.page6 (T : TargetInput S pages P) : Coordinates S 6 targetDegree 0 :=
  T.whole.meaning.nextCoordinates pages Data.b_S0_15_138_d5_valid T.zero5

theorem target_zero6 (T : TargetInput S pages P) (x : (S.element 6 targetDegree).carrier) : x = 0 :=
  Fact761ConstructedActual.Local.empty_zero T.page6 x

#print axioms source_wire_exact
#print axioms inherited_source_exact
#print axioms source_whole
#print axioms same_input_E6
#print axioms target_is_boundary
#print axioms target_d5_zero
#print axioms TargetInput.incoming
#print axioms TargetInput.whole
#print axioms TargetInput.page6
#print axioms target_zero6
end Fact713Row2693Continuation.Actual
