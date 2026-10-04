import Lean.Elab.Command

/-! Contract types may be imported from Interface/Challenge. Main's intentional
final-goal placeholder may never establish a Solution theorem. -/
namespace KIP126.Checks
open Lean Elab Command

def rejectGoalProofs (roots : Array Name) : CommandElabM Unit := do
  let env ← getEnv
  let mut pending := roots
  let mut seen : NameSet := {}
  while !pending.isEmpty do
    let name := pending.back!
    pending := pending.pop
    if seen.contains name then continue
    seen := seen.insert name
    if (`KIP126.Main.Challenge).isPrefixOf name ||
        (`KIP126.Def.Challenge).isPrefixOf name then
      throwError "Solution depends on an intentional goal proof: {name}"
    let some info := env.find? name | continue
    if let some idx := env.getModuleIdxFor? name then
      unless (`KIP126).isPrefixOf env.header.moduleNames[idx]! do continue
    pending := pending ++ info.type.getUsedConstants
    if let some value := info.value? then
      pending := pending ++ value.getUsedConstants

end KIP126.Checks
