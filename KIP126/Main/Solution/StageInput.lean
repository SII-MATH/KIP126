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
    KIP126.Challenge2.LiteratureInterface :=
  witness.literature

/-- C(M) on the presentation stored in that same stage witness. -/
noncomputable def computation :
    KIP126.Challenge2.ComputationInterface literature :=
  witness.computation

/-- All Section 7 consumers use Def's one fixed route, with the source and
program labels supplied by the same Challenge2 witness. -/
noncomputable abbrev routeModel := witness.routeModel
noncomputable abbrev routeLabels := computation.bindings.routeLabels
noncomputable abbrev tmfLabels := literature.bindings.tmfLabels
noncomputable abbrev routeEta := KIP126.Def.standardRouteEta

/-- C(M) on the same model and labels. This projects existing evidence. -/
noncomputable def routeComputation :
    KIP126.Computation.Route.Inputs routeModel routeLabels tmfLabels :=
  computation.route

/-- Independent infinite-range premises on the same actual standard sphere. -/
noncomputable def sphereVanishing :
    KIP126.Classical.Adams.SphereVanishingLine KIP126.Classical.Adams.standardFoundation.hf2 :=
  literature.results.sphereVanishing

noncomputable def sphereSeparated :
    KIP126.Classical.Adams.ClassicalSphereSeparated KIP126.Classical.Adams.standardFoundation.hf2 :=
  KIP126.Def.standardSphereSeparated

/-- The literature delivery certifies the actual completion source and its
comparisons. Main consumes these certificates on the same binding. -/
theorem completionApplicability :
    KIP126.Literature.Route.BHSCompletionApplicability routeModel
      literature.bindings.route.bhsCompletion :=
  literature.bindings.route.completionApplicability

theorem completionComparison :
    KIP126.Literature.Route.BHSCompletionComparison routeModel
      literature.bindings.route.bhsCompletion :=
  literature.bindings.route.completionComparison

theorem realizationComparison :
    KIP126.Literature.Route.BHSRealizationComparison routeModel
      literature.bindings.route.realization
      literature.bindings.route.bhsCompletion :=
  literature.bindings.route.realizationComparison

noncomputable def todaSecondaryComparison :
    KIP126.Literature.Route.TodaSecondaryComparison routeEta
      literature.bindings.route.todaSource := by
  sorry

theorem nuSourceResults :
    KIP126.Literature.Route.NuCofiberSourceResults routeModel
      literature.bindings.route.nuSource := by
  sorry

/-- Main assembles the internal source application on the same bindings.
The secondary Toda comparison and compatible ν triple remain unfinished
internal proof obligations. -/
theorem routeApplication :
    KIP126.Literature.Route.Application routeModel routeEta tmfLabels
      literature.bindings.route := by
  exact KIP126.Interface.Solution.Literature.Route.application_of_parts
    routeModel routeEta tmfLabels literature.bindings.route literature.results.route
    completionApplicability completionComparison realizationComparison
    todaSecondaryComparison nuSourceResults

/-- Main derives the tmf consumer facts from the same source, C(M) and tail
premises. In particular high125 survival is not a Challenge2 field. -/
noncomputable def routeTmf :
    KIP126.Literature.Route.TmfInputs routeModel tmfLabels :=
  KIP126.Main.Solution.Computation.tmf_inputs_of_computation routeModel
    routeComputation sphereVanishing sphereSeparated
    literature.bindings.route.tmfSource literature.results.route.tmf
    literature.bindings.route.tmfBinding
    literature.bindings.route.algebraBinding.classical_detection

/-- The applied consumer API combines prior sources and comparisons with
Main's tmf deduction on the same shared model. -/
noncomputable def routeLiterature :
    KIP126.Literature.Route.Inputs routeModel routeEta tmfLabels :=
  KIP126.Literature.Route.Statements.toInputs routeModel routeEta tmfLabels
    literature.results.route routeApplication routeTmf

end KIP126.Main.StageInput
