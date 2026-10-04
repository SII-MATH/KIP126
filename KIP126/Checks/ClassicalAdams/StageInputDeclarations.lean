import KIP126.Interface.Challenge.Challenge2
import KIP126.Interface.Solution.Challenge2
import KIP126.Interface.Solution.LinProgram.BasisTable
import KIP126.Main.Solution.Computation.LinProgram.Basis.Proofs
import KIP126.Def.StageInput.Milnor
import KIP126.Main.Solution.Computation.LinProgram.Interpretation.Differentials.Certificate
import Lean.Elab.Command

/-!
Check the single direct Challenge2 input and its independent producer. The
foundation obligation is a field of this package, and fixed objects remain
Def-owned. No second stage assumption, source wrapper or dummy goal is needed.
-/

example (c : KIP126.Challenge2) : KIP126.Classical.Adams.BHSObjectApplicability
    KIP126.Def.fixedImplementation.foundationInput.countableProducts
    KIP126.Def.fixedImplementation.foundationInput.hf2.unit
    (KIP126.StableHomotopy.SphereSpectrum
      (C := KIP126.Def.fixedImplementation.foundationInput.Spectrum)) :=
  c.foundation.sphereApplicability

example : KIP126.Def.StageInput.witness = KIP126.Def.fixedImplementation := rfl
example : KIP126.Main.StageInput.witness = KIP126.Main.Axiom.challenge2 := rfl
example : KIP126.Interface.Solution.challenge2.foundation =
    KIP126.Interface.Solution.foundationInputs := rfl

open Lean Elab Command in
run_cmd do
  let env ← getEnv
  for name in [``KIP126.Def.StageInput.witness,
      ``KIP126.Main.StageInput.witness,
      ``KIP126.Main.StageInput.literature,
      ``KIP126.Main.StageInput.computation,
      ``KIP126.Classical.Adams.standardFoundation,
      ``KIP126.Classical.Adams.standardMilnorCooperations,
      ``KIP126.Classical.Adams.linE2Presentation] do
    let some (.defnInfo _) := env.find? name
      | throwError "compatibility interface must be a definition: {name}"
  for (witness, input) in [
      (``KIP126.Main.StageInput.witness, ``KIP126.Main.Axiom.challenge2)] do
    let axioms ← liftCoreM (collectAxioms witness)
    unless axioms.contains input do
      throwError "stage witness does not consume its matching input: {witness}"
  let foundationAxioms ← liftCoreM (collectAxioms ``KIP126.Def.StageInput.witness)
  if foundationAxioms.contains ``KIP126.Main.Axiom.challenge2 then
    throwError "Def's fixed implementation depends on a consuming stage axiom"
  let some (.thmInfo _) := env.find? ``KIP126.Computation.LinProofs.sphereTable_sound
    | throwError "sphereTable_sound must be a theorem projected from Challenge 2"

open KIP126.Computation.LinProofs in
example : ∀ (shard offset : Nat) (row : DifferentialRow),
    RawData.lookup shard offset = some row → DifferentialStatement row :=
  sphereTable_sound

