import KIP126.Main.Axiom.Challenge2

/-! Compatibility name for the unique presentation indexing the computation group
in the shared Challenge 2 witness. -/
namespace KIP126.Classical.Adams

noncomputable def linE2Presentation : LinE2Presentation :=
  KIP126.Main.Axiom.challenge2Witness.presentation

end KIP126.Classical.Adams
