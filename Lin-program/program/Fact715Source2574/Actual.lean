import Fact715Source2574.Finite
import Fact762SphereGDetection.ProductDescent
import Fact761ConstructedActual.Local

namespace Fact715Source2574.Actual
open LinearCertificates PageTransitionCertificates ManualInputObligations ManualInputObligations.Reference
open Row3151ActualTransport ActualAdamsHomologyCoordinates
open ActualAdamsHomologyCoordinates.Meaning ActualAdamsProductTraceBridge
open Fact762SphereGDetection.ProductDescent
open Finite

abbrev factorDegree : Bidegree := ⟨1,4⟩
abbrev sourceDegree : Bidegree := ⟨6,132⟩
abbrev productDegree : Bidegree := ⟨7,136⟩
abbrev targetDegree : Bidegree := ⟨10,138⟩

structure Stage2 (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (P : CertifiedAdamsProduct S) where
  factor : Coordinates S 2 factorDegree 1
  source : Coordinates S 2 sourceDegree 2
  product : Coordinates S 2 productDegree 1
  factorMeaning : Meaning S 2 factorDegree Data.factor factor
  sourceMeaning : Meaning S 2 sourceDegree Data.source source
  productMeaning : Meaning S 2 productDegree Data.product product
  factorZero : LocalZeroMeaning pages 2 factorDegree
  sourceZero : LocalZeroMeaning pages 2 sourceDegree
  productZero : LocalZeroMeaning pages 2 productDegree
  equation : ∀ a b, product.equivalence (P.product.multiply 2 factorDegree sourceDegree a b) =
    PageProductCertificates.product Data.tensor.product (factor.equivalence a) (source.equivalence b)
  transition : Transition S pages P 2 factorDegree sourceDegree
  target : Coordinates S 2 targetDegree 4
  targetMeaning : Meaning S 2 targetDegree Data.target target
  targetZero : LocalZeroMeaning pages 2 targetDegree
  factorTarget : Coordinates S 2 ⟨4,6⟩ 0
  factorTargetMeaning : Meaning S 2 ⟨4,6⟩ Data.factorTarget factorTarget
  factorTargetZero : LocalZeroMeaning pages 2 ⟨4,6⟩

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
noncomputable def source3 : Coordinates S 3 sourceDegree 1 := I.productInput.nextRight
noncomputable def product3 : Coordinates S 3 productDegree 1 := I.productInput.nextTarget
noncomputable def target3 : Coordinates S 3 targetDegree 2 :=
  I.targetMeaning.nextCoordinates pages Data.target_valid I.targetZero
noncomputable def factorTarget3 : Coordinates S 3 ⟨4,6⟩ 0 :=
  I.factorTargetMeaning.nextCoordinates pages Data.factorTarget_valid I.factorTargetZero

noncomputable def raw : (S.element 2 sourceDegree).carrier := I.source.equivalence.symm namedSource
noncomputable def sourceCycle : PageCycle S 2 sourceDegree := ⟨I.raw, by
  apply (I.sourceMeaning.cycle_iff _).mpr
  change InKernel _ (I.source.equivalence (I.source.equivalence.symm namedSource))
  rw [I.source.equivalence.apply_symm_apply]
  exact source_cycle⟩
noncomputable def value3 : (S.element 3 sourceDegree).carrier :=
  (pages.nextPage 2 sourceDegree).toNext (Quotient.mk _ I.sourceCycle)

theorem name3 : I.source3.equivalence I.value3 = (fun _ => true) := by
  change (I.sourceMeaning.nextCoordinates pages Data.source_valid I.sourceZero).equivalence _ = _
  unfold value3
  erw [I.sourceMeaning.nextCoordinates_quotient]
  change eval _ (I.source.equivalence (I.source.equivalence.symm namedSource)) = _
  rw [I.source.equivalence.apply_symm_apply]
  exact source_next

noncomputable def trace3 : Trace S pages sourceDegree 3 I.raw I.value3 :=
  .step (.start I.raw) I.sourceCycle.property

include I in
theorem factor_d3_zero (a : (S.element 3 factorDegree).carrier) :
    S.differential 3 factorDegree a = 0 :=
  Fact761ConstructedActual.Local.empty_zero I.factorTarget3 _

theorem product_name (a : (S.element 3 factorDegree).carrier)
    (b : (S.element 3 sourceDegree).carrier)
    (ha : I.factor3.equivalence a = (fun _ => true))
    (hb : I.source3.equivalence b = (fun _ => true)) :
    I.product3.equivalence (P.product.multiply 3 factorDegree sourceDegree a b) = (fun _ => true) := by
  have h := next_product_coordinates I.productInput a b
  change I.product3.equivalence _ =
    PageProductCertificates.product nextTensor (I.factor3.equivalence a) (I.source3.equivalence b) at h
  rw [ha,hb,next_named_product] at h
  exact h

/-- The stored nonzero differential is interpreted in the constructed
product and target charts, including the complete earlier boundary quotient. -/
structure Known where
  differential : ∀ x, I.product3.equivalence x = (fun _ => true) →
    I.target3.equivalence (S.differential 3 productDegree x) = namedTarget

theorem product_d3_nonzero (K : Known I) (x : (S.element 3 productDegree).carrier)
    (hx : I.product3.equivalence x = (fun _ => true)) : S.differential 3 productDegree x ≠ 0 := by
  intro hz
  have h := K.differential x hx
  erw [hz,I.target3.zero_value] at h
  exact target_nonzero h.symm

theorem named_d3_nonzero (K : Known I) : S.differential 3 sourceDegree I.value3 ≠ 0 := by
  let a := I.factor3.equivalence.symm (fun _ => true)
  have ha : I.factor3.equivalence a = (fun _ => true) := I.factor3.equivalence.apply_symm_apply _
  have h := I.product_d3_nonzero K (P.product.multiply 3 factorDegree sourceDegree a I.value3)
    (I.product_name a I.value3 ha I.name3)
  intro hz
  exact h (ActualAdamsProductCycleBridge.product_cycle S P 3 factorDegree sourceDegree
    a I.value3 (I.factor_d3_zero a) hz)

theorem cycle_is_zero (K : Known I) (x : PageCycle S 3 sourceDegree) : x.val = 0 := by
  have cases : ∀ v : Vec 1, v = zero ∨ v = (fun _ => true) := by decide
  rcases cases (I.source3.equivalence x.val) with hz | hn
  · exact I.source3.equivalence.injective (hz.trans I.source3.zero_value.symm)
  · have same : x.val = I.value3 := I.source3.equivalence.injective (hn.trans I.name3.symm)
    exact False.elim (I.named_d3_nonzero K (same ▸ (x.property.trans (S.zero_is_zero _ _))))

#print axioms name3
#print axioms trace3
#print axioms factor_d3_zero
#print axioms product_name
#print axioms product_d3_nonzero
#print axioms named_d3_nonzero
#print axioms cycle_is_zero
end Stage2
end Fact715Source2574.Actual
