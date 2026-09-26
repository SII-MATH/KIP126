import KIP126.Def.ClassicalAdams.ComputationalVanishing.Proofs
import Lean.Elab.Command

/-! The no-incoming-differential argument is internal and independent of the Lin
table and Milnor coordinates. Its generic form uses the Eilenberg--Mac Lane
property; its fixed form requires only the existing foundation assumption. -/

open Lean Elab Command in
run_cmd do
  let basic := [``propext, ``Classical.choice, ``Quot.sound]
  for declaration in [
      ``KIP126.Classical.Adams.adamsTowerMapAt_isIso_of_nonpositive,
      ``KIP126.Classical.Adams.adamsLayerAt_isZero_of_negative,
      ``KIP126.Classical.Adams.adamsPage_subsingleton_of_negative,
      ``KIP126.Classical.Adams.adamsBoundaries_le_of_le,
      ``KIP126.Classical.Adams.adamsPage_subsingleton_of_le,
      ``KIP126.Classical.Adams.adamsTowerInternal_page_subsingleton_of_negative,
      ``KIP126.Classical.Adams.adamsBoundaries_succ_eq_of_source_subsingleton,
      ``KIP126.Classical.Adams.sphereAdamsPageOne_filtration_zero_subsingleton,
      ``KIP126.Classical.Adams.sphereAdamsPage_filtration_zero_subsingleton,
      ``KIP126.Classical.Adams.sphereAdamsInternal_filtration_zero_subsingleton,
      ``KIP126.Classical.Adams.sphereAdamsInternal_h6_incoming_source_subsingleton,
      ``KIP126.Classical.Adams.sphereAdamsInternal_h6_incoming_d_eq_zero,
      ``KIP126.Classical.Adams.sphereAdamsPage_h6_incoming_source_subsingleton,
      ``KIP126.Classical.Adams.sphereAdams_h6_boundaries_succ,
      ``KIP126.Classical.Adams.sphereAdams_h6_boundaries_eq_two,
      ``KIP126.Classical.Adams.sphereAdams_h6_nonzeroSurvival_iff] do
    for a in ← liftCoreM (collectAxioms declaration) do
      unless basic.contains a do
        throwError "unexpected generic vanishing dependency: {declaration}: {a}"
  let inputs := [``KIP126.Classical.Adams.standardFoundation]
  for declaration in [
      ``KIP126.Classical.Adams.sphereAdamsData_h6_incoming_source_subsingleton,
      ``KIP126.Classical.Adams.sphereAdamsData_h6_incoming_d_eq_zero,
      ``KIP126.Classical.Adams.sphereAdamsData_h6_nonzeroSurvival_iff] do
    let some (.thmInfo _) := (← getEnv).find? declaration
      | throwError "vanishing must be a theorem, not an axiom: {declaration}"
    let axioms ← liftCoreM (collectAxioms declaration)
    for a in axioms do
      unless (basic ++ inputs).contains a do
        throwError "unexpected fixed vanishing dependency: {declaration}: {a}"
    for a in inputs do
      unless axioms.contains a do
        throwError "missing disclosed vanishing input: {declaration}: {a}"
  for m in (← getEnv).allImportedModuleNames do
    if (`KIP126.Mathlib).isPrefixOf m || (`KIPBase).isPrefixOf m ||
        (`Mathlib.Algebra.Homology.SpectralSequence).isPrefixOf m ||
        (`KIP126.Def.ClassicalAdams.MilnorCooperations).isPrefixOf m ||
        (`KIP126.Def.ClassicalAdams.StandardMilnor).isPrefixOf m then
      throwError "unexpected internal vanishing import: {m}"

#print axioms KIP126.Classical.Adams.sphereAdamsInternal_h6_incoming_d_eq_zero
#print axioms KIP126.Classical.Adams.sphereAdamsData_h6_incoming_d_eq_zero
#print axioms KIP126.Classical.Adams.sphereAdamsData_h6_nonzeroSurvival_iff
