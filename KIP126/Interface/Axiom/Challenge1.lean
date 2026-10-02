import KIP126.Challenge1

/-!
# Development input for Challenge 1

This is the exact proposition proved by `KIP126.Def.Solution.challenge1`.
It remains an axiom only while the Def construction is unfinished.
-/
namespace KIP126.Interface.Axiom

axiom challenge1 : Nonempty KIP126.Challenge1

/-- The one witness used throughout Interface and all later fixed objects. -/
noncomputable def challenge1Witness : KIP126.Challenge1 :=
  Classical.choice challenge1

end KIP126.Interface.Axiom
