import KIP126.Interface.Solution.FiniteCoherentPageExtension
import KIP126.Def.ClassicalAdams.Moss.Composition.LongLayer.Two.Cycles.Data
import KIP126.Def.ClassicalAdams.Moss.Composition.Layer.Boundary.Proofs
import KIP126.Def.ClassicalAdams.Moss.Composition.Transition.Successor.Proofs
import KIP126.Def.ClassicalAdams.Moss.Composition.LongLayer.Two.Vanishing.Proofs
import KIP126.Def.SpectralSequence.FilteredComplex.Solutions.AffineRestriction.Proofs
import KIP126.Interface.Solution.CoherentPageExtension
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
import KIP126.Interface.Solution.CanonicalPageExtension
import KIP126.Def.Synthetic.QuotientFunctor.Proofs
import KIP126.Def.ClassicalAdams.Moss.Composition.Layer.Proofs
import KIP126.Def.ClassicalAdams.Moss.Composition.Transition.Proofs
import KIP126.Def.ClassicalAdams.Moss.Composition.LongLayer.Proofs
import KIP126.Def.ClassicalAdams.Moss.Composition.LongLayer.One.Proofs
import KIP126.Def.ClassicalAdams.Moss.Composition.LongLayer.Two.Proofs
import KIP126.Def.SpectralSequence.BoundedExtension.Square.Construction.Data
import KIP126.Def.SpectralSequence.FilteredComplex.Solutions.Restriction.Proofs
import KIP126.Def.SpectralSequence.FilteredComplex.Solutions.Obstruction.Proofs
import KIP126.Def.SpectralSequence.FilteredComplex.Solutions.Page.Converse.Proofs
import KIP126.Def.Synthetic.ExtensionSS.Square.Construction.Data
import KIP126.Def.Synthetic.ExtensionSS.Solutions.Proofs
import KIP126.Def.Synthetic.PageExtension.Solutions.Proofs
import KIP126.Def.Synthetic.PageExtension.Solutions.Coset.Proofs
import KIP126.Interface.Solution.PageExtensionSolutions
import Lean.Elab.Command

/-! These particular generic obligations are proved from explicit mathematical
data. They must not acquire a Challenge placeholder, a fixed-model axiom or a
native computation axiom through a future migration. This is deliberately not
a claim that the whole Challenge package has been constructed. -/

