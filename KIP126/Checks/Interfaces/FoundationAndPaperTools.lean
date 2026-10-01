import KIP126.Def.Foundation.Interfaces
import KIP126.Def.Kervaire.Route.Goals.Tools.GeneralizedLeibniz
import KIP126.Def.Kervaire.Route.Goals.Tools.GeneralizedMahowald
import KIP126.Def.Kervaire.Route.Goals.Tools.PageExtensionStretching
import Lean.Elab.Command

/-! Foundation and paper-tool statements must not consume computed facts or
stage axioms. Defining a law is not a proof that the chosen model satisfies it. -/
open Lean Elab Command in
run_cmd do
  let env ← getEnv
  for mod in env.allImportedModuleNames do
    if (`KIP126.Main.Axiom).isPrefixOf mod ||
        (`KIP126.Interface.Axiom).isPrefixOf mod ||
        (`KIP126.Def.AdamsE2).isPrefixOf mod || mod == `KIP126.Def.Comparison.Interfaces then
      throwError "foundation/paper-tool statements import a computation or stage input: {mod}"
  for old in [`KIP126.Foundation.LinBasisInterface, `KIP126.Foundation.linBasis,
      `KIP126.Comparison.GeneralizedLeibnizLaw,
      `KIP126.Comparison.GeneralizedMahowaldLaw,
      `KIP126.Comparison.FinitePageExtensionStretchingLaw] do
    if env.contains old then
      throwError "obsolete stage classification is still exported: {old}"
  for law in [``KIP126.Main.Solution.Tools.GeneralizedLeibnizLaw,
      ``KIP126.Main.Solution.Tools.GeneralizedMahowaldLaw,
      ``KIP126.Main.Solution.Tools.FinitePageExtensionStretchingLaw] do
    let some (.defnInfo _) := env.find? law
      | throwError "paper obligation must be a proposition definition, not an axiom/theorem: {law}"
    for a in ← liftCoreM (collectAxioms law) do
      unless [``propext, ``Classical.choice, ``Quot.sound].contains a do
        throwError "paper statement acquired an unproved input: {law}: {a}"
