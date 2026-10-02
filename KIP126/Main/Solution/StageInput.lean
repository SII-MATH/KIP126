import KIP126.Main.Axiom.Challenge2

/-! Consumer projections from the sole correlated Challenge2 witness. -/
namespace KIP126.Main.StageInput

/-- The one witness used throughout Main. -/
noncomputable def witness : KIP126.Challenge2 :=
  Classical.choice KIP126.Main.Axiom.challenge2

/-- Literature on the bindings stored in the sole stage witness. -/
def literature :
    KIP126.Challenge2.LiteratureInterface witness.modelBindings :=
  witness.literature

/-- C(M) on the presentation stored in that same stage witness. -/
noncomputable def computation :
    KIP126.Challenge2.ComputationInterface witness.presentation :=
  witness.computation

end KIP126.Main.StageInput
