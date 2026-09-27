import KIP126.Challenge2

/-!
# Development input for Challenge 2

This is the exact proposition proved by `KIP126.Interface.Solution.challenge2`.
It remains an axiom only while the Interface construction is unfinished.
-/
namespace KIP126.Main.Axiom

axiom challenge2 : Nonempty KIP126.Challenge2

/-- The one witness used throughout Main. -/
noncomputable def challenge2Witness : KIP126.Challenge2 :=
  Classical.choice challenge2

end KIP126.Main.Axiom
