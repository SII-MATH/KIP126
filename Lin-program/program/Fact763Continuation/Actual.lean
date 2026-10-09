import Fact763Continuation.Data
import Fact763Continuation.Bridge
import ActualAdamsHomologyCoordinates.Adapter
import Fact761ConstructedActual.Local
import Prop79TargetSearch.ZeroSpaces

namespace Fact763Continuation.Actual
open LinearCertificates PageTransitionCertificates ManualInputObligations ManualInputObligations.Reference
open Row3151ActualTransport ActualAdamsHomologyCoordinates ActualAdamsHomologyCoordinates.Meaning

abbrev degree : Bidegree := ⟨10,134⟩
def basis2 (j : Fin 2) : Vec 2 := fun i => i == j

theorem additive_two_ext (f g : Vec 2 → Vec 1)
    (hf : ∀ u v, f (add u v) = add (f u) (f v))
    (hg : ∀ u v, g (add u v) = add (g u) (g v))
    (hzero : f zero = g zero)
    (hb : ∀ j, f (basis2 j) = g (basis2 j)) (v : Vec 2) : f v = g v := by
  have decompose : ∀ v : Vec 2, v = add (if v 0 then basis2 0 else zero)
    (if v 1 then basis2 1 else zero) := by decide
  rw [decompose v,hf,hg]
  congr 1
  · cases v 0 <;> simp only [Bool.false_eq_true,if_false,if_true,hzero,hb]
  · cases v 1 <;> simp only [Bool.false_eq_true,if_false,if_true,hzero,hb]

structure Incoming (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S) where
  initial : Coordinates S 2 ⟨5,130⟩ 1
  meaning : Meaning S 2 ⟨5,130⟩ Data.incoming2 initial
  zero2 : LocalZeroMeaning pages 2 ⟨5,130⟩
  zero3 : LocalZeroMeaning pages 3 ⟨5,130⟩
  zero4 : LocalZeroMeaning pages 4 ⟨5,130⟩

