import KIP126.Def.ClassicalAdams.StandardFoundation

namespace KIP126.Classical.Adams
open KIP126.StableHomotopy.Cohomology
/-- Coordinates are the specified cooperation/Künneth/Milnor construction,
not an unrelated linear equivalence and not a computation witness. -/
noncomputable def standardMilnorCooperations : MilnorCooperations standardFoundation.hf2 where
  coordinates s t :=
    letI := adamsPageF2Module standardFoundation.hf2 standardMod2Ring
      KIP126.StableHomotopy.SphereSpectrum 1 le_rfl s t
    (sphereFirstPageMilnorEquiv standardFoundation.hf2
      standardMod2Ring standardKunneth standardReducedMilnorBasis s t).restrictScalars ℤ
  differential_coordinates := by
    sorry
end KIP126.Classical.Adams
