import Row3147H2Product.Finite
import Fact762SphereGDetection.ProductDescent
import Fact761ConstructedActual.Local

namespace Row3147H2Product.Actual
open LinearCertificates PageTransitionCertificates ManualInputObligations ManualInputObligations.Reference
open Row3151ActualTransport ActualAdamsHomologyCoordinates
open ActualAdamsHomologyCoordinates.Meaning ActualAdamsProductTraceBridge
open Fact762SphereGDetection.ProductDescent Finite

abbrev factorDegree : Bidegree := ⟨1,4⟩
abbrev sourceDegree : Bidegree := ⟨15,136⟩
abbrev productDegree : Bidegree := ⟨16,140⟩
abbrev targetDegree : Bidegree := ⟨19,142⟩

/-- All E2 coordinates and incoming/outgoing maps are complete. In particular,
the desired row3147 d3 value is not a field of this structure. -/
structure Stage2 (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (P : CertifiedAdamsProduct S) where
  factor : Coordinates S 2 factorDegree 1
  source : Coordinates S 2 sourceDegree 2
  product : Coordinates S 2 productDegree 5
  factorMeaning : Meaning S 2 factorDegree Data.factor factor
  sourceMeaning : Meaning S 2 sourceDegree Data.source source
  productMeaning : Meaning S 2 productDegree Data.product product
  factorZero : LocalZeroMeaning pages 2 factorDegree
  sourceZero : LocalZeroMeaning pages 2 sourceDegree
  productZero : LocalZeroMeaning pages 2 productDegree
  equation : ∀ a b, product.equivalence (P.product.multiply 2 factorDegree sourceDegree a b) =
    PageProductCertificates.product Data.tensor.product (factor.equivalence a) (source.equivalence b)
  transition : Transition S pages P 2 factorDegree sourceDegree
  factorTarget : Coordinates S 2 ⟨4,6⟩ 0
  factorTargetZero : LocalZeroMeaning pages 2 ⟨4,6⟩
  target : Coordinates S 2 targetDegree 4
  targetMeaning : Meaning S 2 targetDegree Data.target target
  targetZero : LocalZeroMeaning pages 2 targetDegree

namespace Stage2
variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
  {P : CertifiedAdamsProduct S} (I : Stage2 S pages P)

def productInput : Input S pages P 2 factorDegree sourceDegree
    Data.factor Data.source Data.product I.factor I.source I.product where
  leftMeaning := I.factorMeaning
  rightMeaning := I.sourceMeaning
  targetMeaning := I.productMeaning
  leftValid := Data.factor_valid
  rightValid := Data.source_valid
  targetValid := Data.product_valid
  leftZero := I.factorZero
  rightZero := I.sourceZero
  targetZero := I.productZero
  tensor := Data.tensor.product
  nextTensor := nextTensor
  equation := I.equation
  finite := fun x y _ _ => descended_product x y
  transition := I.transition

noncomputable def factor3 : Coordinates S 3 factorDegree 1 := I.productInput.nextLeft
noncomputable def source3 : Coordinates S 3 sourceDegree 2 := I.productInput.nextRight
noncomputable def product3 : Coordinates S 3 productDegree 3 := I.productInput.nextTarget
noncomputable def factorTarget3 : Coordinates S 3 ⟨4,6⟩ 0 :=
  Fact761ConstructedActual.Local.emptyNext pages I.factorTarget I.factorTargetZero
noncomputable def target3 : Coordinates S 3 targetDegree 2 :=
  I.targetMeaning.nextCoordinates pages Data.target_valid I.targetZero

noncomputable def raw : (S.element 2 productDegree).carrier := I.product.equivalence.symm rawProduct
noncomputable def productCycle : PageCycle S 2 productDegree := ⟨I.raw, by
  apply (I.productMeaning.cycle_iff _).mpr
  change InKernel _ (I.product.equivalence (I.product.equivalence.symm rawProduct))
  rw [I.product.equivalence.apply_symm_apply]
  exact product_cycle⟩
noncomputable def value3 : (S.element 3 productDegree).carrier :=
  (pages.nextPage 2 productDegree).toNext (Quotient.mk _ I.productCycle)

theorem name3 : I.product3.equivalence I.value3 = namedProduct := by
  change (I.productMeaning.nextCoordinates pages Data.product_valid I.productZero).equivalence _ = _
  unfold value3
  erw [I.productMeaning.nextCoordinates_quotient]
  change eval _ (I.product.equivalence (I.product.equivalence.symm rawProduct)) = _
  rw [I.product.equivalence.apply_symm_apply]
  exact product_next

noncomputable def trace3 : Trace S pages productDegree 3 I.raw I.value3 :=
  .step (.start I.raw) I.productCycle.property

theorem nonzero3 : I.value3 ≠ 0 := by
  intro hz
  have h := I.name3
  rw [hz,I.product3.zero_value] at h
  exact product_nonzero h.symm

include I in
theorem factor_d3_zero (a : (S.element 3 factorDegree).carrier) :
    S.differential 3 factorDegree a = 0 :=
  Fact761ConstructedActual.Local.empty_zero I.factorTarget3 _

/-- The existing d3 zero-prefix is interpreted in the constructed complete
right-factor E3 chart. SQL NULL and level 9995 do not discharge this meaning. -/
structure Prefix where
  sourceMeaning : Meaning S 3 sourceDegree Data.source3 I.source3

theorem source_d3_zero_actual (K : Prefix I) (b : (S.element 3 sourceDegree).carrier) :
    S.differential 3 sourceDegree b = 0 := by
  have h := (K.sourceMeaning.cycle_iff b).mpr (source_d3_zero _)
  exact h.trans (S.zero_is_zero _ _)

theorem product_name (a : (S.element 3 factorDegree).carrier)
    (b : (S.element 3 sourceDegree).carrier)
    (ha : I.factor3.equivalence a = namedFactor)
    (hb : I.source3.equivalence b = namedSource) :
    I.product3.equivalence (P.product.multiply 3 factorDegree sourceDegree a b) = namedProduct := by
  have h := next_product_coordinates I.productInput a b
  change I.product3.equivalence _ =
    PageProductCertificates.product nextTensor (I.factor3.equivalence a) (I.source3.equivalence b) at h
  rw [ha,hb,next_named_product] at h
  exact h

theorem named_d3_zero (K : Prefix I) (x : (S.element 3 productDegree).carrier)
    (hx : I.product3.equivalence x = namedProduct) : S.differential 3 productDegree x = 0 := by
  let a := I.factor3.equivalence.symm namedFactor
  let b := I.source3.equivalence.symm namedSource
  have ha : I.factor3.equivalence a = namedFactor := I.factor3.equivalence.apply_symm_apply _
  have hb : I.source3.equivalence b = namedSource := I.source3.equivalence.apply_symm_apply _
  have same : P.product.multiply 3 factorDegree sourceDegree a b = x :=
    I.product3.equivalence.injective ((I.product_name a b ha hb).trans hx.symm)
  exact same ▸ ActualAdamsProductCycleBridge.product_cycle S P 3 factorDegree sourceDegree
    a b (I.factor_d3_zero a) (I.source_d3_zero_actual K b)

noncomputable def value4 (K : Prefix I) : (S.element 4 productDegree).carrier :=
  (pages.nextPage 3 productDegree).toNext (Quotient.mk _
    (⟨I.value3,(I.named_d3_zero K I.value3 I.name3).trans (S.zero_is_zero _ _).symm⟩ :
      PageCycle S 3 productDegree))

noncomputable def trace4 (K : Prefix I) : Trace S pages productDegree 4 I.raw (I.value4 K) :=
  .step I.trace3 ((I.named_d3_zero K I.value3 I.name3).trans (S.zero_is_zero _ _).symm)

theorem same_input (K : Prefix I) (input : (S.element 2 productDegree).carrier)
    (binding : I.product.equivalence input = rawProduct) :
    Nonempty (Trace S pages productDegree 4 input (I.value4 K)) ∧
      I.value3 ≠ 0 ∧ S.differential 3 productDegree I.value3 = 0 := by
  have same : input = I.raw :=
    I.product.equivalence.injective (binding.trans (I.product.equivalence.apply_symm_apply _).symm)
  subst input
  exact ⟨⟨I.trace4 K⟩,I.nonzero3,I.named_d3_zero K I.value3 I.name3⟩

theorem named_output (K : Prefix I) :
    I.target3.equivalence (S.differential 3 productDegree I.value3) = zero := by
  exact (congrArg I.target3.equivalence (I.named_d3_zero K I.value3 I.name3)).trans
    I.target3.zero_value

#print axioms productInput
#print axioms name3
#print axioms trace3
#print axioms nonzero3
#print axioms factor_d3_zero
#print axioms source_d3_zero_actual
#print axioms product_name
#print axioms named_d3_zero
#print axioms trace4
#print axioms same_input
#print axioms named_output
end Stage2
end Row3147H2Product.Actual
