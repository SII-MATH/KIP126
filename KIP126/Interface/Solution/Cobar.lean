import KIP126.Challenge2
import KIP126.Def.ClassicalAdams.MilnorCohomology.Comparison.Proofs
import KIP126.Def.ClassicalAdams.MilnorCohomology.Multiplication.Proofs

namespace KIP126.Interface.Solution

open KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology KIP126.Classical.Adams

universe u v

variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  (H : Mod2EilenbergMacLane (C := C)) (M : MilnorCooperations H)

/-- am9: the equivalence must preserve the specified actual cocycle classes. -/
theorem cobarE2Comparison : KIP126.Challenge2.CobarE2Comparison H M := by
  intro s t
  exact ⟨MilnorCohomology.comparison H M s t,
    fun x hx => MilnorCohomology.comparison_ofCocycle H M x hx⟩

/-- am9: the descended cup product and the standard concatenation squares. -/
theorem cobarCupCalculus : KIP126.Challenge2.CobarCupCalculus H M where
  representatives := MilnorCohomology.cup_ofCocycle H M
  standard_squares := MilnorCohomology.hiSquare_eq_cup H M

end KIP126.Interface.Solution
