import Fact762SphereGDetection.Trace
import Fact762SphereGDetection.DerivedMeaning

namespace Fact762SphereGDetection.Actual
open ManualInputObligations ManualInputObligations.Reference
open ActualAdamsProductCycleBridge ActualAdamsProductTraceBridge

abbrev sourceDegree : Bidegree := ⟨14,139⟩
abbrev factorDegree : Bidegree := ⟨4,24⟩
abbrev factorD5Degree : Bidegree := ⟨9,28⟩

/-- Annihilation of both E2 products, actual multiplicative transitions and
an E5 detector derive the desired d5. No d5(g) value is an input. -/
theorem named_d5_zero (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (zeros : ActualAdamsSystemBridge.ZeroMeaning S pages) (P : CertifiedAdamsProduct S)
    (detector : Detector.Stage4 S pages P)
    (x0 : (S.element 2 sourceDegree).carrier) (x : (S.element 5 sourceDegree).carrier)
    (trace : ManualInputObligations.Trace S pages sourceDegree 5 x0 x)
    (initialProduct : ∀ g0, P.product.multiply 2 factorDegree sourceDegree g0 x0 = 0)
    (initialCorrection : ∀ v0, P.product.multiply 2 factorD5Degree sourceDegree v0 x0 = 0)
    (productTransitions : ∀ q, 2 ≤ q → q < 5 → Transition S pages P q factorDegree sourceDegree)
    (correctionTransitions : ∀ q, 2 ≤ q → q < 5 → Transition S pages P q factorD5Degree sourceDegree)
    (g : (S.element 5 factorDegree).carrier)
    (namedG : detector.input.nextLeft.equivalence g = fun _ => true) :
    S.differential 5 sourceDegree x = 0 := by
  have productZero := Trace.annihilator S pages zeros P factorDegree sourceDegree 3
    x0 x trace initialProduct productTransitions g
  have correctionZero := Trace.annihilator S pages zeros P factorD5Degree sourceDegree 3
    x0 x trace initialCorrection correctionTransitions (S.differential 5 factorDegree g)
  change P.product.multiply 5 (AdamsTarget 5 factorDegree) sourceDegree
    (S.differential 5 factorDegree g) x = 0 at correctionZero
  have formula := P.leibniz.formula 5 factorDegree sourceDegree g x
  rw [productZero,(S.differential 5 _).map_zero',cast_zero,correctionZero,zero_add] at formula
  have detected : P.product.multiply 5 factorDegree (AdamsTarget 5 sourceDegree)
      g (S.differential 5 sourceDegree x) = 0 :=
    (cast_zero_iff S 5 (adamsTarget_product_degree 5 factorDegree sourceDegree).symm _).mp formula.symm
  exact Detector.reflects detector g namedG _ detected

#print axioms named_d5_zero
end Fact762SphereGDetection.Actual