open Lean Elab Command in
run_cmd do
  for name in [``KIP126.Core.InverseSequence.exists_compatible_of_finite,
      ``KIP126.Core.ModuleCat.freeRankOne_eval_one_injective,
      ``KIP126.Core.ModuleCat.finite_freeRankOne_hom,
      ``KIP126.Core.SpectralSequence.FilteredComplex.Solutions.source_ambient_injective,
      ``KIP126.Core.SpectralSequence.FilteredComplex.Solutions.finite_of_finite_source_hom,
      ``KIP126.StableHomotopy.finite_hom_middle_of_distinguished,
      ``KIP126.Synthetic.Context.FiniteLambdaQuotientTower.finite_biHom,
      ``KIP126.Synthetic.SpectralSequence.SyntheticExtensionData.finite_solutions_of_finite_source,
      ``KIP126.Synthetic.PageExtension.NormalizedPageFamily.finite_finiteSolutions_of_finite_source,
      ``KIP126.Synthetic.PageExtension.NormalizedPageFamily.finite_permanentFiniteSolutions_of_finite_source,
      ``KIP126.Interface.Solution.nonempty_coherentPageExtensionSolutions_of_finite,
      ``KIP126.Interface.Solution.nonempty_coherentPageExtensionSolutions_of_finite_source,
      ``KIP126.Interface.Solution.finite_normalizedSourceHomotopy_of_firstQuotientComparison,
      ``KIP126.Interface.Solution.nonempty_coherentPageExtensionSolutions_of_finite_e2,
      ``KIP126.Classical.Adams.Moss.longLayerTwoComposition,
      ``KIP126.Classical.Adams.Moss.longLayerTwoPairing,
      ``KIP126.Classical.Adams.Moss.longLayerTwoComposition_projection,
      ``KIP126.Classical.Adams.Moss.longLayerTwoPairing_projection,
      ``KIP126.Classical.Adams.Moss.firstComposition_mem_cycles_two,
      ``KIP126.Classical.Adams.Moss.twoCycleComposition,
      ``KIP126.Classical.Adams.Moss.stageComposition_δ_left,
      ``KIP126.Classical.Adams.Moss.layerComposition_ι_right_comparison,
      ``KIP126.Classical.Adams.Moss.layerComposition_ι_right_δ_comparison,
      ``KIP126.Classical.Adams.Moss.layerComposition_ι_right_δ,
      ``KIP126.Classical.Adams.Moss.stageComposition_succ_comparison,
      ``KIP126.Interface.Solution.restrictPermanentFiniteSolution_surjective_iff_differences_surjective,
      ``KIP126.Interface.Solution.exists_coherentPageExtensionSolutions_of_differences_surjective,
      ``KIP126.Classical.Adams.Moss.coefficientPairing_precomp,
      ``KIP126.Classical.Adams.Moss.coefficientPairing_postcomp,
      ``KIP126.Classical.Adams.Moss.coefficientPairing_innerUnit,
      ``KIP126.Classical.Adams.Moss.coefficientPairing_preserves_unit_equalizer,
      ``KIP126.Classical.Adams.Moss.firstBoundary_eq_zero_iff_unit_equalizer,
      ``KIP126.Classical.Adams.Moss.coefficientPairing_firstBoundary_eq_zero,
      ``KIP126.Classical.Adams.Moss.layerFirstBoundary_comparison,
      ``KIP126.Classical.Adams.Moss.longLayerTwoProjection_firstBoundary_eq_zero,
      ``KIP126.Classical.Adams.Moss.layerFirstBoundary_eq_zero_iff_unit_equalizer,
      ``KIP126.Classical.Adams.Moss.layerComposition_firstBoundary_eq_zero,
      ``KIP126.Classical.Adams.Moss.longLayerTwoCompositionObstruction_eq_zero,
      ``KIP126.Classical.Adams.Moss.longLayerTwoComposition_exists,
      ``KIP126.Core.InverseSequence.exists_compatible_of_surjective,
      ``KIP126.Interface.Solution.exists_coherentPageExtensionSolutions_of_surjective,
      ``KIP126.Interface.Solution.nonempty_coherentPageExtensionSolutions_of_surjective,
      ``KIP126.Core.SpectralSequence.FilteredComplex.Solutions.restrict_displacement,
      ``KIP126.Core.SpectralSequence.FilteredComplex.Solutions.restrict_surjective_iff_differences_surjective,
      ``KIP126.Core.SpectralSequence.FilteredComplex.Solutions.forall_obstruction_eq_zero_iff_surjective,
      ``KIP126.Core.SpectralSequence.FilteredComplex.Solutions.forall_obstruction_eq_zero_iff_differences_surjective,
      ``KIP126.Classical.Adams.AdamsFiltrationAtLeast.hasMod2ZeroFactorization,
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
      ``KIP126.Interface.Solution.finiteLambdaTarget_eq_zero_iff,
      ``KIP126.Interface.Solution.infiniteLambdaTarget_eq_zero_iff,
      ``KIP126.Interface.Solution.finitePageExtensionBoundaryKernel,
      ``KIP126.Interface.Solution.infinitePageExtensionBoundaryKernel,
      ``KIP126.Interface.Solution.canonicalPageExtensionTargets_comparison,
      ``KIP126.Interface.Solution.canonicalFinitePageExtensionBoundaryKernel,
      ``KIP126.Interface.Solution.canonicalInfinitePageExtensionBoundaryKernel,
      ``KIP126.Interface.Solution.canonicalFinitePageExtensionTargetCoset,
      ``KIP126.Interface.Solution.canonicalInfinitePageExtensionTargetCoset,
      ``KIP126.Classical.Adams.PageRepresentatives.finiteTopEquiv,
      ``KIP126.Classical.Adams.PageRepresentatives.permanentTopEquiv,
      ``KIP126.Classical.Adams.Moss.layerComposition_ι,
      ``KIP126.Classical.Adams.Moss.stageComposition_step_left,
      ``KIP126.Classical.Adams.Moss.stageComposition_step_right,
      ``KIP126.Classical.Adams.Moss.longLayerComposition_exists_iff_boundaryLift,
      ``KIP126.Classical.Adams.Moss.firstQuotientPairing_exists,
      ``KIP126.Classical.Adams.Moss.longLayerProjectedComposition_ι,
      ``KIP126.Classical.Adams.Moss.longLayerCompositionBoundary_ι,
      ``KIP126.Classical.Adams.Moss.longLayerCompositionBoundary_rightTower_factors,
      ``KIP126.Classical.Adams.Moss.longLayerCompositionBoundary_leftTower_factors,
      ``KIP126.Classical.Adams.Moss.longLayerTwoComposition_exists_iff_obstruction_eq_zero,
      ``KIP126.Classical.Adams.Moss.longLayerTwoCompositionObstruction_ι,
      ``KIP126.Core.SpectralSequence.BoundedExtension.twoTermMap_comm,
      ``KIP126.Core.SpectralSequence.underlyingComplexMap,
      ``KIP126.Synthetic.SpectralSequence.SyntheticExtensionData.FilteredSquare.homotopy_comm,
      ``KIP126.Synthetic.SpectralSequence.SyntheticExtensionData.FilteredSquare.complexMap,
      ``KIP126.Core.SpectralSequence.FilteredComplex.Solutions.mem_fiber_iff,
      ``KIP126.Core.SpectralSequence.FilteredComplex.Solutions.nonempty_fiber_iff,
      ``KIP126.Core.SpectralSequence.FilteredComplex.Solutions.sub_mem_differences,
      ``KIP126.Core.SpectralSequence.FilteredComplex.Solutions.add_mem_fiber,
      ``KIP126.Core.SpectralSequence.FilteredComplex.Solutions.coordinateEquiv,
      ``KIP126.Core.SpectralSequence.FilteredComplex.Solutions.equation_natural,
      ``KIP126.Core.SpectralSequence.FilteredComplex.Solutions.representativesMap_id,
      ``KIP126.Core.SpectralSequence.FilteredComplex.Solutions.representativesMap_comp,
      ``KIP126.Core.SpectralSequence.FilteredComplex.Solutions.restrict_translate,
      ``KIP126.Core.SpectralSequence.FilteredComplex.Solutions.restrictDifferences_id,
      ``KIP126.Core.SpectralSequence.FilteredComplex.Solutions.restrictDifferences_comp,
      ``KIP126.Core.SpectralSequence.FilteredComplex.Solutions.obstruction_eq_zero_iff,
      ``KIP126.Core.SpectralSequence.FilteredComplex.Solutions.exists_strict_lifts_of_cycle,
      ``KIP126.Core.SpectralSequence.FilteredComplex.Solutions.exists_lifts_of_boundary,
      ``KIP126.Core.SpectralSequence.FilteredComplex.Solutions.differentialRelation_of_fiber,
      ``KIP126.Core.SpectralSequence.FilteredComplex.Solutions.nonempty_fiber_of_differentialRelation,
      ``KIP126.Core.SpectralSequence.FilteredComplex.Solutions.differentialRelation_iff_nonempty_fiber,
      ``KIP126.Synthetic.SpectralSequence.SyntheticExtensionData.differentialRelation_iff_solutions,
      ``KIP126.Synthetic.PageExtension.finiteRelation_iff_solutions,
      ``KIP126.Synthetic.PageExtension.infiniteRelation_iff_solutions,
      ``KIP126.Synthetic.PageExtension.finitePageExtension_iff_solutions,
      ``KIP126.Synthetic.PageExtension.infinitePageExtension_iff_solutions,
      ``KIP126.Synthetic.PageExtension.mem_targetCoset_iff_differentialRelation,
      ``KIP126.Synthetic.PageExtension.FiniteExtensionWitness.mem_targetCoset_iff_solutions,
      ``KIP126.Synthetic.PageExtension.InfiniteExtensionWitness.mem_targetCoset_iff_solutions,
      ``KIP126.Interface.Solution.finitePageExtension_iff_solutions,
      ``KIP126.Interface.Solution.infinitePageExtension_iff_solutions,
      ``KIP126.Interface.Solution.finitePageExtension_restrict,
      ``KIP126.Challenge2.restrictFiniteSolution,
      ``KIP126.Challenge2.restrictPermanentFiniteSolution,
      ``KIP126.Challenge2.CoherentPageExtensionSolutions,
      ``KIP126.Synthetic.Context.XModLambdaN.map_id,
      ``KIP126.Synthetic.Context.XModLambdaN.map_comp,
      ``KIP126.Synthetic.Context.XModLambdaN.restriction_self,
      ``KIP126.Synthetic.Context.XModLambdaN.restriction_comp,
      ``KIP126.Synthetic.Context.XModLambdaN.restriction_naturality,
      ``KIP126.Synthetic.Context.XModLambdaN.functor,
      ``KIP126.Synthetic.Context.XModLambdaN.restrictionNatTrans_comp,
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
