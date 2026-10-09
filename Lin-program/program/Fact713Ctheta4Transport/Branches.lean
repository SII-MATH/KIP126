import Fact713Ctheta4Transport.Actual
import Row3136FamilyBranches.Actual

namespace Fact713Ctheta4Transport.Branches
open LinearCertificates PageTransitionCertificates ManualInputObligations.Reference Row3151ActualTransport
open Fact713D4SourceSearch.ActualDescent Source Comparison

/-- The residual branch parameter is forced to zero by the independently
transported source cycle. No identification of coordinate choices is needed:
the Ctheta4 result says that the entire actual one-dimensional source is zero. -/
theorem residual_false {C S : AdamsSpectralSequence}
    (A : Stage2 C S) (transition : A.input.Transition)
    (knownCycle : C.differential 3 Source.sourceDegree A.value3 = 0)
    (targetMap : (C.element 3 (AdamsTarget 3 Source.sourceDegree)).carrier →
      (S.element 3 (AdamsTarget 3 sphereDegree)).carrier)
    (targetZero : targetMap 0 = 0)
    (naturality : ∀ x, S.differential 3 sphereDegree (A.input.nextMap x) =
      targetMap (C.differential 3 Source.sourceDegree x))
    (r : Bool) (I : Coordinates S 3 sphereDegree 1)
    (T : Coordinates S 3 (AdamsTarget 3 sphereDegree) 2)
    (incoming : ∀ x, T.equivalence (S.differential 3 sphereDegree x) =
      eval (matrixOf 2 1 [false,r]) (I.equivalence x)) : r = false := by
  let x := I.equivalence.symm (fun _ => true)
  have equation := incoming x
  have hz := Actual.whole_d3_zero A
    (Actual.sphere_d3_zero A transition knownCycle targetMap targetZero naturality) x
  rw [hz,T.zero_value,I.equivalence.apply_symm_apply] at equation
  exact (show ∀ r : Bool, zero = eval (matrixOf 2 1 [false,r]) (fun _ => true) → r = false from by decide) r equation

#print axioms residual_false
end Fact713Ctheta4Transport.Branches
