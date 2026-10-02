import KIP126.Main.Axiom.Challenge2

/-! Consumer-side selection and projections from the sole correlated stage
witness. No additional axiom or independent choice is introduced here. -/
namespace KIP126.Main.StageInput

noncomputable def witness : KIP126.Challenge2 :=
  Classical.choice KIP126.Main.Axiom.challenge2

noncomputable def modelBindings : KIP126.Challenge2.ModelBindings := witness.modelBindings

noncomputable def presentation : KIP126.Classical.Adams.LinE2Presentation :=
  witness.presentation

noncomputable def literature :
    KIP126.Challenge2.LiteratureInterface witness.modelBindings :=
  witness.literature

noncomputable def computation :
    KIP126.Challenge2.ComputationInterface witness.presentation :=
  witness.computation

/-- The presentation selected by the sole correlated stage witness.  This
instance is a consumer adapter; it does not introduce another choice. -/
noncomputable instance presentationInstance :
    KIP126.Classical.Adams.LinE2Presentation :=
  presentation

/-- The basis comparison paired with the selected presentation in the same
`Challenge2` witness. -/
noncomputable instance sphereBasisInstance :
    KIP126.Challenge2.SphereBasisInterface presentationInstance :=
  computation.sphereBasis

end KIP126.Main.StageInput
