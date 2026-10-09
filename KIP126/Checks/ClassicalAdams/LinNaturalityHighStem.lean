import KIP126.Interface.Solution.LinProgram.NaturalityHighStem
import Lean.Elab.Command

/-! Native 462481 remains conditional on its actual Ceta differential and
four coordinate comparisons. Data coordinates must be closed; actual
naturality may inherit only the fixed model's foundational axioms. -/
open Lean Elab Command in
run_cmd do
  let env ← getEnv
  for mod in env.allImportedModuleNames do
    if (`KIP126.Main).isPrefixOf mod ||
        mod == `KIP126.Interface.Solution.Challenge2 ||
        mod == `KIP126.Interface.Solution.LinProgram.BasisTable ||
        mod == `KIP126.Interface.Solution.LinProgram.Multiplication ||
        mod == `KIP126.Interface.Solution.LinProgram.Differentials ||
        mod == `KIP126.Interface.Solution.LinProgram.Staircase ||
        mod == `KIP126.Interface.Solution.LinProgram.Route.Certification ||
        mod == `KIP126.LinProgram.Tactic.LinE2 then
      throwError "high-stem replay imported a consumer or total certification: {mod}"
  let logical := [``propext, ``Classical.choice, ``Quot.sound]
  for decl in [``KIP126.Computation.LinProofs.Raw.NaturalityHighStem.output462481_in_export,
      ``KIP126.Computation.LinProofs.Raw.NaturalityHighStem.native_source_degree_shift,
      ``KIP126.LinE2.NaturalityHighStemCoordinates.sourceRow_mem,
      ``KIP126.LinE2.NaturalityHighStemCoordinates.targetRow_mem,
      ``KIP126.LinE2.NaturalityHighStemCoordinates.source_value,
      ``KIP126.LinE2.NaturalityHighStemCoordinates.target_value,
      ``KIP126.Interface.Solution.LinProgram.NaturalityHighStem.source_hasCoordinates,
      ``KIP126.Interface.Solution.LinProgram.NaturalityHighStem.target_hasCoordinates] do
    for ax in (← collectAxioms decl) do
      unless logical.contains ax do
        throwError "unexpected axiom in closed native coordinate certificate {decl}: {ax}"
  let modelAxioms ← collectAxioms ``KIP126.Classical.Adams.sphereAdamsModel
  for decl in [``KIP126.Interface.Solution.LinProgram.Naturality.cetaTowerComparison,
      ``KIP126.Interface.Solution.LinProgram.Naturality.cetaShiftTowerComparison,
      ``KIP126.Interface.Solution.LinProgram.Naturality.topCell_hasDifferential_desuspendTwice,
      ``KIP126.Interface.Solution.LinProgram.Naturality.statement_of_hasDifferential,
      ``KIP126.Interface.Solution.LinProgram.Naturality.row245131,
      ``KIP126.Interface.Solution.LinProgram.NaturalityHighStem.row462481] do
    for ax in (← collectAxioms decl) do
      unless logical.contains ax || modelAxioms.contains ax do
        throwError "naturality adds an axiom beyond the fixed Def model: {decl}: {ax}"
  let forbidden := [`KIP126.Challenge2.ComputationInterface.results,
    `KIP126.Challenge2.ComputationResults.sphereTable_sound,
    `KIP126.Computation.LinProofs.sphereTable_sound,
    `KIP126.Computation.LinProofs.differential_of_lookup]
  for root in [``KIP126.Interface.Solution.LinProgram.Naturality.row245131,
      ``KIP126.Interface.Solution.LinProgram.NaturalityHighStem.row462481] do
    let mut pending := #[root]
    let mut seen : NameSet := {}
    while !pending.isEmpty do
      let name := pending.back!
      pending := pending.pop
      if seen.contains name then continue
      seen := seen.insert name
      if forbidden.contains name then
        throwError "naturality reads a total computation result: {root}: {name}"
      unless (`KIP126).isPrefixOf name do continue
      let some info := env.find? name | continue
      if let some value := info.value? (allowOpaque := true) then
        if (value.find? fun e => match e with
            | .proj n i _ =>
                (n == `KIP126.Challenge2.ComputationInterface && i == 1) ||
                  n == `KIP126.Challenge2.ComputationResults
            | _ => false).isSome then
          throwError "naturality projects a total computation result: {root}: {name}"
        pending := pending ++ value.getUsedConstants
    unless seen.contains
        ``KIP126.Interface.Solution.LinProgram.Naturality.topCell_hasDifferential_desuspendTwice do
      throwError "naturality wrapper lost its shared actual transfer: {root}"

open KIP126.Computation.LinProofs.Raw.NaturalityHighStem in
example : source462480Full =
    ⟨462480, some 0, some "N", some "Ceta", some 125, some 15,
      some 140, some 3, some "1", some "0", some "CW_nu_eta__Ceta"⟩ := rfl

open KIP126.Computation.LinProofs.Raw.NaturalityHighStem in
example : output462481Full =
    ⟨462481, some 0, some "N", some "S0", some 123, some 15,
      some 138, some 3, some "2", some "2", some "Ceta__S0"⟩ := rfl

open KIP126.Computation.LinProofs.Raw.NaturalityHighStem in
example : output462481 = ⟨462481, "N", 15, 138, 3, [2], [2]⟩ := rfl

open KIP126.LinE2 in
example : True := by
  fail_if_success
    have : KIP126.Challenge2.HasCoordinates NaturalityHighStemCoordinates.source [0] := by
      exact KIP126.Interface.Solution.LinProgram.NaturalityHighStem.source_hasCoordinates
  trivial

#print axioms KIP126.LinE2.NaturalityHighStemCoordinates.source_value
#print axioms KIP126.Interface.Solution.LinProgram.NaturalityHighStem.source_hasCoordinates
#print axioms KIP126.Interface.Solution.LinProgram.NaturalityHighStem.target_hasCoordinates
#print axioms KIP126.Interface.Solution.LinProgram.Naturality.statement_of_hasDifferential
#print axioms KIP126.Interface.Solution.LinProgram.Naturality.topCell_hasDifferential_desuspendTwice
#print axioms KIP126.Interface.Solution.LinProgram.NaturalityHighStem.row462481
