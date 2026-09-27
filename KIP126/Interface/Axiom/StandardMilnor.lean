import KIP126.Interface.Axiom.StandardFoundation

/-! Compatibility name for the Milnor coordinates in the same Challenge 1 witness. -/
namespace KIP126.Classical.Adams

noncomputable def standardMilnorCooperations :
    MilnorCooperations standardFoundation.hf2 :=
  KIP126.Interface.Axiom.challenge1Witness.milnor

end KIP126.Classical.Adams
