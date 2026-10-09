import EtaD3Source.Basic
import ActualAdamsProductCycleBridge.Basic

namespace EtaD3Source.Actual
open LinearCertificates ManualInputObligations.Reference ActualAdamsProductCycleBridge

abbrev h0Degree : Bidegree := ⟨1,1⟩
abbrev etaDegree : Bidegree := ⟨1,2⟩
abbrev zeroProductDegree : Bidegree := ⟨2,3⟩
abbrev detectDegree : Bidegree := ⟨5,5⟩

/-- Complete quotient meanings and the full h0 multiplication are explicit
inputs. Neither d3(h0), d3(h1), nor a candidate for d3(h1) is assumed. -/
structure Meaning (S : AdamsSpectralSequence) (P : CertifiedAdamsProduct S) where
  h0 : (S.element 3 h0Degree).carrier → Q Data.h0
  eta : (S.element 3 etaDegree).carrier → Q Data.eta
  h0Target : (S.element 3 (AdamsTarget 3 h0Degree)).carrier → Q Data.h0Target
  etaTarget : (S.element 3 (AdamsTarget 3 etaDegree)).carrier → Q Data.etaTarget
  zeroProductTarget : (S.element 3 zeroProductDegree).carrier → Q Data.zeroProductTarget
  detectTarget : (S.element 3 detectDegree).carrier → Q Data.detectTarget
  h0TargetFaithful : Function.Injective h0Target
  etaTargetFaithful : Function.Injective etaTarget
  zeroProductTargetFaithful : Function.Injective zeroProductTarget
  h0TargetZero : h0Target 0 = zeroQ Data.h0Target
  etaTargetZero : etaTarget 0 = zeroQ Data.etaTarget
  zeroProductTargetZero : zeroProductTarget 0 = zeroQ Data.zeroProductTarget
  detectTargetZero : detectTarget 0 = zeroQ Data.detectTarget
  zeroProduct : ∀ a b,
    zeroProductTarget (P.product.multiply 3 h0Degree etaDegree a b) =
      zeroMul (h0 a) (eta b)
  detectProduct : ∀ a b,
    detectTarget (P.product.multiply 3 h0Degree (AdamsTarget 3 etaDegree) a b) =
      detectMul (h0 a) (etaTarget b)

theorem h0_d3_zero (S : AdamsSpectralSequence) (P : CertifiedAdamsProduct S)
    (M : Meaning S P) (a : (S.element 3 h0Degree).carrier) :
    S.differential 3 h0Degree a = 0 := by
  apply M.h0TargetFaithful
  exact (h0_target_all_zero _).trans M.h0TargetZero.symm

theorem h0_eta_product_zero (S : AdamsSpectralSequence) (P : CertifiedAdamsProduct S)
    (M : Meaning S P) (a : (S.element 3 h0Degree).carrier)
    (b : (S.element 3 etaDegree).carrier) : P.product.multiply 3 h0Degree etaDegree a b = 0 := by
  apply M.zeroProductTargetFaithful
  exact (zero_product_target_all_zero _).trans M.zeroProductTargetZero.symm

theorem eta_d3_zero (S : AdamsSpectralSequence) (P : CertifiedAdamsProduct S)
    (M : Meaning S P) (a : (S.element 3 h0Degree).carrier)
    (named : M.h0 a = namedH0) (b : (S.element 3 etaDegree).carrier) :
    S.differential 3 etaDegree b = 0 := by
  have formula := P.leibniz.formula 3 h0Degree etaDegree a b
  rw [h0_eta_product_zero S P M, (S.differential 3 _).map_zero', cast_zero,
    h0_d3_zero S P M, P.product.zero_left, zero_add] at formula
  have multiplied : P.product.multiply 3 h0Degree (AdamsTarget 3 etaDegree)
      a (S.differential 3 etaDegree b) = 0 :=
    (cast_zero_iff S 3 (adamsTarget_product_degree 3 h0Degree etaDegree).symm _).mp formula.symm
  have decoded := congrArg M.detectTarget multiplied
  rw [M.detectProduct, named] at decoded
  apply M.etaTargetFaithful
  exact (detect_reflects_zero _ (decoded.trans M.detectTargetZero)).trans M.etaTargetZero.symm

#print axioms h0_d3_zero
#print axioms h0_eta_product_zero
#print axioms eta_d3_zero
end EtaD3Source.Actual
