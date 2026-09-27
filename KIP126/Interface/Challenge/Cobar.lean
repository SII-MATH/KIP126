import KIP126.Challenge2

namespace KIP126.Interface.Challenge

open KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology KIP126.Classical.Adams

universe u v

variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  (H : Mod2EilenbergMacLane (C := C)) (M : MilnorCooperations H)

/-- am9: the equivalence must preserve the specified actual cocycle classes. -/
theorem cobarE2Comparison : KIP126.Challenge2.CobarE2Comparison H M := by
  sorry

/-- am9: the descended cup product and the standard concatenation squares. -/
theorem cobarCupCalculus : KIP126.Challenge2.CobarCupCalculus H M := by
  sorry

end KIP126.Interface.Challenge
