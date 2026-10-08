import KIP126.Def.ClassicalAdams.SphereDifferential.Predicates
import KIP126.Interface.Challenge.Literature.Delivery

set_option maxHeartbeats 1000000

/-! Readable wrappers for literature-backed standard sphere leaves.  The
underlying `LiteratureResults` field remains visible in the proof body and is
not converted into an untracked fact. -/

namespace KIP126.Interface.Solution.Literature

/-- Human-facing form of the standard one-line calculation. -/
theorem h4_d2_h0h3sq
    (literature : KIP126.Challenge2.LiteratureInterface) :
    KIP126.Classical.Adams.StandardSphere.h4D2H0H3Sq := by
  change KIP126.Core.SpectralSequence.HasDifferential KIP126.Classical.Adams.sphereAdamsData 2
    (1, 16) (3, 17)
    (KIP126.Classical.Adams.Sphere.Internal.hi KIP126.Classical.Adams.standardFoundation.hf2
      KIP126.Classical.Adams.standardMilnorCooperations 4)
    (KIP126.Classical.Adams.Sphere.Internal.h0HiSquare KIP126.Classical.Adams.standardFoundation.hf2
      KIP126.Classical.Adams.standardMilnorCooperations 3)
  convert (literature.results.adamsOneLine_d2 4 (by decide)).toHasDifferential using 1 <;>
    norm_num

/-- The literature result also records that the target class is nonzero. -/
theorem h4_d2_h0h3sq_nonzero
    (literature : KIP126.Challenge2.LiteratureInterface) :
    KIP126.Classical.Adams.StandardSphere.h4D2H0H3SqNonzero := by
  change KIP126.Core.SpectralSequence.HasNonzeroDifferential KIP126.Classical.Adams.sphereAdamsData 2
    (1, 16) (3, 17)
    (KIP126.Classical.Adams.Sphere.Internal.hi KIP126.Classical.Adams.standardFoundation.hf2
      KIP126.Classical.Adams.standardMilnorCooperations 4)
    (KIP126.Classical.Adams.Sphere.Internal.h0HiSquare KIP126.Classical.Adams.standardFoundation.hf2
      KIP126.Classical.Adams.standardMilnorCooperations 3)
  convert literature.results.adamsOneLine_d2 4 (by decide) using 1 <;>
    norm_num

end KIP126.Interface.Solution.Literature
