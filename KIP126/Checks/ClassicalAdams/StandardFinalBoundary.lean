import KIP126.Main.Challenge.h6_sq_permanent
import Lean.Elab.Command

/-! Inspect the standard target in isolation: C(M) may be used by its eventual
proof, but must not enter the target's objects or statement. -/
open Lean Elab Command in
run_cmd do
  let env ← getEnv
  for m in env.allImportedModuleNames do
    if (`KIP126.Main.Axiom).isPrefixOf m || m == `KIP126.Challenge2 ||
        (`KIP126.Def.AdamsE2).isPrefixOf m || (`KIP126.Mathlib).isPrefixOf m ||
        (`KIPBase).isPrefixOf m ||
        (`Mathlib.Algebra.Homology.SpectralSequence).isPrefixOf m then
      throwError "standard Final imports computation or an SS adapter: {m}"
  let target := ``KIP126.Challenge.Final.H6SquarePermanent.h6_sq_permanent
  let some (.thmInfo ti) := env.find? target | throwError "missing standard target"
  unless ti.type.getUsedConstants.contains ``KIP126.Classical.Adams.standardH6Square &&
      ti.type.getUsedConstants.contains ``KIP126.Core.SpectralSequence.NonzeroSurvival do
    throwError "T(M) must refer to standard h6 square and internal nonzero survival"
  unless ti.value.getUsedConstants.contains ``sorryAx do
    throwError "Challenge must remain a statement placeholder"
  -- Inspect only the TYPE: the intentional Challenge proof has sorryAx.
  for c in ti.type.getUsedConstants do
    for a in ← liftCoreM (collectAxioms c) do
      unless [``propext, ``Classical.choice, ``Quot.sound,
          ``KIP126.Interface.Axiom.challenge1].contains a do
        throwError "standard Final type acquired a non-foundation input: {c}: {a}"

open KIP126.Classical.Adams KIP126.StableHomotopy

example : sphereAdamsData =
    adamsTowerInternalSpectralSequence standardFoundation.hf2.unit SphereSpectrum := rfl

example : standardH6Square =
    Sphere.Internal.hiSquare standardFoundation.hf2 standardMilnorCooperations 6 := rfl

example : sphereAdamsData.r₀ = 2 := rfl

example (r : ℤ) : sphereAdamsData.diffDeg r = (r, r - 1) := rfl
