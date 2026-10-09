import Fact713NextD3Continuation.Data

namespace Fact713NextD3Continuation.ActualRules
open LinearCertificates PageTransitionCertificates ManualInputObligations.Reference

theorem row2916_same_complete_wire : Data.b_S0_13_137_d3 =
    Fact713Row2916Search.CoordinateBridge.conditionalD3 := by decide

theorem row2916_actual_column (sphere detector : AdamsSpectralSequence)
    (M : Fact713Row2916Search.Actual.Meaning sphere detector)
    (lowerTransition : M.lower.Transition) (upperTransition : M.upper.Transition)
    (naturality : ∀ x, detector.differential 3 Fact713Row2916Search.Actual.sourceDegree
      (M.lower.nextMap x) = M.upper.nextMap
        (sphere.differential 3 Fact713Row2916Search.Actual.sourceDegree x))
    (x : (sphere.element 3 Fact713Row2916Search.Actual.sourceDegree).carrier)
    (named : Fact713Row2916Search.CoordinateBridge.sourceEquivalence
      (M.lower.nextSource.equivalence x) = Fact713Row2916Search.Actual.named3) :
    Fact713Row2916Search.CoordinateBridge.targetEquivalence
      (M.upper.nextSource.equivalence
        (sphere.differential 3 Fact713Row2916Search.Actual.sourceDegree x)) =
      (fun i : Fin 1 => matrixOf 1 3 Data.b_S0_13_137_d3.outgoing i 1) := by
  rw [row2916_same_complete_wire]
  exact Fact713Row2916Search.CoordinateBridge.actual_staircase_column sphere detector M
    lowerTransition upperTransition naturality x named

/-- This supplies the single named column only. The other source class is
still unknown, so it cannot construct a complete (20,140) d3 comparison. -/
theorem row3135_actual_named_zero (S : AdamsSpectralSequence) (P : CertifiedAdamsProduct S)
    (M : Row3135H0Leibniz.Actual.Meaning S P)
    (a : (S.element 3 Row3135H0Leibniz.Actual.h0Degree).carrier)
    (b : (S.element 3 Row3135H0Leibniz.Actual.rightDegree).carrier)
    (x : (S.element 3 Row3135H0Leibniz.Actual.sourceDegree).carrier)
    (namedA : M.h0 a = Row3135H0Leibniz.namedH0)
    (namedB : M.right b = Row3135H0Leibniz.namedRight)
    (namedX : M.source x = Row3135H0Leibniz.namedSource)
    (known : M.rightTarget (S.differential 3 Row3135H0Leibniz.Actual.rightDegree b) =
      Row3135H0Leibniz.knownDifferential) :
    S.differential 3 Row3135H0Leibniz.Actual.sourceDegree x = 0 :=
  Row3135H0Leibniz.Actual.actual_row3135_d3_zero S P M a b x namedA namedB namedX known

#print axioms row2916_same_complete_wire
#print axioms row2916_actual_column
#print axioms row3135_actual_named_zero
end Fact713NextD3Continuation.ActualRules
