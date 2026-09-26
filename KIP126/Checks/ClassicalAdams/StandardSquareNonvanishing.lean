import KIP126.Def.ClassicalAdams.StandardSphere.Proofs
import Lean.Elab.Command

/-! The generic nonvanishing theorem is conditional on explicit Milnor
coordinates. Its fixed specialization discloses precisely the existing
foundation and coordinate axioms, without Lin or final-comparison inputs. -/

open Lean Elab Command in
run_cmd do
  let logical := [``propext, ``Classical.choice, ``Quot.sound]
  for declaration in [``KIP126.Classical.Adams.Sphere.classOfMilnorCocycle_eq_zero_iff,
      ``KIP126.Classical.Adams.Sphere.h6Square_ne_zero] do
    for a in ← liftCoreM (collectAxioms declaration) do
      unless logical.contains a do
        throwError "unexpected generic standard-square dependency: {declaration}: {a}"
  let fixed := ``KIP126.Classical.Adams.sphereH6Square_ne_zero
  let inputs := [``KIP126.Classical.Adams.standardFoundation,
    ``KIP126.Classical.Adams.standardMilnorCooperations]
  let axioms ← liftCoreM (collectAxioms fixed)
  for a in axioms do
    unless (logical ++ inputs).contains a do
      throwError "unexpected fixed standard-square dependency: {a}"
  for a in inputs do
    unless axioms.contains a do
      throwError "missing disclosed standard-square dependency: {a}"
  for m in (← getEnv).allImportedModuleNames do
    if (`KIP126.Mathlib).isPrefixOf m || (`KIPBase).isPrefixOf m ||
        (`KIP126.Def.AdamsE2).isPrefixOf m || (`KIP126.External).isPrefixOf m then
      throwError "unexpected standard-square import: {m}"

#print axioms KIP126.Classical.Adams.Sphere.classOfMilnorCocycle_eq_zero_iff
#print axioms KIP126.Classical.Adams.Sphere.h6Square_ne_zero
#print axioms KIP126.Classical.Adams.sphereH6Square_ne_zero
