import Row2916D4Search.Actual
import Fact713Row3143Continuation.Branches

namespace Row2916D4Search.Binding
open LinearCertificates PageTransitionCertificates IndexedFamilyCertificates
open ManualInputObligations.Reference Row3151ActualTransport
open Actual Finite
set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

theorem sphere_d3_previous (residual : Bool) :
    lookup (Fact713Row3143Continuation.family residual) ⟨"S0",3,13,137⟩ = some sphereD3 := by
  cases residual <;> decide

theorem all_source_coordinates (x : Vec 3) :
    Fact713Row2916Search.CoordinateBridge.sourceEquivalence x = x :=
  Fact713Row2916Search.CoordinateBridge.source_identity x

/-- The whole actual d4 gives the entire finite zero column under any full
source and target coordinate choices, without a named-source restriction. -/
theorem whole_column (D : Actual.Input S T A) (transition : D.Transition4)
    (source : Coordinates S 4 sphereDegree 1)
    (target : Coordinates S 4 sphereTargetDegree 1)
    (x : (S.element 4 sphereDegree).carrier) :
    target.equivalence (S.differential 4 sphereDegree x) =
      eval (matrixOf 1 1 [false]) (source.equivalence x) :=
  (congrArg target.equivalence (whole_sphere_d4_zero D transition x)).trans
    (target.zero_value.trans (((show ∀ v : Vec 1, eval (matrixOf 1 1 [false]) v = zero from by decide) _).symm))

theorem derived_source_nonzero (D : Actual.Input S T A) (transition : D.Transition4) :
    D.map4 D.named4 ≠ 0 := by
  intro hz
  have h := image4_coordinate D transition
  rw [hz,D.sphere4.zero_value] at h
  exact (show (zero : Vec 1) ≠ namedModule from by decide) h

#print axioms sphere_d3_previous
#print axioms all_source_coordinates
#print axioms whole_column
#print axioms derived_source_nonzero
end Row2916D4Search.Binding
