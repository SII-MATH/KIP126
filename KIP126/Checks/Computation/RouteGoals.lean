import KIP126.Main.Solution.Computation.Route
import KIP126.Main.Solution.Computation.Lambda
import KIP126.Main.Challenge.Computation.Route
import KIP126.Main.Challenge.Computation.Lambda
import KIP126.Main.Solution.Route.Selected
import KIP126.Main.Challenge.Route.Selected
import KIP126.Main.Solution.Final.h6_sq_permanent
import KIP126.Main.Challenge.Final.h6_sq_permanent
import Lean.Elab.Command
import Lean.Meta.Basic

/-! Complete signature checks for the conditional Main route deductions.
The Challenge track stays open; neither Solution imports it. This is a
statement/dependency check, not a proof-completion audit. -/
open Lean Elab Command in
run_cmd do
  let env ← getEnv
  let pairs : List (Name × Name) := [
    (``KIP126.Computation.Route.high125_detector_nonzero, ``KIP126.Computation.Route.Challenge.high125_detector_nonzero),
    (``KIP126.Main.Solution.Route.cnu_d3, ``KIP126.Main.Challenge.Route.cnu_d3),
    (``KIP126.Main.Solution.Route.lambda_injective_125_130, ``KIP126.Main.Challenge.Route.lambda_injective_125_130),
    (``KIP126.Main.Solution.Route.proposition_7_8, ``KIP126.Main.Challenge.Route.proposition_7_8),
    (``KIP126.Main.Solution.Route.proposition_7_9, ``KIP126.Main.Challenge.Route.proposition_7_9),
    (``KIP126.Solution.Final.H6SquarePermanent.h6_sq_permanent, ``KIP126.Challenge.Final.H6SquarePermanent.h6_sq_permanent),
    (``KIP126.Computation.Route.classical_sphere_separated_of_strong_convergence, ``KIP126.Computation.Route.Challenge.classical_sphere_separated_of_strong_convergence),
    (``KIP126.Computation.Route.sphere_page_zero_above_uniform_bound, ``KIP126.Computation.Route.Challenge.sphere_page_zero_above_uniform_bound),
    (``KIP126.Computation.Route.sphere_page_zero_stem125_tail, ``KIP126.Computation.Route.Challenge.sphere_page_zero_stem125_tail),
    (``KIP126.Computation.Route.late_outgoing_target_zero, ``KIP126.Computation.Route.Challenge.late_outgoing_target_zero),
    (``KIP126.Computation.Route.permanent_cycle_of_reaches1000, ``KIP126.Computation.Route.Challenge.permanent_cycle_of_reaches1000),
    (``KIP126.Computation.Route.nonzero_permanent_of_survives1000, ``KIP126.Computation.Route.Challenge.nonzero_permanent_of_survives1000),
    (``KIP126.Computation.Route.named_survive1000, ``KIP126.Computation.Route.Challenge.named_survive1000),
    (``KIP126.Computation.Route.d3_x1266_candidates, ``KIP126.Computation.Route.Challenge.d3_x1266_candidates),
    (``KIP126.Computation.Route.high125_component, ``KIP126.Computation.Route.Challenge.high125_component),
    (``KIP126.Computation.Route.stem125_e5_zero_finite, ``KIP126.Computation.Route.Challenge.stem125_e5_zero_finite),
    (``KIP126.Computation.Route.stem125_e5_high_exhaustion, ``KIP126.Computation.Route.Challenge.stem125_e5_high_exhaustion),
    (``KIP126.Computation.Route.sphere_facts, ``KIP126.Computation.Route.Challenge.sphere_facts),
    (``KIP126.Computation.Route.cnu_d3, ``KIP126.Computation.Route.Challenge.cnu_d3),
    (``KIP126.Computation.Route.cnu_target_through5, ``KIP126.Computation.Route.Challenge.cnu_target_through5),
    (``KIP126.Computation.Route.route_expression_labels, ``KIP126.Computation.Route.Challenge.route_expression_labels),
    (``KIP126.Computation.Route.high125_label, ``KIP126.Computation.Route.Challenge.high125_label),
    (``KIP126.Computation.Route.classical_stem125_filtration26_zero, ``KIP126.Computation.Route.Challenge.classical_stem125_filtration26_zero),
    (``KIP126.Computation.Route.high125_detected_choice_unique, ``KIP126.Computation.Route.Challenge.high125_detected_choice_unique),
    (``KIP126.Computation.Route.no_outgoing_stem63_nonpositive, ``KIP126.Computation.Route.Challenge.no_outgoing_stem63_nonpositive),
    (``KIP126.Computation.Route.no_outgoing_stem125_low, ``KIP126.Computation.Route.Challenge.no_outgoing_stem125_low),
    (``KIP126.Computation.Route.no_outgoing_stem126_af3, ``KIP126.Computation.Route.Challenge.no_outgoing_stem126_af3),
    (``KIP126.Computation.Route.lambda_injective_of_source, ``KIP126.Computation.Route.Challenge.lambda_injective_of_source),
    (``KIP126.Computation.Route.lambda_powers_injective_of_source_halfplane, ``KIP126.Computation.Route.Challenge.lambda_powers_injective_of_source_halfplane),
    (``KIP126.Computation.Route.lambda_powers_injective_62_64, ``KIP126.Computation.Route.Challenge.lambda_powers_injective_62_64),
    (``KIP126.Computation.Route.lambda_powers_injective_124_128, ``KIP126.Computation.Route.Challenge.lambda_powers_injective_124_128),
    (``KIP126.Computation.Route.lambda_injective_125_130, ``KIP126.Computation.Route.Challenge.lambda_injective_125_130),
    (``KIP126.Computation.Route.realization_injective_62_64, ``KIP126.Computation.Route.Challenge.realization_injective_62_64),
    (``KIP126.Computation.Route.realization_injective_124_128, ``KIP126.Computation.Route.Challenge.realization_injective_124_128),
    (``KIP126.Computation.Route.bx_finite_lambda_normalization, ``KIP126.Computation.Route.Challenge.bx_finite_lambda_normalization),
    (``KIP126.Computation.Route.theta5_choice_order_two, ``KIP126.Computation.Route.Challenge.theta5_choice_order_two),
    (``KIP126.Computation.Route.lambda_kills_realization_kernel_62_71, ``KIP126.Computation.Route.Challenge.lambda_kills_realization_kernel_62_71),
    (``KIP126.Computation.Route.two_torsion_62_70, ``KIP126.Computation.Route.Challenge.two_torsion_62_70)]

  for (solution, challenge) in pairs do
    let some si := env.find? solution | throwError "missing solution: {solution}"
    let some (.thmInfo ci) := env.find? challenge | throwError "missing challenge: {challenge}"
    unless si.levelParams.length == ci.levelParams.length do
      throwError "universe count differs: {solution} / {challenge}"
    let ct := ci.type.instantiateLevelParams ci.levelParams (si.levelParams.map Level.param)
    unless ← liftTermElabM (Lean.Meta.isDefEq si.type ct) do
      throwError "signature differs: {solution} / {challenge}"
    unless ci.value.getUsedConstants.contains ``sorryAx do
      throwError "Challenge must remain open: {challenge}"
