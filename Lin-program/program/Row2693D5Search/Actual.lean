import Row2693D5Search.Product

namespace Row2693D5Search.Actual
open LinearCertificates PageTransitionCertificates ManualInputObligations ManualInputObligations.Reference
open Row3151ActualTransport ActualAdamsHomologyCoordinates ActualAdamsHomologyCoordinates.Meaning
open ActualAdamsProductTraceBridge ActualAdamsProductCycleBridge
open Fact762SphereGDetection.ProductDescent Product

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S} {P : CertifiedAdamsProduct S}

noncomputable def cycle {r : Nat} {d : Bidegree} {w : WireComparison}
    {C : Coordinates S r d w.m} (M : Meaning S r d w C)
    (x : (S.element r d).carrier) (name : Vec w.m) (hx : C.equivalence x = name)
    (finite : InKernel (matrixOf w.k w.m w.outgoing) name) : PageCycle S r d :=
  ⟨x,(M.cycle_iff x).mpr (hx.symm ▸ finite)⟩

noncomputable def next {r : Nat} {d : Bidegree} (x : PageCycle S r d) :=
  (pages.nextPage r d).toNext (Quotient.mk _ x)

structure Target2 (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S) where
  coordinates : Coordinates S 2 ⟨15,138⟩ 3
  meaning : Meaning S 2 ⟨15,138⟩ Data.target2 coordinates
  zero : LocalZeroMeaning pages 2 ⟨15,138⟩
noncomputable def Target2.next (T : Target2 S pages) :=
  T.meaning.nextCoordinates pages Data.target2_valid T.zero
structure Target3 (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S) where
  previous : Target2 S pages
  meaning : Meaning S 3 ⟨15,138⟩ Data.target3 previous.next
  zero : LocalZeroMeaning pages 3 ⟨15,138⟩
noncomputable def Target3.next (T : Target3 S pages) :=
  T.meaning.nextCoordinates pages Data.target3_valid T.zero
structure Target4 (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S) where
  previous : Target3 S pages
  meaning : Meaning S 4 ⟨15,138⟩ Data.target4 previous.next
  zero : LocalZeroMeaning pages 4 ⟨15,138⟩
noncomputable def Target4.next (T : Target4 S pages) :=
  T.meaning.nextCoordinates pages Data.target4_valid T.zero

