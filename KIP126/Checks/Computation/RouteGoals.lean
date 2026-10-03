import KIP126.Main.Solution.Computation.Route
import KIP126.Main.Solution.Computation.Lambda
import KIP126.Main.Solution.Route.Selected
import Lean.Elab.Command

/-! The conditional Main route deductions live only in Solution. Check their
availability and ownership without a duplicate statement track. Their imports
must not include Challenge placeholders; unfinished Solution proofs remain
visible in Solution. FixedFinal checks the unique final Challenge/Solution pair. -/
open Lean Elab Command in
run_cmd do
  let env ← getEnv
  for m in env.allImportedModuleNames do
    if (`KIP126.Main.Challenge).isPrefixOf m ||
        (`KIP126.Interface.Challenge).isPrefixOf m ||
        (`KIP126.Def.Challenge).isPrefixOf m then
      throwError "Solution imports a Challenge placeholder module: {m}"
  let solutions : List Name := [
    ``KIP126.Computation.Route.high125_detector_nonzero,
    ``KIP126.Main.Solution.Route.cnu_d3,
    ``KIP126.Main.Solution.Route.lambda_injective_125_130,
    ``KIP126.Main.Solution.Route.proposition_7_8,
    ``KIP126.Main.Solution.Route.proposition_7_9,
    ``KIP126.Computation.Route.classical_sphere_separated_of_strong_convergence,
    ``KIP126.Computation.Route.sphere_page_zero_above_uniform_bound,
    ``KIP126.Computation.Route.sphere_page_zero_stem125_tail,
    ``KIP126.Computation.Route.late_outgoing_target_zero,
    ``KIP126.Computation.Route.permanent_cycle_of_reaches1000,
    ``KIP126.Computation.Route.nonzero_permanent_of_survives1000,
    ``KIP126.Computation.Route.named_survive1000,
    ``KIP126.Computation.Route.d3_x1266_candidates,
    ``KIP126.Computation.Route.high125_component,
    ``KIP126.Computation.Route.stem125_e5_zero_finite,
    ``KIP126.Computation.Route.stem125_e5_high_exhaustion,
    ``KIP126.Computation.Route.sphere_facts,
    ``KIP126.Computation.Route.cnu_d3,
    ``KIP126.Computation.Route.cnu_target_through5,
    ``KIP126.Computation.Route.route_expression_labels,
    ``KIP126.Computation.Route.high125_label,
    ``KIP126.Computation.Route.classical_stem125_filtration26_zero,
    ``KIP126.Computation.Route.high125_detected_choice_unique,
    ``KIP126.Computation.Route.no_outgoing_stem63_nonpositive,
    ``KIP126.Computation.Route.no_outgoing_stem125_low,
    ``KIP126.Computation.Route.no_outgoing_stem126_af3,
    ``KIP126.Computation.Route.lambda_injective_of_source,
    ``KIP126.Computation.Route.lambda_powers_injective_of_source_halfplane,
    ``KIP126.Computation.Route.lambda_powers_injective_62_64,
    ``KIP126.Computation.Route.lambda_powers_injective_124_128,
    ``KIP126.Computation.Route.lambda_injective_125_130,
    ``KIP126.Computation.Route.realization_injective_62_64,
    ``KIP126.Computation.Route.realization_injective_124_128,
    ``KIP126.Computation.Route.bx_finite_lambda_normalization,
    ``KIP126.Computation.Route.theta5_choice_order_two,
    ``KIP126.Computation.Route.lambda_kills_realization_kernel_62_71,
    ``KIP126.Computation.Route.two_torsion_62_70]
  for solution in solutions do
    let some (.thmInfo _) := env.find? solution
      | throwError "missing Solution theorem: {solution}"
    let some moduleIdx := env.getModuleIdxFor? solution
      | throwError "missing Solution module: {solution}"
    let owner := env.header.moduleNames[moduleIdx]!
    unless (`KIP126.Main.Solution).isPrefixOf owner do
      throwError "Main theorem moved outside Solution: {solution}: {owner}"
