import KIP126.Def.StableHomotopy.Implementation.Data
import KIP126.Def.Kervaire.Route.Tools.GeneralizedLeibniz
import KIP126.Def.Kervaire.Route.Tools.GeneralizedMahowald
import KIP126.Def.Kervaire.Route.Tools.PageExtensionStretching
import Lean.Elab.Command

/-! Foundation and paper-tool statements must not consume computed facts or
stage axioms. Defining a law is not a proof that the chosen model satisfies it. -/
open Lean Elab Command in
run_cmd do
  let env ← getEnv
  for mod in env.allImportedModuleNames do
    if (`KIP126.Main.Axiom).isPrefixOf mod ||
        (`KIP126.Interface.Axiom).isPrefixOf mod ||
        (`KIP126.Def.AdamsE2).isPrefixOf mod || mod == `KIP126.Challenge2 then
      throwError "foundation/paper-tool statements import a computation or stage input: {mod}"
  for old in [`KIP126.Challenge1.LinBasisInterface, `KIP126.Challenge1.linBasis,
      `KIP126.Challenge2.GeneralizedLeibnizLaw,
      `KIP126.Challenge2.GeneralizedMahowaldLaw,
      `KIP126.Challenge2.FinitePageExtensionStretchingLaw] do
    if env.contains old then
      throwError "obsolete stage classification is still exported: {old}"
  for law in [``KIP126.Kervaire.Route.Tools.GeneralizedLeibnizLaw,
      ``KIP126.Kervaire.Route.Tools.GeneralizedMahowaldLaw,
      ``KIP126.Kervaire.Route.Tools.FinitePageExtensionStretchingLaw] do
    let some (.defnInfo _) := env.find? law
      | throwError "paper obligation must be a proposition definition, not an axiom/theorem: {law}"
    for a in ← liftCoreM (collectAxioms law) do
      unless [``propext, ``Classical.choice, ``Quot.sound].contains a do
        throwError "paper statement acquired an unproved input: {law}: {a}"
