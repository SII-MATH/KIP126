import KIP126.Interface.Solution.StageInput

/-! Compatibility name for the foundation selected by the shared Challenge 1 witness. -/
namespace KIP126.Classical.Adams

noncomputable def standardFoundation : StandardAdamsFoundation :=
  KIP126.Interface.StageInput.witness.foundation

end KIP126.Classical.Adams
