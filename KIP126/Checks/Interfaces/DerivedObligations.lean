import KIP126.Def.Solution.FoundationConsequences
import KIP126.Def.Solution.Toda
import KIP126.Interface.Solution.InternalPages
import KIP126.Interface.Solution.InternalNaturality
import KIP126.Interface.Solution.Cobar
import KIP126.Def.ClassicalAdams.SphereClasses.Hi.Internal.Proofs
import KIP126.Def.ClassicalAdams.MilnorCohomology.Proofs
import KIP126.Def.Synthetic.QuotientTower.Proofs
import KIP126.Def.Synthetic.QuotientRestrictions.Proofs
import KIP126.Def.ClassicalAdams.Moss.Detection.Proofs
import KIP126.Def.ClassicalAdams.Moss.Crossing.Proofs
import KIP126.Def.Synthetic.PageExtension.Proofs
import KIP126.Def.Solution.Synthetic.Localization
import KIP126.Interface.Solution.SyntheticEInfty
import KIP126.Interface.Solution.PageExtensionAmbiguity
import KIP126.Def.ClassicalAdams.Moss.Composition.Proofs
import KIP126.Def.ClassicalAdams.TowerLongLayer.Pairing.Mixed.Internal.Proofs
import KIP126.Def.Synthetic.PageExtension.Crossing.Proofs
import KIP126.Def.Synthetic.PageExtension.Ambiguity.Proofs
import Lean.Elab.Command

/-! These particular generic obligations are proved from explicit mathematical
data. They must not acquire a Challenge placeholder, a fixed-model axiom or a
native computation axiom through a future migration. This is deliberately not
a claim that the whole Challenge package has been constructed. -/

open Lean Elab Command in
run_cmd do
  for name in [``KIP126.Classical.Adams.AdamsFiltrationAtLeast.hasMod2ZeroFactorization,
      ``KIP126.Def.Solution.cobar_square_zero,
      ``KIP126.Def.Solution.adams_filtration_decomposition,
      ``KIP126.Def.Solution.todaInterface,
      ``KIP126.Interface.Solution.pageCalculus,
      ``KIP126.Interface.Solution.representativeCalculus,
      ``KIP126.Interface.Solution.paperCycleCalculus,
      ``KIP126.Interface.Solution.internalNaturality,
      ``KIP126.Interface.Solution.cobarE2Comparison,
      ``KIP126.Interface.Solution.cobarCupCalculus,
      ``KIP126.Def.Solution.lambda_localization_unit,
      ``KIP126.Def.Solution.nu_realization_recovery,
      ``KIP126.Interface.Solution.syntheticEInfty_lambda_nu_surjective,
      ``KIP126.Interface.Solution.syntheticEInfty_lambda_finite_surjective,
      ``KIP126.Interface.Solution.syntheticEInfty_rho_finite_injective,
      ``KIP126.Interface.Solution.syntheticEInfty_rho_nu_injective,
      ``KIP126.Interface.Solution.syntheticEInfty_nu_subsingleton_of_outside,
      ``KIP126.Interface.Solution.syntheticEInfty_finite_subsingleton_of_outside,
      ``KIP126.Interface.Solution.finitePageExtensionTargetCoset,
      ``KIP126.Interface.Solution.finitePageExtensionEssential,
      ``KIP126.Interface.Solution.infinitePageExtensionTargetCoset,
      ``KIP126.Interface.Solution.infinitePageExtensionEssential,
      ``KIP126.Classical.Adams.PageRepresentatives.cycles_antitone,
      ``KIP126.Classical.Adams.PageRepresentatives.boundaries_le_permanentCycles,
      ``KIP126.Classical.Adams.PageRepresentatives.quotientMap_boundary_surjective,
      ``KIP126.Classical.Adams.PageRepresentatives.permanentToFinite_injective,
      ``KIP126.Classical.Adams.Moss.stageComposition_comparison,
      ``KIP126.Classical.Adams.Moss.stageComposition_zero_name,
      ``KIP126.Classical.Adams.MixedAdamsLongLayerPairing.onInternalPage_long,
      ``KIP126.Classical.Adams.MixedAdamsLongLayerPairing.onInternalPage_unique,
      ``KIP126.Synthetic.PageExtension.FinitePageExtension.noCrossing_page_two,
      ``KIP126.Synthetic.PageExtension.InfinitePageExtension.noCrossing_of_length_le_exponent,
      ``KIP126.Synthetic.PageExtension.FiniteExtensionWitness.targetCoset_eq,
      ``KIP126.Synthetic.PageExtension.InfiniteExtensionWitness.essential_iff_not_mem_ambiguity,
      ``KIP126.Classical.Adams.MilnorCohomology.comparison_hi,
      ``KIP126.Classical.Adams.MilnorCohomology.comparison_hiSquare,
      ``KIP126.Synthetic.Context.lambdaPow_naturality,
      ``KIP126.Synthetic.Context.XModLambdaN.incl_naturality,
      ``KIP126.Synthetic.Context.XModLambdaN.proj_naturality,
      ``KIP126.Synthetic.Context.lambdaPow_add,
      ``KIP126.Synthetic.Context.XModLambdaN.incl_restriction,
      ``KIP126.Synthetic.Context.XModLambdaN.restriction_proj,
      ``KIP126.Classical.Adams.Moss.mappingSequence,
      ``KIP126.Classical.Adams.Moss.mappingHomotopyEquiv,
      ``KIP126.Classical.Adams.Moss.mappingFiltration_image,
      ``KIP126.Classical.Adams.Moss.towerLift_of_detects,
      ``KIP126.Classical.Adams.Moss.noMossCrossing_of_filtration_le,
      ``KIP126.Synthetic.PageExtension.FiniteExtensionWitness.length_le_page,
      ``KIP126.Synthetic.PageExtension.FiniteExtensionWitness.essential_iff_zero_not_mem_targetCoset,
      ``KIP126.Synthetic.PageExtension.InfiniteExtensionWitness.essential_iff_zero_not_mem_targetCoset,
      ``KIP126.Classical.Adams.Sphere.Internal.hi,
      ``KIP126.Classical.Adams.Sphere.Internal.hiSquare,
      ``KIP126.Classical.Adams.MilnorCohomology.boundaries_le_cycles,
      ``KIP126.Classical.Adams.MilnorCohomology.classOf_eq_iff,
      ``KIP126.Classical.Adams.MilnorCohomology.hiSquare_six_ne_zero] do
    let axioms ← liftCoreM (collectAxioms name)
    for axiomName in axioms do
      unless [``propext, ``Classical.choice, ``Quot.sound].contains axiomName do
        throwError "derived interface used an unproved input: {name}: {axiomName}"
