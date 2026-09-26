import KIP126.Def.ClassicalAdams.SSDataModel.Data
import KIP126.Def.ClassicalAdams.StandardFoundation.Axiom
import KIP126.Def.ClassicalAdams.TowerSSData.Sequence.Data

namespace KIP126.Classical.Adams

open KIP126.StableHomotopy

/-- The fixed internal sphere object is constructed from the same unit and
sphere tower as the standard quotient-page object. It is not an independent
model axiom. The chosen abstract stable foundation remains an explicit input
through `standardFoundation`; its concrete realization is not proved here. -/
noncomputable def sphereAdamsModel : AdamsSSData where
  sequence := adamsTowerInternalSpectralSequence standardFoundation.hf2.unit SphereSpectrum
  firstPage := rfl
  differentialDegree _ := rfl

end KIP126.Classical.Adams
