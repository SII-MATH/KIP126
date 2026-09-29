import KIP126.Challenge2
import KIP126.LinProgram.Certificates.SquareDetection.Archive.Proofs
import KIP126.LinProgram.Certificates.SquareDimension.Proofs

namespace KIP126.Interface.Solution

/-- Deliver the fixed square's nonvanishing and exhaustive degree-(2,128)
description on the actual sphere page, using one specified comparison. -/
theorem sphereSquare (P : KIP126.Classical.Adams.LinE2Presentation) :
    KIP126.Challenge2.SphereSquareInterface P := by
  constructor
  · exact fun hz => KIP126.LinE2.SquareDetection.dataH6Sq_ne_zero
      ((P.comparison 2 128 (by decide)).map_eq_zero_iff.mp hz)
  · intro x
    obtain ⟨a, rfl⟩ := (P.comparison 2 128 (by decide)).surjective x
    rcases KIP126.LinE2.E2At_square_eq_zero_or a with rfl | rfl
    · exact Or.inl (map_zero _)
    · exact Or.inr rfl

end KIP126.Interface.Solution
