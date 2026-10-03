import KIP126.Interface.Solution.StageInput.Foundation

/-! Compatibility name for the Milnor coordinates in the same Challenge 1 witness. -/
namespace KIP126.Classical.Adams

noncomputable def standardMilnorCooperations :
    MilnorCooperations standardFoundation.hf2 :=
  KIP126.Interface.StageInput.witness.milnor

end KIP126.Classical.Adams
