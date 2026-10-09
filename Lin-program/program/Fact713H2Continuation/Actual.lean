import Fact713H2Continuation.Data
import Row3147H2Product.Actual
import ActualAdamsHomologyCoordinates.Adapter

namespace Fact713H2Continuation.Actual
open LinearCertificates PageTransitionCertificates ManualInputObligations ManualInputObligations.Reference
open Row3151ActualTransport ActualAdamsHomologyCoordinates ActualAdamsHomologyCoordinates.Meaning

abbrev degree : Bidegree := ⟨16,140⟩
abbrev wire := Data.b_S0_16_140_d3
def basis3 (j : Fin 3) : Vec 3 := fun i => i == j

theorem source_previous_exact (b : Bool) :
    IndexedFamilyCertificates.lookup (Fact713SquareContinuation.family b) ⟨"S0",2,16,140⟩ =
      some Row3147H2Product.Data.product ∧
    IndexedFamilyCertificates.lookup (Fact713SquareContinuation.family b) ⟨"S0",2,19,142⟩ =
      some Row3147H2Product.Data.target := by cases b <;> decide

theorem additive_three_ext (f g : Vec 3 → Vec 2)
    (hf : ∀ x y, f (add x y) = add (f x) (f y))
    (hg : ∀ x y, g (add x y) = add (g x) (g y))
    (hzero : f zero = g zero)
    (hb : ∀ j, f (basis3 j) = g (basis3 j)) (v : Vec 3) : f v = g v := by
  have decompose : ∀ v : Vec 3,
      v = add (if v 0 then basis3 0 else zero)
        (add (if v 1 then basis3 1 else zero) (if v 2 then basis3 2 else zero)) := by decide
  rw [decompose v, hf, hf, hg, hg]
  congr 1
  · cases v 0 <;> simp only [Bool.false_eq_true, if_false, if_true, hzero, hb]
  · congr 1
    · cases v 1 <;> simp only [Bool.false_eq_true, if_false, if_true, hzero, hb]
    · cases v 2 <;> simp only [Bool.false_eq_true, if_false, if_true, hzero, hb]

theorem boundary_differential_zero (S : AdamsSpectralSequence) (r : Nat) (d : Bidegree)
    (x : (S.element r d).carrier) (hx : PageBoundary S r d x) : S.differential r d x = 0 := by
  rcases hx with rfl | ⟨e,y,h,hx⟩
  · exact (S.differential r d).map_zero'
  · subst d
    cases hx
    exact S.differentialSq r e y

/-- The named middle column is derived from h2. The first column is forced
by the complete incoming map and d squared zero. Only the independently
stored nonzero last column remains a differential premise. -/
structure Input (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (P : CertifiedAdamsProduct S) where
  product : Row3147H2Product.Actual.Stage2 S pages P
  sourcePrefix : product.Prefix
  sourceAdd : LocalAddMeaning pages 2 degree
  targetAdd : LocalAddMeaning pages 2 (AdamsTarget 3 degree)
  incomingSource : ActualAdamsIncomingBridge.Source S 3 degree ≃ Vec 3
  incoming : ∀ x,
    product.product3.equivalence (ActualAdamsIncomingBridge.differential S 3 degree x) =
      eval (matrixOf 3 3 wire.incoming) (incomingSource x)
  lastColumn : product.target3.equivalence
      (S.differential 3 degree (product.product3.equivalence.symm (basis3 2))) =
    eval (matrixOf 2 3 wire.outgoing) (basis3 2)
  zeroMeaning3 : LocalZeroMeaning pages 3 degree

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S} {P : CertifiedAdamsProduct S}

theorem Input.current_add (D : Input S pages P) (x y : (S.element 3 degree).carrier) :
    D.product.product3.equivalence (x+y) =
      add (D.product.product3.equivalence x) (D.product.product3.equivalence y) :=
  nextCoordinates_add D.product.productMeaning pages Row3147H2Product.Data.product_valid
    D.product.productZero D.sourceAdd x y

theorem Input.target_add (D : Input S pages P)
    (x y : (S.element 3 (AdamsTarget 3 degree)).carrier) :
    D.product.target3.equivalence (x+y) =
      add (D.product.target3.equivalence x) (D.product.target3.equivalence y) :=
  nextCoordinates_add D.product.targetMeaning pages Row3147H2Product.Data.target_valid
    D.product.targetZero D.targetAdd x y

theorem first_column_zero (D : Input S pages P) :
    S.differential 3 degree (D.product.product3.equivalence.symm (basis3 0)) = 0 := by
  let y := D.incomingSource.symm (basis3 2)
  have hy := D.incoming y
  rw [D.incomingSource.apply_symm_apply] at hy
  have column : eval (matrixOf 3 3 wire.incoming) (basis3 2) = basis3 0 := by decide
  have same : ActualAdamsIncomingBridge.differential S 3 degree y =
      D.product.product3.equivalence.symm (basis3 0) :=
    D.product.product3.equivalence.injective
      (hy.trans (column.trans (D.product.product3.equivalence.apply_symm_apply _).symm))
  apply boundary_differential_zero S 3 degree
  exact (ActualAdamsIncomingBridge.differential_image S 3 degree _).mp ⟨y,same⟩

