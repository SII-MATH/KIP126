import KIP126.Def.ClassicalAdams.ComputationalDifferential.LongLayer.Proofs
import Lean.Elab.Command

/-! The fixed computational corollary discloses exactly the existing fixed
foundation and Lin presentation inputs, and no new geometric axiom or sorry. -/
open Lean Elab Command in
run_cmd do
  let logical := [``propext, ``Classical.choice, ``Quot.sound]
  let foundation := ``KIP126.Classical.Adams.standardFoundation
  for a in ← liftCoreM (collectAxioms
      ``KIP126.Classical.Adams.LinE2Presentation.h6_cross_products_add_eq_zero) do
    unless (logical ++ [foundation]).contains a do
      throwError "unexpected explicit-presentation cancellation dependency: {a}"
  let inputs := [foundation, ``KIP126.Classical.Adams.linE2Presentation]
  for declaration in [``KIP126.Classical.Adams.SphereH6LongLayerMaps.LinCompatible,
      ``KIP126.Classical.Adams.SphereH6LongLayerMaps.LinCompatible.cross_sum_zero,
      ``KIP126.Classical.Adams.computedH6Square_d_two_eq_zero_of_longLayer] do
    let axioms ← liftCoreM (collectAxioms declaration)
    for a in axioms do
      unless (logical ++ inputs).contains a do
        throwError "unexpected computational long-pairing dependency: {declaration}: {a}"
    for a in inputs do
      unless axioms.contains a do
        throwError "missing disclosed computational long-pairing input: {declaration}: {a}"
  for m in (← getEnv).allImportedModuleNames do
    if (`KIP126.Mathlib).isPrefixOf m || (`KIPBase).isPrefixOf m ||
        (`Mathlib.Algebra.Homology.SpectralSequence).isPrefixOf m ||
        (`KIP126.Def.ClassicalAdams.StandardMilnor).isPrefixOf m ||
        (`KIP126.Def.ClassicalAdams.MilnorCooperations).isPrefixOf m then
      throwError "unexpected computational long-pairing import: {m}"

#print axioms KIP126.Classical.Adams.computedH6Square_d_two_eq_zero_of_longLayer
