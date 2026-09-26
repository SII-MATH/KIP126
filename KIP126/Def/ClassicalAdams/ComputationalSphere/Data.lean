import KIP126.Def.ClassicalAdams.SSDataModel.Fixed.Data

namespace KIP126.Classical.Adams

/-- Fixed internal sequence constructed from the chosen sphere's Adams tower.
The abstract foundation is assumed, but the SSData model is no longer an axiom. -/
noncomputable abbrev sphereAdamsData := sphereAdamsModel.sequence

end KIP126.Classical.Adams
