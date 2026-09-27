import KIP126.Interface.Axiom.Challenge1

namespace KIP126.LinE2

/-- The a05 projection from the single stage-zero witness. The proof of the
archived basis itself belongs to Def/Solution/LinProgram/BasisTable. -/
theorem basisTable_correct (s t : ℕ) (ht : t ≤ 261) : BasisTableCorrect s t :=
  KIP126.Interface.Axiom.challenge1Witness.linBasis.correct s t ht

end KIP126.LinE2
