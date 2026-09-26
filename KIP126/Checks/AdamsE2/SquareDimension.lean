import KIP126.Def.ClassicalAdams.ComputationalDimension.Proofs
import Lean.Elab.Command

/-! The small degree argument is kernel-checked, not an additive-basis
certification axiom. The internal transfer uses only the existing foundation
and Lin comparison, and must remain independent of the standard/Milnor layer. -/

open Lean Elab Command in
run_cmd do
  let logical := [``propext, ``Classical.choice, ``Quot.sound]
  for declaration in [``KIP126.LinE2.generatorDegree_eq_row,
      ``KIP126.LinE2.generatorDegree_low_filtration,
      ``KIP126.LinE2.squareDegree_support,
      ``KIP126.LinE2.monomialDegree_square_unique,
      ``KIP126.LinE2.homogeneousPart_square_eq_span,
      ``KIP126.LinE2.E2At_square_eq_zero_or] do
    for a in ← liftCoreM (collectAxioms declaration) do
      unless logical.contains a do
        throwError "unexpected square-dimension dependency: {declaration}: {a}"
  let inputs := [``KIP126.Classical.Adams.standardFoundation,
    ``KIP126.Classical.Adams.linE2Presentation]
  for declaration in [``KIP126.Classical.Adams.sphereAdamsData_square_eq_zero_or,
      ``KIP126.Classical.Adams.sphereAdamsData_eq_computedH6Square_of_ne_zero] do
    let axioms ← liftCoreM (collectAxioms declaration)
    for a in axioms do
      unless (logical ++ inputs).contains a do
        throwError "unexpected internal square-dimension dependency: {declaration}: {a}"
    for a in inputs do
      unless axioms.contains a do
        throwError "missing disclosed square-dimension input: {declaration}: {a}"
  for m in (← getEnv).allImportedModuleNames do
    if (`KIP126.Mathlib).isPrefixOf m || (`KIPBase).isPrefixOf m ||
        (`Mathlib.Algebra.Homology.SpectralSequence).isPrefixOf m ||
        (`KIP126.Def.ClassicalAdams.StandardMilnor).isPrefixOf m ||
        (`KIP126.Def.ClassicalAdams.MilnorCooperations).isPrefixOf m then
      throwError "unexpected internal square-dimension import: {m}"

#print axioms KIP126.LinE2.monomialDegree_square_unique
#print axioms KIP126.LinE2.E2At_square_eq_zero_or
#print axioms KIP126.Classical.Adams.sphereAdamsData_eq_computedH6Square_of_ne_zero
