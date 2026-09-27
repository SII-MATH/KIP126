import KIP126.Interface.Axiom.Challenge1

/-! Compatibility name for the foundation selected by the shared Challenge 1 witness. -/
namespace KIP126.Classical.Adams

noncomputable def standardFoundation : StandardAdamsFoundation :=
  KIP126.Interface.Axiom.challenge1Witness.foundation

end KIP126.Classical.Adams
