import Row2773Leibniz.Basic
import ActualAdamsProductCycleBridge.Basic

namespace Row2773Leibniz.Actual
open LinearCertificates ManualInputObligations.Reference ActualAdamsProductCycleBridge

abbrev etaDegree : Bidegree := ⟨1,2⟩
abbrev rightDegree : Bidegree := ⟨12,133⟩
abbrev sourceDegree : Bidegree := ⟨13,135⟩
abbrev targetDegree : Bidegree := ⟨16,137⟩

/-- Complete page and product interpretations are mathematical caller inputs.
No d3 value of eta, the named factor, or the named source is supplied. -/
structure Meaning (S : AdamsSpectralSequence) (P : CertifiedAdamsProduct S) where
  eta : (S.element 3 etaDegree).carrier → Q Data.eta
  right : (S.element 3 rightDegree).carrier → Q Data.right
  source : (S.element 3 sourceDegree).carrier → Q Data.source
  target : (S.element 3 targetDegree).carrier → Q Data.target
  leftTarget : (S.element 3 (AdamsTarget 3 etaDegree)).carrier → Q Data.leftTarget
  rightTarget : (S.element 3 (AdamsTarget 3 rightDegree)).carrier → Q Data.rightTarget
  sourceFaithful : Function.Injective source
  targetFaithful : Function.Injective target
  rightTargetFaithful : Function.Injective rightTarget
  targetZero : target 0 = zeroQ Data.target
  rightTargetZero : rightTarget 0 = zeroQ Data.rightTarget
  sourceProduct : ∀ a b, source (P.product.multiply 3 etaDegree rightDegree a b) =
    sourceMul (eta a) (right b)
  leftProduct : ∀ a b, target (P.product.multiply 3 (AdamsTarget 3 etaDegree) rightDegree a b) =
    leftMul (leftTarget a) (right b)

theorem actual_right_d3_zero (S : AdamsSpectralSequence) (P : CertifiedAdamsProduct S)
    (M : Meaning S P) (b : (S.element 3 rightDegree).carrier) :
    S.differential 3 rightDegree b = 0 := by
  apply M.rightTargetFaithful
  exact (right_target_all_zero _).trans M.rightTargetZero.symm

theorem actual_product_d3_zero (S : AdamsSpectralSequence) (P : CertifiedAdamsProduct S)
    (M : Meaning S P) (a : (S.element 3 etaDegree).carrier)
    (b : (S.element 3 rightDegree).carrier) :
    S.differential 3 sourceDegree (P.product.multiply 3 etaDegree rightDegree a b) = 0 := by
  have leftZero : P.product.multiply 3 (AdamsTarget 3 etaDegree) rightDegree
      (S.differential 3 etaDegree a) b = 0 := by
    apply M.targetFaithful
    rw [M.leftProduct,left_all_zero]
    exact M.targetZero.symm
  apply (cast_zero_iff S 3 (adamsTarget_add_left 3 etaDegree rightDegree) _).mp
  have formula := P.leibniz.formula 3 etaDegree rightDegree a b
  rw [actual_right_d3_zero S P M,P.product.zero_right,cast_zero,leftZero,add_zero] at formula
  exact formula

theorem actual_row2773_d3_zero (S : AdamsSpectralSequence) (P : CertifiedAdamsProduct S)
    (M : Meaning S P) (a : (S.element 3 etaDegree).carrier)
    (b : (S.element 3 rightDegree).carrier) (x : (S.element 3 sourceDegree).carrier)
    (namedA : M.eta a = namedEta) (namedB : M.right b = namedRight)
    (namedX : M.source x = namedSource) : S.differential 3 sourceDegree x = 0 := by
  have eq : x = P.product.multiply 3 etaDegree rightDegree a b := by
    apply M.sourceFaithful
    rw [M.sourceProduct,namedA,namedB,named_product,namedX]
  rw [eq]
  exact actual_product_d3_zero S P M a b

#print axioms actual_right_d3_zero
#print axioms actual_product_d3_zero
#print axioms actual_row2773_d3_zero
end Row2773Leibniz.Actual