noncomputable def Incoming.page3 {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
    (D : Incoming S pages) : Coordinates S 3 ⟨5,130⟩ 0 :=
  D.meaning.nextCoordinates pages Data.incoming2_valid D.zero2
noncomputable def Incoming.page5 {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
    (D : Incoming S pages) : Coordinates S 5 ⟨5,130⟩ 0 :=
  Fact761ConstructedActual.Local.emptyNext pages
    (Fact761ConstructedActual.Local.emptyNext pages D.page3 D.zero3) D.zero4

/-- Only the other, stored nonzero d5 column is supplied. The named first
column is obtained from the actual h1-product and correction-annihilator proof. -/
structure Input (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (P : CertifiedAdamsProduct S) where
  calculation : Row2693D5Search.Actual.Input S pages P
  incoming : Incoming S pages
  sourceAdd : LocalAddMeaning pages 4 degree
  lastColumn : calculation.target.next.equivalence
      (S.differential 5 degree (calculation.product.input.nextTarget.equivalence.symm (basis2 1))) =
    eval (matrixOf 1 2 Data.source5.outgoing) (basis2 1)
  zero5 : LocalZeroMeaning pages 5 degree

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S} {P : CertifiedAdamsProduct S}

theorem Input.current_add (D : Input S pages P) (x y : (S.element 5 degree).carrier) :
    D.calculation.product.input.nextTarget.equivalence (x+y) =
      add (D.calculation.product.input.nextTarget.equivalence x)
        (D.calculation.product.input.nextTarget.equivalence y) :=
  nextCoordinates_add D.calculation.product.productMeaning pages Row2693D5Search.Data.product4_valid
    D.calculation.product.productZero D.sourceAdd x y

theorem whole_outgoing (D : Input S pages P) (x : (S.element 5 degree).carrier) :
    D.calculation.target.next.equivalence (S.differential 5 degree x) =
      eval (matrixOf 1 2 Data.source5.outgoing) (D.calculation.product.input.nextTarget.equivalence x) := by
  let a : (S.element 5 degree).carrier := D.calculation.product.input.nextTarget.equivalence.symm (basis2 0)
  let b : (S.element 5 degree).carrier := D.calculation.product.input.nextTarget.equivalence.symm (basis2 1)
  have ha : S.differential 5 degree a = 0 := D.calculation.named_d5_zero a
    ((D.calculation.product.input.nextTarget.equivalence.apply_symm_apply _).trans
      (by funext i; fin_cases i <;> rfl))
  have coordinates : ∀ v : Vec 2, v = zero ∨ v = basis2 0 ∨ v = basis2 1 ∨ v = add (basis2 0) (basis2 1) := by decide
  rcases coordinates (D.calculation.product.input.nextTarget.equivalence x) with hz | hx | hx | hx
  · have same : x = 0 := D.calculation.product.input.nextTarget.equivalence.injective
      (hz.trans D.calculation.product.input.nextTarget.zero_value.symm)
    rw [same,(S.differential 5 degree).map_zero']
    exact D.calculation.target.next.zero_value.trans
      ((eval_zero _).symm.trans (congrArg (eval (matrixOf 1 2 Data.source5.outgoing))
        D.calculation.product.input.nextTarget.zero_value.symm))
  · have same : x = a := D.calculation.product.input.nextTarget.equivalence.injective
      (hx.trans (D.calculation.product.input.nextTarget.equivalence.apply_symm_apply _).symm)
    exact (congrArg D.calculation.target.next.equivalence (same ▸ ha)).trans
      (D.calculation.target.next.zero_value.trans ((show zero = eval (matrixOf 1 2 Data.source5.outgoing) (basis2 0) from by decide).trans
        (congrArg (eval (matrixOf 1 2 Data.source5.outgoing)) hx.symm)))
  · have same : x = b := D.calculation.product.input.nextTarget.equivalence.injective
      (hx.trans (D.calculation.product.input.nextTarget.equivalence.apply_symm_apply _).symm)
    exact (congrArg (fun y => D.calculation.target.next.equivalence (S.differential 5 degree y)) same).trans
      (D.lastColumn.trans (congrArg (eval (matrixOf 1 2 Data.source5.outgoing)) hx.symm))
  · have sum_name : D.calculation.product.input.nextTarget.equivalence (a+b) = add (basis2 0) (basis2 1) :=
      (D.current_add a b).trans (congrArg₂ add
        (D.calculation.product.input.nextTarget.equivalence.apply_symm_apply _)
        (D.calculation.product.input.nextTarget.equivalence.apply_symm_apply _))
    have same : x = a+b := D.calculation.product.input.nextTarget.equivalence.injective (hx.trans sum_name.symm)
    have hd : S.differential 5 degree x = S.differential 5 degree b := by
      rw [same,(S.differential 5 degree).map_add',ha,zero_add]
    exact (congrArg D.calculation.target.next.equivalence hd).trans
      (D.lastColumn.trans ((show eval (matrixOf 1 2 Data.source5.outgoing) (basis2 1) =
        eval (matrixOf 1 2 Data.source5.outgoing) (add (basis2 0) (basis2 1)) from by decide).trans
          (congrArg (eval (matrixOf 1 2 Data.source5.outgoing)) hx.symm)))

noncomputable def Input.incomingSource (D : Input S pages P) :
    ActualAdamsIncomingBridge.Source S 5 degree ≃ Vec 0 :=
  (ActualAdamsIncomingBridge.sourceEquiv S 5 degree (by decide)).trans D.incoming.page5.equivalence

noncomputable def Input.whole (D : Input S pages P) : WholeCoordinates S 5 degree
    Data.source5 D.calculation.product.input.nextTarget where
  current_add := D.current_add
  outgoingTarget := D.calculation.target.next
  outgoing := whole_outgoing D
  incomingSource := D.incomingSource
  incoming := by
    intro x
    have hz := Prop79TargetSearch.ZeroSpaces.incoming_zero S 5 degree D.incomingSource x
    exact (congrArg D.calculation.product.input.nextTarget.equivalence hz).trans
      (D.calculation.product.input.nextTarget.zero_value.trans (by funext i; rfl))

noncomputable def Input.page6 (D : Input S pages P) : Coordinates S 6 degree 1 :=
  D.whole.meaning.nextCoordinates pages Data.source5_valid D.zero5

theorem coordinate6 (D : Input S pages P) :
    D.page6.equivalence D.calculation.value6 = (fun _ => true) := by
  let x : PageCycle S 5 degree := ⟨D.calculation.value5,
    (D.calculation.named_d5_zero _ D.calculation.name5).trans (S.zero_is_zero _ _).symm⟩
  have h := D.whole.meaning.nextCoordinates_quotient pages Data.source5_valid D.zero5 x
  exact h.trans ((congrArg (eval Data.source5.comparison.projection) D.calculation.name5).trans (by decide))

theorem nonzero6 (D : Input S pages P) : D.calculation.value6 ≠ 0 := by
  intro hz
  have h := coordinate6 D
  rw [hz,D.page6.zero_value] at h
  exact (show (zero : Vec 1) ≠ (fun _ => true) from by decide) h

theorem same_input_E6 (D : Input S pages P) (input : (S.element 2 degree).carrier)
    (binding : D.calculation.stage2.product.equivalence input = Fact763PageCertificates.target) :
    Nonempty (Trace S pages degree 6 input D.calculation.value6) ∧ D.calculation.value6 ≠ 0 :=
  ⟨(D.calculation.same_input input binding).1,nonzero6 D⟩

#print axioms additive_two_ext
#print axioms Incoming.page3
#print axioms Incoming.page5
#print axioms Input.current_add
#print axioms whole_outgoing
#print axioms Input.incomingSource
#print axioms Input.whole
#print axioms Input.page6
#print axioms coordinate6
#print axioms nonzero6
#print axioms same_input_E6
end Fact763Continuation.Actual