theorem whole_outgoing (D : Input S pages P) (x : (S.element 3 degree).carrier) :
    D.product.target3.equivalence (S.differential 3 degree x) =
      eval (matrixOf 2 3 wire.outgoing) (D.product.product3.equivalence x) := by
  let f : Vec 3 → Vec 2 := fun v => D.product.target3.equivalence
    (S.differential 3 degree (D.product.product3.equivalence.symm v))
  let g : Vec 3 → Vec 2 := eval (matrixOf 2 3 wire.outgoing)
  have inverse_add : ∀ u v : Vec 3,
      D.product.product3.equivalence.symm (add u v) =
        D.product.product3.equivalence.symm u + D.product.product3.equivalence.symm v := by
    intro u v
    apply D.product.product3.equivalence.injective
    rw [D.current_add, D.product.product3.equivalence.apply_symm_apply,
      D.product.product3.equivalence.apply_symm_apply,D.product.product3.equivalence.apply_symm_apply]
  have fadd : ∀ u v, f (add u v) = add (f u) (f v) := by
    intro u v
    dsimp only [f]
    rw [inverse_add,(S.differential 3 degree).map_add',D.target_add]
  have fzero : f zero = g zero := by
    have hz : D.product.product3.equivalence.symm zero = 0 :=
      D.product.product3.equivalence.injective
        ((D.product.product3.equivalence.apply_symm_apply _).trans D.product.product3.zero_value.symm)
    dsimp only [f,g]
    rw [hz,(S.differential 3 degree).map_zero']
    exact D.product.target3.zero_value.trans (eval_zero _).symm
  have columns : ∀ j, f (basis3 j) = g (basis3 j) := by
    intro j
    fin_cases j
    · dsimp only [f,g]
      exact (congrArg D.product.target3.equivalence (first_column_zero D)).trans
        (D.product.target3.zero_value.trans (by decide))
    · dsimp only [f,g]
      have hn : basis3 1 = Row3147H2Product.Finite.namedProduct := by decide
      exact (congrArg D.product.target3.equivalence (D.product.named_d3_zero D.sourcePrefix _
        ((D.product.product3.equivalence.apply_symm_apply _).trans hn))).trans
          (D.product.target3.zero_value.trans (by decide))
    · exact D.lastColumn
  have all := additive_three_ext f g fadd (fun u v => eval_add _ u v) fzero columns
    (D.product.product3.equivalence x)
  simpa only [f,g,D.product.product3.equivalence.symm_apply_apply] using all

noncomputable def Input.whole (D : Input S pages P) :
    WholeCoordinates S 3 degree wire D.product.product3 where
  current_add := D.current_add
  outgoingTarget := D.product.target3
  incomingSource := D.incomingSource
  outgoing := whole_outgoing D
  incoming := D.incoming

noncomputable def Input.page4 (D : Input S pages P) : Coordinates S 4 degree 1 :=
  D.whole.meaning.nextCoordinates pages Data.b_S0_16_140_d3_valid D.zeroMeaning3

theorem coordinate4 (D : Input S pages P) :
    D.page4.equivalence (D.product.value4 D.sourcePrefix) = (fun _ => true) := by
  let x : PageCycle S 3 degree := ⟨D.product.value3,
    (D.product.named_d3_zero D.sourcePrefix _ D.product.name3).trans (S.zero_is_zero _ _).symm⟩
  have h := D.whole.meaning.nextCoordinates_quotient pages
    Data.b_S0_16_140_d3_valid D.zeroMeaning3 x
  exact h.trans ((congrArg (eval wire.comparison.projection) D.product.name3).trans (by decide))

theorem nonzero4 (D : Input S pages P) : D.product.value4 D.sourcePrefix ≠ 0 := by
  intro hz
  have h := coordinate4 D
  rw [hz,D.page4.zero_value] at h
  exact (show (zero : Vec 1) ≠ (fun _ => true) from by decide) h

theorem same_input_E4 (D : Input S pages P) (input : (S.element 2 degree).carrier)
    (binding : D.product.product.equivalence input = Row3147H2Product.Finite.rawProduct) :
    Nonempty (Trace S pages degree 4 input (D.product.value4 D.sourcePrefix)) ∧
      D.product.value4 D.sourcePrefix ≠ 0 :=
  ⟨(D.product.same_input D.sourcePrefix input binding).1,nonzero4 D⟩

#print axioms source_previous_exact
#print axioms additive_three_ext
#print axioms boundary_differential_zero
#print axioms Input.current_add
#print axioms Input.target_add
#print axioms first_column_zero
#print axioms whole_outgoing
#print axioms Input.whole
#print axioms Input.page4
#print axioms coordinate4
#print axioms nonzero4
#print axioms same_input_E4
end Fact713H2Continuation.Actual
