import KIP126.Main.Solution.Route.ExtensionSteps
import KIP126.Main.Solution.Tools.Route
import KIP126.Main.Solution.Computation.Route
import KIP126.Main.Solution.Computation.Lambda
import KIP126.Main.Solution.Route.LiteratureAdapters.Tmf
import KIP126.Main.Solution.Route.LiteratureAdapters.Toda
import KIP126.Main.Solution.Route.LiteratureAdapters.NuCofiber
import KIP126.Main.Solution.DifferentialReduction.Conclusion
import KIP126.Def.Kervaire.Route.Goals.ChoiceIndependence.any_choice_criterion
import KIP126.Def.Kervaire.Route.Goals.ChoiceIndependence.c4_c5_choice_equivalence
import KIP126.Def.Kervaire.Route.Goals.DifferentialReduction.only_d12_differential_reduction
import KIP126.Def.ClassicalAdams.StandardSphere.Route.Data

/-! The complete conditional route signature. All pending substantive paper
arguments remain internal theorems. V is a general cobar vanishing theorem;
S is classical Adams-filtration separatedness. Neither is a finite record or
a disguised permanence premise. A includes explicitly separated source facts
and model comparisons; C carries ONE realization, including all comparisons.
No Main/Axiom or Interface/Challenge is used to prove these implications. -/
open CategoryTheory
open KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology
open KIP126.Classical.Adams KIP126.Synthetic.Context KIP126.Kervaire.Route
universe u v w
variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  {Syn : Type w} [SyntheticCategory.{w, v} Syn]
  [HasFunctorialCofiber (C := Syn)]
  {H : Mod2EilenbergMacLane (C := C)} {M : MilnorCooperations H}
  (D : Model H M Syn) (η : BiHom 1 2 (S00 : Syn))
  (G : KIP126.Literature.Route.TmfLabels H)

namespace KIP126.Main.Solution.Route
variable (L : Labels H)
  (A : KIP126.Literature.Route.Inputs D η G)
  (Cinput : KIP126.Computation.Route.Inputs D L G)
  (V : KIP126.Computation.Route.SphereVanishingLine H)
  (S : KIP126.Computation.Route.ClassicalSphereSeparated H)
include A Cinput V S

theorem choice_criterion :
    KIP126.Solution.Near126.Thm7_3BJMBX.any_choice_criterion M D η := by
  sorry

theorem choice_equivalence :
    KIP126.Solution.Near126.Conditions.c4_c5_choice_equivalence M D L η := by
  sorry

theorem differential_reduction :
    KIP126.Solution.Near126.CandidateReduction.only_d12_differential_reduction M L := by
  sorry

/-- LWX Proposition 7.8: an internal deduction, not A or C. -/
theorem proposition_7_8 :
    KIP126.Solution.Near126.OnlyD12.d12_dichotomy_and_condition_equivalence M D L η := by
  sorry

/-- LWX Proposition 7.9: an internal deduction, not A or C. -/
theorem proposition_7_9 :
    KIP126.Solution.Near126.C3NotC5.c3_excludes_c5 M D L η := by
  intro _ h3 h5
  obtain ⟨t, z, ht, heq⟩ := target_lambda_four_divisible A Cinput V S h3 h5
  obtain ⟨y, hy, r, hr2, hr5, hhit⟩ :=
    cnu_boundary_of_lambda_nu_divisibility A Cinput t z ht heq
  obtain ⟨y', hy', _, hnot⟩ := KIP126.Computation.Route.cnu_target_through5 Cinput
  have same : y = y' := Option.some.inj (hy.symm.trans hy')
  subst y'
  exact hnot.2.2 r hr2 hr5 hhit

theorem permanent_of_inputs :
    PermanentH6Square M := by
  exact KIP126.Main.Solution.permanent_of_propositions M D L η A.classical.hopf.1
    (proposition_7_8 D η G L A Cinput V S)
    (proposition_7_9 D η G L A Cinput V S)
end KIP126.Main.Solution.Route

namespace KIP126.Main.Solution.Route
/-- Specialization to the unique standard Final. The label comparison is
by definition: this is not an independently selected sequence or h6 square. -/
theorem standard_final_of_inputs
    {Syn : Type w} [SyntheticCategory.{w, 0} Syn]
    [HasFunctorialCofiber (C := Syn)]
    (D : StandardRouteModel Syn) (η : BiHom 1 2 (S00 : Syn))
    (G : KIP126.Literature.Route.TmfLabels standardFoundation.hf2)
    (L : Labels standardFoundation.hf2)
    (A : KIP126.Literature.Route.Inputs D η G)
    (Cinput : KIP126.Computation.Route.Inputs D L G)
    (V : KIP126.Computation.Route.SphereVanishingLine standardFoundation.hf2)
    (S : KIP126.Computation.Route.ClassicalSphereSeparated standardFoundation.hf2) :
    KIP126.Core.SpectralSequence.NonzeroSurvival sphereAdamsData (2,128) standardH6Square := by
  exact permanent_of_inputs D η G L A Cinput V S
end KIP126.Main.Solution.Route
