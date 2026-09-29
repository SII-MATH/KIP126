import KIP126.Main.Challenge.Computation.LinProgram.Basis.Proofs
import KIP126.Main.Challenge.Computation.LinProgram.Interpretation.Basis.Proofs
import KIP126.Main.Challenge.Computation.LinProgram.Interpretation.Classes.Comparison.Proofs
import KIP126.Main.Challenge.Computation.LinProgram.Interpretation.Classes.Proofs
import KIP126.Main.Challenge.Computation.LinProgram.Interpretation.Differential.LongLayer.Cancellation.Proofs
import KIP126.Main.Challenge.Computation.LinProgram.Interpretation.Differential.LongLayer.Lifting.Proofs
import KIP126.Main.Challenge.Computation.LinProgram.Interpretation.Differential.LongLayer.Proofs
import KIP126.Main.Challenge.Computation.LinProgram.Interpretation.Differential.Proofs
import KIP126.Main.Challenge.Computation.LinProgram.Interpretation.Differentials.Proofs
import KIP126.Main.Challenge.Computation.LinProgram.Interpretation.Expressions.Proofs
import KIP126.Main.Challenge.Computation.LinProgram.Interpretation.Presentation.Proofs
import KIP126.Main.Challenge.Computation.LinProgram.Interpretation.Selected.Proofs
import KIP126.Main.Challenge.Computation.LinProgram.Interpretation.Tower.Proofs
import KIP126.Main.Challenge.Computation.LinProgram.Interpretation.Tower.SecondDifferential.Proofs
import KIP126.Main.Challenge.Computation.LinProgram.Route.Records
import KIP126.Main.Challenge.Literature.Adams.OneLine
import KIP126.Main.Challenge.Literature.EtaRows.Proofs
import KIP126.Main.Challenge.Literature.HopfCofiber.Proofs
import KIP126.Main.Challenge.Literature.Near126.Sphere.Boundaries.Proofs
import KIP126.Main.Challenge.Literature.Near126.Sphere.Conditions.Proofs
import KIP126.Main.Challenge.Literature.Near126.Sphere.Proofs
import KIP126.Main.Challenge.Literature.Route.Applicability
import KIP126.Main.Challenge.Literature.Route.Inputs
import KIP126.Main.Challenge.Literature.StandardSphere.Proofs
import Lean.Elab.Command
import Lean.Meta.Basic

