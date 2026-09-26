import KIP126.Solution.Final.h6_sq_permanent_computational
import Lean.Elab.Command

/-! The internal calculation must not obtain its sequence from a Mathlib adapter
or import the historical KIPBase component. -/
open Lean Elab Command in
run_cmd do
  for m in (← getEnv).allImportedModuleNames do
    if (`KIP126.Mathlib).isPrefixOf m || (`KIPBase).isPrefixOf m ||
        (`Mathlib.Algebra.Homology.SpectralSequence).isPrefixOf m then
      throwError "unexpected computational dependency: {m}"

example : KIP126.Classical.Adams.sphereAdamsData.r₀ = 2 :=
  KIP126.Classical.Adams.sphereAdamsModel.firstPage

example (r : ℤ) : KIP126.Classical.Adams.sphereAdamsData.diffDeg r = (r, r - 1) :=
  KIP126.Classical.Adams.sphereAdamsModel.differentialDegree r
