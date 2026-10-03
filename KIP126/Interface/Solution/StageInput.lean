import KIP126.Interface.Axiom.Challenge1

/-! Consumer selection from the sole correlated Challenge 1 stage input. -/
namespace KIP126.Interface.StageInput

/-- The one Challenge 1 witness used throughout Interface and all later fixed objects. -/
noncomputable def witness : KIP126.Challenge1 :=
  Classical.choice KIP126.Interface.Axiom.challenge1

end KIP126.Interface.StageInput
