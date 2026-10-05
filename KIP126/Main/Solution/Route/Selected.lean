import KIP126.Main.Solution.StageInput
import KIP126.Main.Solution.Computation.Lambda
import KIP126.Main.Solution.DifferentialReduction.Conclusion
import KIP126.Main.Solution.Route.Predicates
import KIP126.Main.Solution.Route.AlphaOne
import KIP126.Main.Solution.Route.Section7

/-! Section 7 on the selected stage witnesses. No new model, A or C is chosen.
The two paper propositions are still proof obligations in Main, never fields
of a model or stage input. Their unfinished proofs remain here in Solution. -/
namespace KIP126.Main.Solution.Route
open KIP126.Classical.Adams KIP126.Kervaire.Route
open KIP126.Synthetic.Context
open KIP126.Main.StageInput

/-- The existing Cnu calculation instantiated at the fixed C(M). -/
theorem cnu_d3 :
    KIP126.Computation.Route.Derived.CnuDifferential routeComputation.realization := by
  exact KIP126.Computation.Route.cnu_d3 routeComputation

/-- One-step λ injectivity with A and C from the SAME stage witness. -/
theorem lambda_injective_125_130 :
    LambdaInjectiveAt 125 130 (S_0_0 : KIP126.Def.standardRouteInput.Syn) := by
  exact KIP126.Computation.Route.lambda_injective_125_130 routeLiterature routeComputation

/-- The derived Section 7 finite/infinite facts use the delivered vanishing
line on this same model, rather than an unowned tail assumption. -/
theorem sphere_facts :
    KIP126.Computation.Route.Derived.SphereFacts routeComputation.realization := by
  exact KIP126.Computation.Route.sphere_facts routeComputation sphereVanishing

/-- The precise F15 detector injectivity used at all three occurrences
of the tmf argument in Proposition 7.8. -/
theorem detector_injective : DetectorInjectiveAt routeModel 125 130 15 := by
  exact KIP126.Computation.Route.detector_injective_125_130_filtration15
    routeLiterature routeComputation sphereVanishing sphereSeparated

/-- The Section 7 contradiction now consumes the selected Cnu target and
its incoming-page exclusion through the explicit same-witness chain. -/
theorem proposition_7_9 :
    KIP126.Solution.Near126.C3NotC5.c3_excludes_c5
      standardMilnorCooperations routeModel routeLabels routeEta := by
  intro _
  exact Section7.c3_excludes_c5

/-- Proposition 7.8 from this complete delivered input. The body must use
its A/C fields and prove the finite-page/tail/filtration steps in Main. -/
theorem proposition_7_8 (input : KIP126.Challenge2) :
    KIP126.Solution.Near126.OnlyD12.d12_dichotomy_and_condition_equivalence
      standardMilnorCooperations input.routeModel input.computation.bindings.routeLabels
      KIP126.Def.standardRouteEta := by
  sorry

end KIP126.Main.Solution.Route