-- The independent table certification remains available only from Solution.
open Lean Elab Command in
run_cmd do
  let env ← getEnv
  for removed in [`KIP126.Challenge1, `KIP126.Interface.Axiom.challenge1,
      `KIP126.Interface.Challenge.challenge2,
      `KIP126.External.ExternalResult, `KIP126.External.ExternalEvidence,
      `KIP126.External.SourceId,
      `KIP126.Challenge2.GeneralizedLeibnizLaw,
      `KIP126.Challenge2.GeneralizedMahowaldLaw,
      `KIP126.Challenge2.FinitePageExtensionStretchingLaw] do
    if env.contains removed then
      throwError "obsolete foundation/computation classification: {removed}"
  let some (.thmInfo _) := env.find? ``KIP126.Interface.Solution.LinE2.basisTable_correct
    | throwError "missing independent basis certification producer"
  let axs ← liftCoreM (collectAxioms ``KIP126.Interface.Solution.LinE2.basisTable_correct)
  if axs.contains ``KIP126.Main.Axiom.challenge2 then
    throwError "basis producer depends on its own stage consumer axiom"

example (s t : ℕ) (ht : t ≤ 261) : KIP126.LinE2.BasisTableCorrect s t :=
  KIP126.Interface.Solution.LinE2.basisTable_correct s t ht

example (c : KIP126.Challenge2) (s t : ℕ) (ht : t ≤ 261)
    (i : KIP126.LinE2.BasisIndex s t) :
    ((c.presentation.comparison s t ht).symm
      ((c.sphereBasis.coordinates s t ht).symm (Finsupp.single i 1))).val =
        KIP126.LinE2.basisValue (KIP126.LinE2.basisRowAt s t i) :=
  c.sphereBasis.csv_values s t ht i

-- Both route parts are projections of one witness, never separate choices.
open KIP126.Main.StageInput in
example : routeComputation = witness.computation.route := rfl

open KIP126.Main.StageInput in
example : routeLiterature = KIP126.Literature.Route.Statements.toInputs
    routeModel routeEta tmfLabels witness.literature.route witness.applications.route routeTmf := rfl

open KIP126 KIP126.Classical.Adams KIP126.Main.StageInput in
example (s t : ℕ) (ht : t ≤ 261) (x : LinE2.E2At s t) :
    routeComputation.realization.sphere s t x = witness.presentation.comparison s t ht x :=
  witness.computation.route_presentation s t ht x

open KIP126 KIP126.Classical.Adams in
example : Kervaire.Route.PermanentH6Square standardMilnorCooperations =
    Core.SpectralSequence.NonzeroSurvival sphereAdamsData (2,128) standardH6Square := rfl

open Lean Elab Command in
run_cmd do
  let env ← getEnv
  let producer := ``KIP126.Interface.Solution.challenge2
  let consumer := ``KIP126.Main.Axiom.challenge2
  let some (.defnInfo p) := env.find? producer
    | throwError "missing direct package constructor: {producer}"
  let some (.axiomInfo a) := env.find? consumer
    | throwError "missing direct package input: {consumer}"
  unless p.levelParams.isEmpty && a.levelParams.isEmpty do
    throwError "project input acquired universe parameters"
  unless p.type == a.type && p.type == mkConst ``KIP126.Challenge2 do
    throwError "producer and consumer must have precisely type Challenge2"
  for root in [producer, ``KIP126.Interface.Solution.foundationInputs,
      ``KIP126.Interface.Solution.standardSphereApplicability] do
    if (← liftCoreM (collectAxioms root)).contains consumer then
      throwError "producer depends on the consumer axiom: {root}"
  -- The aggregate's field projections retain their actual proofs in Solution;
  -- their proof debt belongs to the aggregate producer, not a new stage axiom.
  for projection in [``KIP126.Interface.Solution.literatureInterface,
      ``KIP126.Interface.Solution.computationInterface] do
    let some (.thmInfo p) := env.find? projection
      | throwError "missing Solution projection: {projection}"
    if p.value.getUsedConstants.contains ``sorryAx then
      throwError "stage projection lost its existing proof: {projection}"
  -- A producer may use contract definitions, never the final goal placeholder.
  let mut todo : Array Name := #[``KIP126.Interface.Solution.challenge2,
    ``KIP126.Interface.Solution.literatureInterface,
    ``KIP126.Interface.Solution.computationInterface,
    ``KIP126.Interface.Solution.LinE2.basisTable_correct]
  let mut seen : NameSet := {}
  while !todo.isEmpty do
    let name := todo.back!
    todo := todo.pop
    if seen.contains name then continue
    seen := seen.insert name
    let some info := env.find? name | throwError "missing producer dependency: {name}"
    if let some moduleIdx := env.getModuleIdxFor? name then
      let owner := env.header.moduleNames[moduleIdx]!
      if (`KIP126.Main.Challenge).isPrefixOf owner then
        throwError "stage producer borrows an intentional goal proof: {name}: {owner}"
      unless (`KIP126).isPrefixOf owner do continue
    todo := todo ++ info.type.getUsedConstants
    if let some value := info.value? then
      todo := todo ++ value.getUsedConstants
  for name in [``KIP126.Main.StageInput.routeModel,
      ``KIP126.Main.StageInput.routeLiterature, ``KIP126.Main.StageInput.routeComputation] do
    let some (.defnInfo _) := env.find? name
      | throwError "route inputs must only be definitions: {name}"

example : ∃ routeInput : KIP126.Classical.Adams.StandardRouteInput,
    ∃ modelBindings : KIP126.Challenge2.ModelBindings routeInput,
      Nonempty (KIP126.Challenge2.LiteratureInterface routeInput modelBindings) :=
  KIP126.Interface.Solution.literatureInterface

example : ∃ routeInput : KIP126.Classical.Adams.StandardRouteInput,
    ∃ modelBindings : KIP126.Challenge2.ModelBindings routeInput,
    ∃ presentation : KIP126.Classical.Adams.LinE2Presentation,
      Nonempty (KIP126.Challenge2.ComputationInterface routeInput modelBindings presentation) :=
  KIP126.Interface.Solution.computationInterface

-- The upstream geometry delivery must stay correlated with the same witness.
open KIP126.Main.StageInput in
example : geometryModel = witness.modelBindings.geometry := rfl

example (c : KIP126.Challenge2) :
    ∀ j : ℕ, 1 ≤ j → j ≤ 5 → ∃ M,
      c.modelBindings.geometry.dimension M = 2 ^ (j + 1) - 2 ∧
      c.modelBindings.geometry.kervaireOne M :=
  c.literature.geometry.low_dimensions

example (c : KIP126.Challenge2) :
    ∀ j : ℕ, 7 ≤ j → ¬ ∃ M,
      c.modelBindings.geometry.dimension M = 2 ^ (j + 1) - 2 ∧
      c.modelBindings.geometry.kervaireOne M :=
  c.literature.geometry.high_nonexistence

example (c : KIP126.Challenge2) :
    KIP126.Challenge2.BrowderInterface
      c.modelBindings.geometry.dimension c.modelBindings.geometry.kervaireOne :=
  c.literature.geometry.browder
