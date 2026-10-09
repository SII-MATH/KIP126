import Fact713Row2431Continuation.Data

namespace Fact713Row2431Continuation.ActualRule
open LinearCertificates PageTransitionCertificates ManualInputObligations.Reference
open Row3151ActualTransport

theorem same_complete_wire : Data.b_S0_9_130_d3 =
    Fact713Row2431Search.CoordinateBridge.conditionalD3 := by decide

/-- Full actual vanishing supplies the complete finite coordinate equation
for any source coordinate choice; no named-input restriction is required. -/
theorem actual_whole_column (sphere detector : AdamsSpectralSequence)
    (M : Fact713Row2431Search.Actual.Meaning sphere detector)
    (lowerTransition : M.lower.Transition) (upperTransition : M.upper.Transition)
    (naturality : ∀ x, detector.differential 3 Fact713Row2431Search.Actual.sourceDegree
      (M.lower.nextMap x) = M.upper.nextMap
        (sphere.differential 3 Fact713Row2431Search.Actual.sourceDegree x))
    (source : Coordinates sphere 3 Fact713Row2431Search.Actual.sourceDegree 1)
    (target : Coordinates sphere 3 Fact713Row2431Search.Actual.targetDegree 3)
    (x : (sphere.element 3 Fact713Row2431Search.Actual.sourceDegree).carrier) :
    target.equivalence (sphere.differential 3 Fact713Row2431Search.Actual.sourceDegree x) =
      eval (matrixOf 3 1 Data.b_S0_9_130_d3.outgoing) (source.equivalence x) := by
  have hz := Fact713Row2431Search.Actual.actual_row2431_whole_d3_zero sphere detector M
    lowerTransition upperTransition naturality x
  exact (congrArg target.equivalence hz).trans
    (target.zero_value.trans
      ((show ∀ v : Vec 1, eval (matrixOf 3 1 Data.b_S0_9_130_d3.outgoing) v = zero from by decide) _).symm)

#print axioms same_complete_wire
#print axioms actual_whole_column
end Fact713Row2431Continuation.ActualRule
