import KIP126.Main.Axiom.Challenge2
import KIP126.Main.Solution.Computation.Tmf
import KIP126.Def.StageInput.StandardSphere.Sequence.Proofs
import KIP126.Interface.Solution.Literature.Route.Adapters

/-! Consumer projections from the sole correlated Challenge2 witness. -/
namespace KIP126.Main.StageInput

/-- The one witness used throughout Main. -/
noncomputable def witness : KIP126.Challenge2 :=
  KIP126.Main.Axiom.challenge2

/-- Literature on the bindings stored in the sole stage witness. -/
noncomputable def literature :
    KIP126.Challenge2.LiteratureInterface witness.routeInput witness.modelBindings :=
  witness.literature

/-- C(M) on the presentation stored in that same stage witness. -/
noncomputable def computation :
    KIP126.Challenge2.ComputationInterface witness.routeInput witness.modelBindings
      witness.presentation :=
  witness.computation

/-- All Section 7 consumers use the route delivered with the same A(M)/C(M). -/
noncomputable abbrev routeModel := witness.routeModel
noncomputable abbrev routeLabels := witness.modelBindings.routeLabels
noncomputable abbrev tmfLabels := witness.modelBindings.tmfLabels
noncomputable abbrev routeEta := witness.modelBindings.routeEta

/-- C(M) on the same model and labels. This projects existing evidence. -/
noncomputable def routeComputation :
    KIP126.Computation.Route.Inputs routeModel routeLabels tmfLabels :=
  computation.route

/-- Independent infinite-range premises on the same actual standard sphere. -/
noncomputable def sphereVanishing :
    KIP126.Classical.Adams.SphereVanishingLine KIP126.Classical.Adams.standardFoundation.hf2 :=
  literature.sphereVanishing

noncomputable def sphereSeparated :
    KIP126.Classical.Adams.ClassicalSphereSeparated KIP126.Classical.Adams.standardFoundation.hf2 :=
  KIP126.Def.standardSphereSeparated

/-- The five remaining premises of the selected source application are kept
visible after the stage axiom. Each refers to the same route binding. -/
theorem completionApplicability :
    KIP126.Literature.Route.BHSCompletionApplicability routeModel
      witness.modelBindings.route.bhsCompletion := by
  sorry

theorem completionComparison :
    KIP126.Literature.Route.BHSCompletionComparison routeModel
      witness.modelBindings.route.bhsCompletion := by
  sorry

theorem realizationComparison :
    KIP126.Literature.Route.BHSRealizationComparison routeModel
      witness.modelBindings.route.realization
      witness.modelBindings.route.bhsCompletion := by
  sorry

noncomputable def todaSecondaryComparison :
    KIP126.Literature.Route.TodaSecondaryComparison routeEta
      witness.modelBindings.route.todaSource := by
  sorry

theorem nuSourceResults :
    KIP126.Literature.Route.NuCofiberSourceResults routeModel
      witness.modelBindings.route.nuSource := by
  sorry

/-- Main assembles the internal source application on the SAME bindings.
The comparison lemmas above remain explicit unfinished proof obligations. -/
theorem routeApplication :
    KIP126.Literature.Route.Application routeModel routeEta tmfLabels
      witness.modelBindings.route := by
  exact KIP126.Interface.Solution.Literature.Route.application_of_parts
    routeModel routeEta tmfLabels witness.modelBindings.route literature.route
    completionApplicability completionComparison realizationComparison
    todaSecondaryComparison nuSourceResults

/-- Main derives the tmf consumer facts from the same source, C(M) and tail
premises. In particular high125 survival is not a Challenge2 field. -/
noncomputable def routeTmf :
    KIP126.Literature.Route.TmfInputs routeModel tmfLabels :=
  KIP126.Main.Solution.Computation.tmf_inputs_of_computation routeModel
    routeComputation sphereVanishing sphereSeparated
    witness.modelBindings.route.tmfSource literature.route.tmf
    witness.modelBindings.route.tmfBinding
    witness.modelBindings.route.algebraBinding.classical_detection

/-- The applied consumer API combines prior sources and comparisons with
Main's tmf deduction on the same shared model. -/
noncomputable def routeLiterature :
    KIP126.Literature.Route.Inputs routeModel routeEta tmfLabels :=
  KIP126.Literature.Route.Statements.toInputs routeModel routeEta tmfLabels
    literature.route routeApplication routeTmf

end KIP126.Main.StageInput
