import KIP126.Main.Solution.StageInput
import KIP126.Main.Solution.Computation.Lambda
import KIP126.Main.Solution.DifferentialReduction.Conclusion
import KIP126.Main.Solution.Route.Predicates

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
    LambdaInjectiveAt 125 130 (S00 : StandardSynthetic) := by
  exact KIP126.Computation.Route.lambda_injective_125_130 routeLiterature routeComputation

/-- Proposition 7.8 from this complete delivered input. The body must use
its A/C fields and prove the finite-page/tail/filtration steps in Main. -/
theorem proposition_7_8 (input : KIP126.Challenge2) :
    KIP126.Solution.Near126.OnlyD12.d12_dichotomy_and_condition_equivalence
      standardMilnorCooperations standardRouteModel input.modelBindings.routeLabels
      input.modelBindings.routeEta := by
  sorry

/-- Proposition 7.9 uses the SAME ν cofiber, η, labels and comparisons.
It is an unfinished Main deduction, not an external result A(M). -/
theorem proposition_7_9 (input : KIP126.Challenge2) :
    KIP126.Solution.Near126.C3NotC5.c3_excludes_c5
      standardMilnorCooperations standardRouteModel input.modelBindings.routeLabels
      input.modelBindings.routeEta := by
  sorry

end KIP126.Main.Solution.Route