structure Input (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (P : CertifiedAdamsProduct S) where
  product : Product.Stage4 S pages P
  right5Meaning : Meaning S 5 rightDegree Data.right5 product.input.nextRight
  correction : Coordinates S 2 ⟨6,6⟩ 1
  target : Target4 S pages
  correctionEquation : ∀ x y,
    target.previous.previous.coordinates.equivalence (P.product.multiply 2 ⟨6,6⟩ rightDegree x y) =
      PageProductCertificates.product Data.correctionTensor (correction.equivalence x)
        (product.previous.previous.right.equivalence y)
  correctionTransitions : ∀ q, 2 ≤ q → q < 5 → Transition S pages P q ⟨6,6⟩ rightDegree

namespace Input
variable (I : Input S pages P)

abbrev stage2 := I.product.previous.previous
abbrev stage3 := I.product.previous

noncomputable def raw : (S.element 2 productDegree).carrier :=
  I.stage2.product.equivalence.symm Finite.product2Name
noncomputable def productCycle2 : PageCycle S 2 productDegree :=
  cycle I.stage2.productMeaning I.raw Finite.product2Name
    (I.stage2.product.equivalence.apply_symm_apply _) Finite.path.1
noncomputable def value3 := next (pages := pages) I.productCycle2
theorem name3 : I.stage2.input.nextTarget.equivalence I.value3 = Finite.product3Name := by
  change (I.stage2.productMeaning.nextCoordinates pages Data.product2_valid I.stage2.productZero).equivalence _ = _
  unfold value3 next
  rw [I.stage2.productMeaning.nextCoordinates_quotient]
  change eval _ (I.stage2.product.equivalence (I.stage2.product.equivalence.symm Finite.product2Name)) = _
  rw [I.stage2.product.equivalence.apply_symm_apply]
  exact Finite.path.2.1
noncomputable def productCycle3 : PageCycle S 3 productDegree :=
  cycle I.stage3.productMeaning I.value3 Finite.product3Name I.name3 Finite.path.2.2.1
noncomputable def value4 := next (pages := pages) I.productCycle3
theorem name4 : I.stage3.input.nextTarget.equivalence I.value4 = Finite.product3Name := by
  change (I.stage3.productMeaning.nextCoordinates pages Data.product3_valid I.stage3.productZero).equivalence _ = _
  unfold value4 next
  rw [I.stage3.productMeaning.nextCoordinates_quotient]
  change eval _ (I.stage2.input.nextTarget.equivalence I.value3) = _
  rw [I.name3]
  exact Finite.path.2.2.2.1
noncomputable def productCycle4 : PageCycle S 4 productDegree :=
  cycle I.product.productMeaning I.value4 Finite.product3Name I.name4 Finite.path.2.2.2.2.1
noncomputable def value5 := next (pages := pages) I.productCycle4
theorem name5 : I.product.input.nextTarget.equivalence I.value5 = Finite.product5Name := by
  change (I.product.productMeaning.nextCoordinates pages Data.product4_valid I.product.productZero).equivalence _ = _
  unfold value5 next
  rw [I.product.productMeaning.nextCoordinates_quotient]
  change eval _ (I.stage3.input.nextTarget.equivalence I.value4) = _
  rw [I.name4]
  exact Finite.path.2.2.2.2.2
noncomputable def trace5 : Trace S pages productDegree 5 I.raw I.value5 :=
  .step (.step (.step (.start I.raw) I.productCycle2.property) I.productCycle3.property) I.productCycle4.property

noncomputable def rightRaw : (S.element 2 rightDegree).carrier :=
  I.stage2.right.equivalence.symm Finite.right2Name
noncomputable def rightCycle2 : PageCycle S 2 rightDegree :=
  cycle I.stage2.rightMeaning I.rightRaw Finite.right2Name
    (I.stage2.right.equivalence.apply_symm_apply _) Finite.right_path.1
noncomputable def right3 := next (pages := pages) I.rightCycle2
theorem right_name3 : I.stage2.input.nextRight.equivalence I.right3 = Finite.right3Name := by
  change (I.stage2.rightMeaning.nextCoordinates pages Data.right2_valid I.stage2.rightZero).equivalence _ = _
  unfold right3 next
  rw [I.stage2.rightMeaning.nextCoordinates_quotient]
  change eval _ (I.stage2.right.equivalence (I.stage2.right.equivalence.symm Finite.right2Name)) = _
  rw [I.stage2.right.equivalence.apply_symm_apply]
  exact Finite.right_path.2.1
noncomputable def rightCycle3 : PageCycle S 3 rightDegree :=
  cycle I.stage3.rightMeaning I.right3 Finite.right3Name I.right_name3 Finite.right_path.2.2.1
noncomputable def right4 := next (pages := pages) I.rightCycle3
theorem right_name4 : I.stage3.input.nextRight.equivalence I.right4 = Finite.leftName := by
  change (I.stage3.rightMeaning.nextCoordinates pages Data.right3_valid I.stage3.rightZero).equivalence _ = _
  unfold right4 next
  rw [I.stage3.rightMeaning.nextCoordinates_quotient]
  change eval _ (I.stage2.input.nextRight.equivalence I.right3) = _
  rw [I.right_name3]
  exact Finite.right_path.2.2.2.1
noncomputable def rightCycle4 : PageCycle S 4 rightDegree :=
  cycle I.product.rightMeaning I.right4 Finite.leftName I.right_name4 Finite.right_path.2.2.2.2.1
noncomputable def right5 := next (pages := pages) I.rightCycle4
theorem right_name5 : I.product.input.nextRight.equivalence I.right5 = Finite.leftName := by
  change (I.product.rightMeaning.nextCoordinates pages Data.right4_valid I.product.rightZero).equivalence _ = _
  unfold right5 next
  rw [I.product.rightMeaning.nextCoordinates_quotient]
  change eval _ (I.stage3.input.nextRight.equivalence I.right4) = _
  rw [I.right_name4]
  exact Finite.right_path.2.2.2.2.2
noncomputable def rightTrace5 : Trace S pages rightDegree 5 I.rightRaw I.right5 :=
  .step (.step (.step (.start I.rightRaw) I.rightCycle2.property) I.rightCycle3.property) I.rightCycle4.property

theorem right_d5_zero : S.differential 5 rightDegree I.right5 = 0 :=
  ((I.right5Meaning.cycle_iff I.right5).mpr (Finite.right5_zero _)).trans (S.zero_is_zero _ _)

theorem correction_zero (v : (S.element 5 ⟨6,6⟩).carrier) :
    P.product.multiply 5 ⟨6,6⟩ rightDegree v I.right5 = 0 := by
  apply Fact762SphereGDetection.Trace.annihilator S pages I.stage3.low.zeros P
    ⟨6,6⟩ rightDegree 3 I.rightRaw I.right5 I.rightTrace5 ?_ I.correctionTransitions v
  intro x
  apply I.target.previous.previous.coordinates.equivalence.injective
  exact (I.correctionEquation x I.rightRaw).trans
    ((Finite.correction_zero _ _).trans I.target.previous.previous.coordinates.zero_value.symm)

theorem named_d5_zero (x : (S.element 5 productDegree).carrier)
    (hx : I.product.input.nextTarget.equivalence x = Finite.product5Name) :
    S.differential 5 productDegree x = 0 := by
  let h1 := I.product.input.nextLeft.equivalence.symm Finite.leftName
  have h := next_product_coordinates I.product.input h1 I.right5
  change I.product.input.nextTarget.equivalence _ =
    PageProductCertificates.product Finite.tensor5 (I.product.input.nextLeft.equivalence h1)
      (I.product.input.nextRight.equivalence I.right5) at h
  rw [I.product.input.nextLeft.equivalence.apply_symm_apply,I.right_name5,Finite.main5] at h
  have same : P.product.multiply 5 leftDegree rightDegree h1 I.right5 = x :=
    I.product.input.nextTarget.equivalence.injective (h.trans hx.symm)
  have formula := P.leibniz.formula 5 leftDegree rightDegree h1 I.right5
  rw [I.right_d5_zero,P.product.zero_right,cast_zero,add_zero] at formula
  have correction := I.correction_zero (S.differential 5 leftDegree h1)
  change P.product.multiply 5 (AdamsTarget 5 leftDegree) rightDegree
    (S.differential 5 leftDegree h1) I.right5 = 0 at correction
  rw [correction] at formula
  have hz := (cast_zero_iff S 5 (adamsTarget_add_left 5 leftDegree rightDegree) _).mp formula
  exact same ▸ hz

theorem nonzero5 : I.value5 ≠ 0 := by
  intro hz
  exact Finite.nonzero5 (I.name5.symm.trans
    ((congrArg I.product.input.nextTarget.equivalence hz).trans I.product.input.nextTarget.zero_value))

theorem named_output : I.target.next.equivalence (S.differential 5 productDegree I.value5) = zero :=
  (congrArg I.target.next.equivalence (I.named_d5_zero I.value5 I.name5)).trans I.target.next.zero_value

noncomputable def value6 := next (pages := pages)
  (⟨I.value5,(I.named_d5_zero I.value5 I.name5).trans (S.zero_is_zero _ _).symm⟩ : PageCycle S 5 productDegree)
noncomputable def trace6 : Trace S pages productDegree 6 I.raw I.value6 :=
  .step I.trace5 ((I.named_d5_zero I.value5 I.name5).trans (S.zero_is_zero _ _).symm)

theorem same_input (x : (S.element 2 productDegree).carrier)
    (hx : I.stage2.product.equivalence x = Finite.product2Name) :
    Nonempty (Trace S pages productDegree 6 x I.value6) ∧ I.value5 ≠ 0 ∧
      S.differential 5 productDegree I.value5 = 0 := by
  have same : x = I.raw := I.stage2.product.equivalence.injective
    (hx.trans (I.stage2.product.equivalence.apply_symm_apply _).symm)
  subst x
  exact ⟨⟨I.trace6⟩,I.nonzero5,I.named_d5_zero I.value5 I.name5⟩

#print axioms name3
#print axioms name4
#print axioms name5
#print axioms trace5
#print axioms right_name3
#print axioms right_name4
#print axioms right_name5
#print axioms rightTrace5
#print axioms right_d5_zero
#print axioms correction_zero
#print axioms named_d5_zero
#print axioms nonzero5
#print axioms named_output
#print axioms trace6
#print axioms same_input
end Input
end Row2693D5Search.Actual
