import Row2925EtaD4.Restriction
import ActualAdamsProductCycleBridge.Basic

namespace Row2925EtaD4.Actual
open LinearCertificates ManualInputObligations.Reference
open ActualAdamsProductCycleBridge

def etaDegree : Bidegree := ⟨1,2⟩
def sourceDegree : Bidegree := ⟨11,137⟩
def targetDegree : Bidegree := ⟨15,140⟩
def productDegree : Bidegree := ⟨12,139⟩
def resultDegree : Bidegree := ⟨16,142⟩

/-- Full mathematical multiplication meanings, not a desired d4 value.
The eta differential is arbitrary and its whole possible left product is
interpreted by the independently checked h0^5 tensor. -/
structure ProductMeaning (S : AdamsSpectralSequence) (P : CertifiedAdamsProduct S)
    (eta : (S.element 4 etaDegree).carrier) where
  source : (S.element 4 sourceDegree).carrier → Naturality.S
  target : (S.element 4 targetDegree).carrier → Naturality.U
  sourceProduct : (S.element 4 productDegree).carrier → Naturality.T
  targetProduct : (S.element 4 resultDegree).carrier → Naturality.V
  left : (S.element 4 (AdamsTarget 4 etaDegree)).carrier → LeftTerm.D
  sourceProductFaithful : Function.Injective sourceProduct
  targetProductFaithful : Function.Injective targetProduct
  sourceProductZero : sourceProduct 0 = Naturality.zt
  targetProductZero : targetProduct 0 = Naturality.zv
  etaSource : ∀ x, sourceProduct (P.product.multiply 4 etaDegree sourceDegree eta x) =
    Naturality.f (source x)
  etaTarget : ∀ y, targetProduct (P.product.multiply 4 etaDegree targetDegree eta y) =
    Naturality.g (target y)
  leftProduct : ∀ a x,
    targetProduct (P.product.multiply 4 (AdamsTarget 4 etaDegree) sourceDegree a x) =
      LeftTerm.mul (left a) (source x)

theorem actual_second_coordinate_zero (S : AdamsSpectralSequence) (P : CertifiedAdamsProduct S)
    (eta : (S.element 4 etaDegree).carrier) (M : ProductMeaning S P eta)
    (x : (S.element 4 sourceDegree).carrier) (named : M.source x = Naturality.named) :
    Naturality.ue.toCoordinates (M.target (S.differential 4 sourceDegree x)) (1 : Fin 2) = false := by
  have productZero : P.product.multiply 4 etaDegree sourceDegree eta x = 0 := by
    apply M.sourceProductFaithful
    rw [M.etaSource,named,Naturality.named_maps_zero]
    exact M.sourceProductZero.symm
  have leftZero : P.product.multiply 4 (AdamsTarget 4 etaDegree) sourceDegree
      (S.differential 4 etaDegree eta) x = 0 := by
    apply M.targetProductFaithful
    rw [M.leftProduct,LeftTerm.all_zero]
    exact M.targetProductZero.symm
  have leibniz := P.leibniz.formula 4 etaDegree sourceDegree eta x
  rw [productZero,(S.differential 4 (Bidegree.add etaDegree sourceDegree)).map_zero',
    cast_zero,leftZero,zero_add] at leibniz
  have targetZero : P.product.multiply 4 etaDegree targetDegree eta
      (S.differential 4 sourceDegree x) = 0 := by
    apply (cast_zero_iff S 4 (adamsTarget_product_degree 4 etaDegree sourceDegree).symm _).mp
    exact leibniz.symm
  apply Naturality.second_zero_of_product_zero
  rw [← M.etaTarget,targetZero]
  exact M.targetProductZero

theorem actual_source_nonboundary (S : AdamsSpectralSequence) (P : CertifiedAdamsProduct S)
    (eta : (S.element 4 etaDegree).carrier) (M : ProductMeaning S P eta)
    (x : (S.element 4 sourceDegree).carrier) (named : M.source x = Naturality.named)
    (b c : Bool)
    (column : Naturality.ue.toCoordinates (M.target (S.differential 4 sourceDegree x)) =
      fun i => if i.val = 0 then b else c) :
    ¬ InImage (Row3151BranchCertificates.Semantics.outgoing b c)
      RemainingThreeAudit.event3152Source := by
  apply (RemainingThreeAudit.event3152_source_nonboundary_iff b c).mpr
  have h := actual_second_coordinate_zero S P eta M x named
  rw [column] at h
  exact h

#print axioms actual_second_coordinate_zero
#print axioms actual_source_nonboundary
end Row2925EtaD4.Actual
