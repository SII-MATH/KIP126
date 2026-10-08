import KIP126.Def.ClassicalAdams.SphereDifferential.Predicates
import KIP126.Interface.Challenge.Literature.Delivery

/-! Readable wrappers for literature-backed standard sphere leaves.  The
underlying `LiteratureResults` field remains visible in the proof body and is
not converted into an untracked fact. -/

namespace KIP126.Interface.Solution.Literature

/-- Human-facing form of the standard one-line calculation. -/
theorem h4_d2_h0h3sq
    (literature : KIP126.Challenge2.LiteratureInterface) :
    KIP126.Classical.Adams.StandardSphere.h4D2H0H3Sq := by
  exact (literature.results.adamsOneLine_d2 4 (by decide)).toHasDifferential

/-- The literature result also records that the target class is nonzero. -/
theorem h4_d2_h0h3sq_nonzero
    (literature : KIP126.Challenge2.LiteratureInterface) :
    KIP126.Classical.Adams.StandardSphere.h4D2H0H3SqNonzero := by
  exact literature.results.adamsOneLine_d2 4 (by decide)

end KIP126.Interface.Solution.Literature
