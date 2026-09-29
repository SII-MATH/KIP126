import KIP126.Challenge2

/-!
# Development input for Challenge 2

This is the exact proposition proved by `KIP126.Interface.Solution.challenge2`.
It remains an axiom only while the Interface construction is unfinished.
Literature and computation are projections of the same witness, not separate
existence assumptions or independently chosen models.
-/
namespace KIP126.Main.Axiom

axiom challenge2 : Nonempty KIP126.Challenge2

/-- The one witness used throughout Main. -/
noncomputable def challenge2Witness : KIP126.Challenge2 :=
  Classical.choice challenge2

/-- Literature on the bindings stored in the sole stage witness. -/
def literatureInterface :
    KIP126.Challenge2.LiteratureInterface challenge2Witness.modelBindings :=
  challenge2Witness.literature

/-- C(M) on the presentation stored in that same stage witness. -/
noncomputable def computationInterface :
    KIP126.Challenge2.ComputationInterface challenge2Witness.presentation :=
  challenge2Witness.computation

end KIP126.Main.Axiom