/-! Kernel-elaborated signatures at the cleaned Main input boundary.
The open Challenge proofs are inspected only as statements. -/
open Lean Elab Command in
run_cmd do
  let env ← getEnv
  let pairs : List (Name × Name) := [
    (``KIP126.LinE2.dataBasis_val, ``KIP126.LinE2.Challenge.dataBasis_val),
    (``KIP126.LinE2.basisTable_correct, ``KIP126.LinE2.Challenge.basisTable_correct),
    (``KIP126.LinE2.dataBasis_ne_zero, ``KIP126.LinE2.Challenge.dataBasis_ne_zero),
    (``KIP126.LinE2.dataCoordinates_basis, ``KIP126.LinE2.Challenge.dataCoordinates_basis),
    (``KIP126.LinE2.dataCoordinates_reconstruct, ``KIP126.LinE2.Challenge.dataCoordinates_reconstruct),
    (``KIP126.LinE2.data_finrank, ``KIP126.LinE2.Challenge.data_finrank),
    (``KIP126.Classical.Adams.sphereE2Coordinates_basis, ``KIP126.Classical.Adams.Challenge.sphereE2Coordinates_basis),
    (``KIP126.Classical.Adams.linToSphereE2_dataBasis, ``KIP126.Classical.Adams.Challenge.linToSphereE2_dataBasis),
    (``KIP126.Classical.Adams.sphereE2Basis_ne_zero, ``KIP126.Classical.Adams.Challenge.sphereE2Basis_ne_zero),
    (``KIP126.Classical.Adams.sphereE2Coordinates_reconstruct, ``KIP126.Classical.Adams.Challenge.sphereE2Coordinates_reconstruct),
    (``KIP126.Classical.Adams.computedH6Square_eq_standardH6Square, ``KIP126.Classical.Adams.Challenge.computedH6Square_eq_standardH6Square),
    (``KIP126.Classical.Adams.computedH6Square_nonzeroSurvival_iff_standard, ``KIP126.Classical.Adams.Challenge.computedH6Square_nonzeroSurvival_iff_standard),
    (``KIP126.Classical.Adams.computedH6_mul_self, ``KIP126.Classical.Adams.Challenge.computedH6_mul_self),
    (``KIP126.Classical.Adams.LinE2Presentation.h6_cross_products_add_eq_zero, ``KIP126.Classical.Adams.Challenge.LinE2Presentation.h6_cross_products_add_eq_zero),
    (``KIP126.Classical.Adams.computedH6Square_d_two_eq_zero_of_boundaryLifts, ``KIP126.Classical.Adams.Challenge.computedH6Square_d_two_eq_zero_of_boundaryLifts),
    (``KIP126.Classical.Adams.computedH6Square_d_two_eq_zero_of_firstCycleProductRule, ``KIP126.Classical.Adams.Challenge.computedH6Square_d_two_eq_zero_of_firstCycleProductRule),
    (``KIP126.Classical.Adams.SphereH6LongLayerMaps.LinCompatible.cross_sum_zero, ``KIP126.Classical.Adams.Challenge.SphereH6LongLayerMaps.LinCompatible.cross_sum_zero),
    (``KIP126.Classical.Adams.computedH6Square_d_two_eq_zero_of_longLayer, ``KIP126.Classical.Adams.Challenge.computedH6Square_d_two_eq_zero_of_longLayer),
    (``KIP126.Classical.Adams.sphereE2SecondDifferential_h6_square, ``KIP126.Classical.Adams.Challenge.sphereE2SecondDifferential_h6_square),
    (``KIP126.Classical.Adams.LinE2Presentation.secondDifferential_eq_zero_iff, ``KIP126.Classical.Adams.Challenge.LinE2Presentation.secondDifferential_eq_zero_iff),
    (``KIP126.Classical.Adams.linE2_add_self_eq_zero, ``KIP126.Classical.Adams.Challenge.linE2_add_self_eq_zero),
    (``KIP126.Classical.Adams.LinE2Presentation.secondDifferential_square_eq_zero, ``KIP126.Classical.Adams.Challenge.LinE2Presentation.secondDifferential_square_eq_zero),
    (``KIP126.Classical.Adams.computedH6Square_d_two_eq_zero_of_leibniz, ``KIP126.Classical.Adams.Challenge.computedH6Square_d_two_eq_zero_of_leibniz),
    (``KIP126.Computation.LinProofs.differential_of_lookup, ``KIP126.Computation.LinProofs.Challenge.differential_of_lookup),
    (``KIP126.Computation.LinProofs.DifferentialStatement.hasDifferential, ``KIP126.Computation.LinProofs.Challenge.DifferentialStatement.hasDifferential),
    (``KIP126.Computation.LinProofs.row5541, ``KIP126.Computation.LinProofs.Challenge.row5541),
    (``KIP126.Classical.Adams.expressionOnSphere_zero, ``KIP126.Classical.Adams.Challenge.expressionOnSphere_zero),
    (``KIP126.Classical.Adams.expressionOnSphere_add, ``KIP126.Classical.Adams.Challenge.expressionOnSphere_add),
    (``KIP126.Classical.Adams.expressionOnSphere_mul, ``KIP126.Classical.Adams.Challenge.expressionOnSphere_mul),
    (``KIP126.Classical.Adams.expressionOnSphere_h6, ``KIP126.Classical.Adams.Challenge.expressionOnSphere_h6),
    (``KIP126.Classical.Adams.expressionOnSphere_h6_square, ``KIP126.Classical.Adams.Challenge.expressionOnSphere_h6_square),
    (``KIP126.Classical.Adams.linToSphere_exists_preimage, ``KIP126.Classical.Adams.Challenge.linToSphere_exists_preimage),
    (``KIP126.Classical.Adams.linToSphere_eq_iff, ``KIP126.Classical.Adams.Challenge.linToSphere_eq_iff),
    (``KIP126.Classical.Adams.linToSphere_ne_zero_iff, ``KIP126.Classical.Adams.Challenge.linToSphere_ne_zero_iff),
    (``KIP126.Classical.Adams.linToSphere_mul, ``KIP126.Classical.Adams.Challenge.linToSphere_mul),
    (``KIP126.Classical.Adams.linToSphere_product_eq, ``KIP126.Classical.Adams.Challenge.linToSphere_product_eq),
    (``KIP126.Classical.Adams.linToSphere_product_eq_zero, ``KIP126.Classical.Adams.Challenge.linToSphere_product_eq_zero),
    (``KIP126.Computation.LinProofs.Selected.d2_x125_8, ``KIP126.Computation.LinProofs.Selected.Challenge.d2_x125_8),
    (``KIP126.Computation.LinProofs.Selected.d2_h6, ``KIP126.Computation.LinProofs.Selected.Challenge.d2_h6),
    (``KIP126.Computation.LinProofs.Selected.d3_h4_x109_12, ``KIP126.Computation.LinProofs.Selected.Challenge.d3_h4_x109_12),
    (``KIP126.Computation.LinProofs.Selected.d3_h0Sq_x123_13_2, ``KIP126.Computation.LinProofs.Selected.Challenge.d3_h0Sq_x123_13_2),
    (``KIP126.Computation.LinProofs.Selected.d3_x126_4, ``KIP126.Computation.LinProofs.Selected.Challenge.d3_x126_4),
    (``KIP126.Computation.LinProofs.Selected.d7_x123_11_combination, ``KIP126.Computation.LinProofs.Selected.Challenge.d7_x123_11_combination),
    (``KIP126.Classical.Adams.sphereH6DoubleInternalE2_eq_computedH6Square, ``KIP126.Classical.Adams.Challenge.sphereH6DoubleInternalE2_eq_computedH6Square),
    (``KIP126.Classical.Adams.computedH6Square_double_representative, ``KIP126.Classical.Adams.Challenge.computedH6Square_double_representative),
    (``KIP126.Classical.Adams.computedH6Square_of_double_representative, ``KIP126.Classical.Adams.Challenge.computedH6Square_of_double_representative),
    (``KIP126.Classical.Adams.computedH6Square_nonzeroSurvival_iff_double_lifts, ``KIP126.Classical.Adams.Challenge.computedH6Square_nonzeroSurvival_iff_double_lifts),
    (``KIP126.Classical.Adams.computedH6Square_nonzeroSurvival_iff_double_connecting_lifts, ``KIP126.Classical.Adams.Challenge.computedH6Square_nonzeroSurvival_iff_double_connecting_lifts),
    (``KIP126.Classical.Adams.computedH6Square_d_two_value_of_double_lift, ``KIP126.Classical.Adams.Challenge.computedH6Square_d_two_value_of_double_lift),
    (``KIP126.Classical.Adams.computedH6Square_d_two_double_value_exists, ``KIP126.Classical.Adams.Challenge.computedH6Square_d_two_double_value_exists),
    (``KIP126.Classical.Adams.computedH6Square_d_two_eq_zero_iff_double_lift, ``KIP126.Classical.Adams.Challenge.computedH6Square_d_two_eq_zero_iff_double_lift),
    (``KIP126.Classical.Adams.computedH6Square_double_lift_five_of_leibniz, ``KIP126.Classical.Adams.Challenge.computedH6Square_double_lift_five_of_leibniz),
    (``KIP126.Computation.Route.Inputs.d3_cnu_bottom_x126_8, ``KIP126.Computation.Route.Challenge.Inputs.d3_cnu_bottom_x126_8),
    (``KIP126.Computation.Route.Inputs.d3_cnu_bottom_x126_8_2, ``KIP126.Computation.Route.Challenge.Inputs.d3_cnu_bottom_x126_8_2),
    (``KIP126.Computation.Route.Inputs.X_reaches_e6, ``KIP126.Computation.Route.Challenge.Inputs.X_reaches_e6),
    (``KIP126.Computation.Route.Inputs.W_reaches_e6, ``KIP126.Computation.Route.Challenge.Inputs.W_reaches_e6),
    (``KIP126.Computation.Route.Inputs.V_reaches_e12, ``KIP126.Computation.Route.Challenge.Inputs.V_reaches_e12),
    (``KIP126.Computation.Route.Inputs.Y_reaches_e5, ``KIP126.Computation.Route.Challenge.Inputs.Y_reaches_e5),
    (``KIP126.Computation.Route.Inputs.T_reaches_e1000, ``KIP126.Computation.Route.Challenge.Inputs.T_reaches_e1000),
    (``KIP126.Computation.Route.Inputs.d2_h6, ``KIP126.Computation.Route.Challenge.Inputs.d2_h6),
    (``KIP126.Computation.Route.Inputs.d2_x125_8, ``KIP126.Computation.Route.Challenge.Inputs.d2_x125_8),
    (``KIP126.Computation.Route.Inputs.d3_h4_x109_12, ``KIP126.Computation.Route.Challenge.Inputs.d3_h4_x109_12),
    (``KIP126.Computation.Route.Inputs.d3_h0Sq_x123_13_2, ``KIP126.Computation.Route.Challenge.Inputs.d3_h0Sq_x123_13_2),
    (``KIP126.Computation.Route.Inputs.d3_x126_4, ``KIP126.Computation.Route.Challenge.Inputs.d3_x126_4),
    (``KIP126.Computation.Route.Inputs.d7_x123_combination, ``KIP126.Computation.Route.Challenge.Inputs.d7_x123_combination),
    (``KIP126.Computation.Route.Inputs.d3_cnu_top, ``KIP126.Computation.Route.Challenge.Inputs.d3_cnu_top),
    (``KIP126.Computation.Route.Inputs.refutation_2047477, ``KIP126.Computation.Route.Challenge.Inputs.refutation_2047477),
    (``KIP126.Computation.Route.Inputs.refutation_2047478, ``KIP126.Computation.Route.Challenge.Inputs.refutation_2047478),
    (``KIP126.Computation.Route.Inputs.refutation_154532, ``KIP126.Computation.Route.Challenge.Inputs.refutation_154532),
    (``KIP126.Computation.Route.Inputs.refutation_154533, ``KIP126.Computation.Route.Challenge.Inputs.refutation_154533),
    (``KIP126.Computation.Route.Inputs.refutation_154534, ``KIP126.Computation.Route.Challenge.Inputs.refutation_154534),
    (``KIP126.Computation.Route.Inputs.refutation_154535, ``KIP126.Computation.Route.Challenge.Inputs.refutation_154535),
    (``KIP126.Computation.Route.Inputs.refutation_154536, ``KIP126.Computation.Route.Challenge.Inputs.refutation_154536),
    (``KIP126.Computation.Route.Inputs.refutation_154537, ``KIP126.Computation.Route.Challenge.Inputs.refutation_154537),
    (``KIP126.Computation.Route.Inputs.d2_h0Six_h6, ``KIP126.Computation.Route.Challenge.Inputs.d2_h0Six_h6),
    (``KIP126.Computation.Route.Inputs.d2_for_P_h2, ``KIP126.Computation.Route.Challenge.Inputs.d2_for_P_h2),
    (``KIP126.Computation.Route.Inputs.d2_for_Q_h2_first, ``KIP126.Computation.Route.Challenge.Inputs.d2_for_Q_h2_first),
    (``KIP126.Computation.Route.Inputs.d2_for_Q_h2_second, ``KIP126.Computation.Route.Challenge.Inputs.d2_for_Q_h2_second),
    (``KIP126.Classical.adamsOneLineDifferentials_h₄, ``KIP126.Classical.Challenge.adamsOneLineDifferentials_h₄),
    (``KIP126.Classical.adamsOneLineDifferentials_h₄_degrees, ``KIP126.Classical.Challenge.adamsOneLineDifferentials_h₄_degrees),
    (``KIP126.Classical.Adams.cataloguedAdamsOneLine_proof, ``KIP126.Classical.Adams.Challenge.cataloguedAdamsOneLine_proof),
    (``KIP126.Classical.Adams.cataloguedAdamsOneLine_h₄_degrees, ``KIP126.Classical.Adams.Challenge.cataloguedAdamsOneLine_h₄_degrees),
    (``KIP126.Classical.Adams.cataloguedAdamsOneLine_h₄_degrees_bound, ``KIP126.Classical.Adams.Challenge.cataloguedAdamsOneLine_h₄_degrees_bound),
    (``KIP126.Classical.ExtensionSS.EtaRowId.all_length, ``KIP126.Classical.ExtensionSS.EtaRowId.Challenge.all_length),
    (``KIP126.Classical.ExtensionSS.EtaRowId.mem_all, ``KIP126.Classical.ExtensionSS.EtaRowId.Challenge.mem_all),
    (``KIP126.Classical.ExtensionSS.EtaRowId.row_mem_etaESSDifferentials, ``KIP126.Classical.ExtensionSS.EtaRowId.Challenge.row_mem_etaESSDifferentials),
    (``KIP126.Classical.ExtensionSS.EtaRowId.range_row, ``KIP126.Classical.ExtensionSS.EtaRowId.Challenge.range_row),
    (``KIP126.Classical.ExtensionSS.EtaData.sourceClass_degree, ``KIP126.Classical.ExtensionSS.EtaData.Challenge.sourceClass_degree),
    (``KIP126.Classical.ExtensionSS.EtaData.targetClass_degree, ``KIP126.Classical.ExtensionSS.EtaData.Challenge.targetClass_degree),
    (``KIP126.Classical.ExtensionSS.EtaData.ledger_claim, ``KIP126.Classical.ExtensionSS.EtaData.Challenge.ledger_claim),
    (``KIP126.Classical.ExtensionSS.EtaData.ledger_root_eq, ``KIP126.Classical.ExtensionSS.EtaData.Challenge.ledger_root_eq),
    (``KIP126.Classical.Adams.sphereMapCofiber_first_zero, ``KIP126.Classical.Adams.Challenge.sphereMapCofiber_first_zero),
    (``KIP126.Classical.Adams.sphereMapCofiber_cells_zero, ``KIP126.Classical.Adams.Challenge.sphereMapCofiber_cells_zero),
    (``KIP126.Classical.Adams.sphereMapCofiberInclusionTower_step, ``KIP126.Classical.Adams.Challenge.sphereMapCofiberInclusionTower_step),
    (``KIP126.Computation.Near126.SphereBoundaryFacts.p_h2_is_d2_cycle, ``KIP126.Computation.Near126.Challenge.SphereBoundaryFacts.p_h2_is_d2_cycle),
    (``KIP126.Computation.Near126.SphereBoundaryFacts.q_h2_is_d2_cycle, ``KIP126.Computation.Near126.Challenge.SphereBoundaryFacts.q_h2_is_d2_cycle),
    (``KIP126.Computation.Near126.Sphere.d12_iff_differential, ``KIP126.Computation.Near126.Challenge.Sphere.d12_iff_differential),
    (``KIP126.Computation.Near126.SphereSurvivalFacts.c3_iff_not_d6, ``KIP126.Computation.Near126.Challenge.SphereSurvivalFacts.c3_iff_not_d6),
    (``KIP126.Computation.Near126.SphereSurvivalFacts.hit_t_iff_d12, ``KIP126.Computation.Near126.Challenge.SphereSurvivalFacts.hit_t_iff_d12),
    (``KIP126.Computation.Near126.SphereDifferentialFacts.d3_x126_6_ne_zero, ``KIP126.Computation.Near126.Challenge.SphereDifferentialFacts.d3_x126_6_ne_zero),
    (``KIP126.Computation.Near126.SphereSurvivalFacts.y_not_hit_on_page, ``KIP126.Computation.Near126.Challenge.SphereSurvivalFacts.y_not_hit_on_page),
    (``KIP126.Literature.Route.NuCofiberApplicability.exponent_sum, ``KIP126.Literature.Route.Challenge.NuCofiberApplicability.exponent_sum),
    (``KIP126.Literature.Route.Inputs.differentialLift, ``KIP126.Literature.Route.Challenge.Inputs.differentialLift),
    (``KIP126.Literature.Route.Inputs.nuTriangle, ``KIP126.Literature.Route.Challenge.Inputs.nuTriangle),
    (``KIP126.Classical.Adams.sphereH6Square_ne_zero, ``KIP126.Classical.Adams.Challenge.sphereH6Square_ne_zero)]
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
