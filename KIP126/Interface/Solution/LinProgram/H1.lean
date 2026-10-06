import KIP126.Interface.Challenge.Computation.Presentation
import KIP126.LinProgram.Certificates.H1
import KIP126.Def.ClassicalAdams.MilnorCohomology.Hi.Proofs
import KIP126.Def.StageInput.Milnor

/-! A genuine coordinate-to-class bridge on the fixed sphere's actual E₂.
Exhaustion identifies the unique nonzero class under any supplied presentation.
No imported basis correctness, differential, or higher-page law is assumed. -/

namespace KIP126.Interface.Solution

open KIP126.Classical.Adams

/-- Every actual element of E₂^(1,2) is zero or the comparison image of CSV h₁. -/
theorem sphereH1_exhaustive (P : LinE2Presentation)
    (x : sphereAdamsData.Page 2 (1, 2)) :
    x = 0 ∨ x = P.comparison 1 2 (by decide) KIP126.LinE2.dataH1 := by
  obtain ⟨a, rfl⟩ := (P.comparison 1 2 (by decide)).surjective x
  rcases KIP126.LinE2.E2At_h1_eq_zero_or a with rfl | rfl
  · exact Or.inl (map_zero _)
  · exact Or.inr rfl

/-- CSV h₁ denotes the existing standard Milnor class in the fixed actual
sphere E₂, rather than merely an element of an abstract data algebra. -/
theorem sphereH1_standard_class (P : LinE2Presentation) :
    P.comparison 1 2 (by decide) KIP126.LinE2.dataH1 =
      Sphere.Internal.hi standardFoundation.hf2 standardMilnorCooperations 1 := by
  exact ((sphereH1_exhaustive P
      (Sphere.Internal.hi standardFoundation.hf2 standardMilnorCooperations 1)).resolve_left
    (MilnorCohomology.internal_hi_ne_zero standardFoundation.hf2 standardMilnorCooperations 1)).symm

end KIP126.Interface.Solution
