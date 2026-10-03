import KIP126.Interface.Challenge.Challenge2
import KIP126.Def.ClassicalAdams.Tmf.Br21.Data

namespace KIP126.Interface.Solution

/-- Source realization and coordinate comparison for the actual tmf Adams
sequence, retaining BR21's exact βg⁴ target. The proof must construct the tmf
witness and identify its generators with the fixed CSV quotient; matching names
or bidegrees alone do not supply that identification. -/
theorem tmfBookDifferentialInterface :
    ∃ model : KIP126.Challenge2.TmfModel KIP126.Classical.Adams.standardFoundation.hf2,
      model.Br21BookStatement := by
  sorry

/-- Pure transport through the proved equality in the SAME CSV quotient. -/
theorem br21Statement_of_book {C : Type*}
    [KIP126.StableHomotopy.StableHomotopyCategory C]
    [KIP126.StableHomotopy.HasFunctorialCofiber (C := C)]
    {H : KIP126.StableHomotopy.Cohomology.Mod2EilenbergMacLane (C := C)}
    (model : KIP126.Challenge2.TmfModel H) (source : model.Br21BookStatement) :
    model.Br21Statement := by
  simpa only [KIP126.Challenge2.TmfModel.Br21BookStatement,
    KIP126.Challenge2.TmfModel.Br21Statement,
    KIP126.Classical.Adams.Tmf.E2Presentation.betaGFour_eq_betaFiveG] using source

/-- am14: one algebra-object realization of the fixed coordinate algebra
and the BR21 d₃ equation, all on the same internal Adams tower.
The Hurewicz detection part of am14 is a further obligation. -/
theorem tmfDifferentialInterface :
    Nonempty (KIP126.Challenge2.TmfDifferentialInterface
      KIP126.Classical.Adams.standardFoundation.hf2) := by
  obtain ⟨model, source⟩ := tmfBookDifferentialInterface
  exact ⟨model.withDifferential (br21Statement_of_book model source)⟩

/-- The same BR21 realization and comparison preserve the actual
algebra-object unit and the actual Adams second-cycle product. -/
theorem tmfMultiplicativeInterface :
    ∃ T : KIP126.Challenge2.TmfDifferentialInterface
      KIP126.Classical.Adams.standardFoundation.hf2,
      KIP126.Challenge2.StandardTmfMultiplicativeInterface T := by
  sorry

end KIP126.Interface.Solution
