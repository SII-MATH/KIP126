import KIP126.Main.Axiom.Challenge2

namespace KIP126.LinE2

/-- The fixed CSV certification projected from Main's single computation witness.
The independent producer is Interface/Solution/LinProgram/BasisTable; this
consumer theorem is not a proof of that producer obligation. -/
theorem basisTable_correct (s t : ℕ) (ht : t ≤ 261) : BasisTableCorrect s t :=
  KIP126.Main.Axiom.challenge2Witness.linBasis.correct s t ht

end KIP126.LinE2
