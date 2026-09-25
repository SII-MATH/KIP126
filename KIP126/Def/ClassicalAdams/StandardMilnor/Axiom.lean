import KIP126.Def.ClassicalAdams.StandardFoundation.Axiom
import KIP126.Def.ClassicalAdams.MilnorCooperations.Data

namespace KIP126.Classical.Adams

/-- Development assumption: the specified H𝔽₂ has the normalized Milnor
coordinates and d₁ compatibility already required by `MilnorCooperations`.
Source: the classical Milnor cobar identification. Derivation from the lower
cooperation structure remains separate work; no permanence is assumed. -/
axiom standardMilnorCooperations : MilnorCooperations standardFoundation.hf2

end KIP126.Classical.Adams
