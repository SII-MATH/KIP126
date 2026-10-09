import Fact721FirstD4Continuation.Data
import Fact721FirstD4Search.Constructed

namespace Fact721FirstD4Continuation.ActualRule
open LinearCertificates PageTransitionCertificates ManualInputObligations.Reference
open Row3151ActualTransport Fact721FirstD4Search

theorem same_constructed_wire :
    Constructed.wire4 = Data.b_S0_11_133_d4 := by decide

/-- The whole actual theorem supplies the new finite column for every source
coordinate choice. No named actual representative is assumed. -/
theorem actual_whole_column (S detector : AdamsSpectralSequence)
    (M : Actual.Meaning S detector)
    (lowerTransition : M.lower.Transition) (upperTransition : M.upper.Transition)
    (naturality : ∀ x, detector.differential 4 Actual.sourceDegree (M.lower.nextMap x) =
      M.upper.nextMap (S.differential 4 Actual.sourceDegree x))
    (source : Coordinates S 4 Actual.sourceDegree 1)
    (target : Coordinates S 4 Actual.targetDegree 2)
    (x : (S.element 4 Actual.sourceDegree).carrier) :
    target.equivalence (S.differential 4 Actual.sourceDegree x) =
      eval (matrixOf 2 1 Data.b_S0_11_133_d4.outgoing) (source.equivalence x) := by
  have hz := Actual.actual_row2622_d4_zero S detector M lowerTransition upperTransition naturality x
  exact (congrArg target.equivalence hz).trans
    (target.zero_value.trans
      ((show ∀ v : Vec 1, eval (matrixOf 2 1 Data.b_S0_11_133_d4.outgoing) v = zero from by decide) _).symm)

#print axioms same_constructed_wire
#print axioms actual_whole_column
end Fact721FirstD4Continuation.ActualRule
