import KIP126.Def.ClassicalAdams.StandardFoundation.Data
import KIP126.Def.ClassicalAdams.MilnorCooperations.Data

/-!
# Challenge 1: the package crossing from Def to Interface

This structure is the single reviewed witness type shared by both sides of the
first stage boundary.  Def must construct an inhabitant; Interface may assume
only that the same type is nonempty while the construction is unfinished.
-/
namespace KIP126

/-- The stable foundation and Milnor coordinates delivered by the first
boundary.  The second field depends on the exact `H𝔽₂` selected by the first,
so the two inputs cannot silently come from different foundations. -/
structure Challenge1 where
  foundation : Classical.Adams.StandardAdamsFoundation
  milnor : @Classical.Adams.MilnorCooperations foundation.Spectrum
    foundation.stable foundation.cofiber foundation.hf2

end KIP126
