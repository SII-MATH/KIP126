import Row3305H0Search.Basic
import ActualAdamsProductCycleBridge.Basic

namespace Row3305H0Search.Actual
open LinearCertificates ManualInputObligations.Reference ActualAdamsProductCycleBridge

abbrev h0Degree : Bidegree := ⟨1,1⟩
abbrev rightDegree : Bidegree := ⟨22,141⟩
abbrev sourceDegree : Bidegree := ⟨23,142⟩
abbrev targetDegree : Bidegree := ⟨26,144⟩

/-- Entire product meanings are explicit; every possible right differential
value has zero h0 product in the checked target quotient. -/
structure Meaning (S : AdamsSpectralSequence) (P : CertifiedAdamsProduct S) where
  h0 : (S.element 3 h0Degree).carrier → Q Data.h0
  right : (S.element 3 rightDegree).carrier → Q Data.right
  source : (S.element 3 sourceDegree).carrier → Q Data.source
  target : (S.element 3 targetDegree).carrier → Q Data.target
  leftTarget : (S.element 3 (AdamsTarget 3 h0Degree)).carrier → Q Data.leftTarget
  rightTarget : (S.element 3 (AdamsTarget 3 rightDegree)).carrier → Q Data.rightTarget
  sourceFaithful : Function.Injective source
  targetFaithful : Function.Injective target
  leftTargetFaithful : Function.Injective leftTarget
  targetZero : target 0 = zeroQ Data.target
  leftTargetZero : leftTarget 0 = zeroQ Data.leftTarget
  sourceProduct : ∀ a b, source (P.product.multiply 3 h0Degree rightDegree a b) =
    sourceMul (h0 a) (right b)
  rightProduct : ∀ a b, target (P.product.multiply 3 h0Degree (AdamsTarget 3 rightDegree) a b) =
    rightMul (h0 a) (rightTarget b)

theorem actual_h0_d3_zero (S : AdamsSpectralSequence) (P : CertifiedAdamsProduct S)
    (M : Meaning S P) (a : (S.element 3 h0Degree).carrier) :
    S.differential 3 h0Degree a = 0 := by
  apply M.leftTargetFaithful
  exact (left_target_all_zero _).trans M.leftTargetZero.symm

theorem actual_row3305_d3_zero (S : AdamsSpectralSequence) (P : CertifiedAdamsProduct S)
    (M : Meaning S P) (a : (S.element 3 h0Degree).carrier)
    (b : (S.element 3 rightDegree).carrier) (x : (S.element 3 sourceDegree).carrier)
    (namedA : M.h0 a = namedH0) (namedB : M.right b = namedRight)
    (namedX : M.source x = namedSource) :
    S.differential 3 sourceDegree x = 0 := by
  have same : x = P.product.multiply 3 h0Degree rightDegree a b := by
    apply M.sourceFaithful
    rw [M.sourceProduct,namedA,namedB,named_product,namedX]
  have rightZero : P.product.multiply 3 h0Degree (AdamsTarget 3 rightDegree)
      a (S.differential 3 rightDegree b) = 0 := by
    apply M.targetFaithful
    rw [M.rightProduct,right_all_zero]
    exact M.targetZero.symm
  rw [same]
  apply (cast_zero_iff S 3 (adamsTarget_add_left 3 h0Degree rightDegree) _).mp
  have formula := P.leibniz.formula 3 h0Degree rightDegree a b
  rw [actual_h0_d3_zero S P M,P.product.zero_left,rightZero,cast_zero,add_zero] at formula
  exact formula

#print axioms actual_h0_d3_zero
#print axioms actual_row3305_d3_zero
end Row3305H0Search.Actual
