import KIP126.External.Computation.Near126.HopfCofiber.Data
import KIP126.External.Computation.Near126.Classes.Data
import KIP126.Def.ClassicalAdams.ComputationalClasses.Data
import KIP126.Def.ClassicalAdams.HopfCofiber.Proofs
import KIP126.Def.ClassicalAdams.HopfCofiber.Pages.Data

namespace KIP126.Computation.Near126
open KIP126.Classical.Adams KIP126.External

/-- Explicit missing geometric input on the already fixed sphere. Its h₂
condition is a statement about an actual filtration-one tower lift, not a
name, an arbitrary page map, or a freely chosen auxiliary spectral sequence.
There is no global inhabitant or claim that h₂ detection chooses a unique ν. -/
structure SphereHopfInput where
  map : SphereThreeMap
  represents_h2 : ExternalEvidence
    (SphereFiltrationOneRepresents map (linToSphereE2 1 4 (by decide) (atom .h2)))

noncomputable def SphereHopfInput.ybar (N : SphereHopfInput) :=
  sphereMapCofiberBottomE2 N.map (11, 136) (linToSphereE2 11 136 (by decide) Y)

noncomputable def SphereHopfInput.tbar (N : SphereHopfInput) :=
  sphereMapCofiberBottomE2 N.map (14, 139) (linToSphereE2 14 139 (by decide) T)

/-- The bottom-cell correction is fixed by the CSV and induced inclusion.
The remaining topLift must still be identified with X[4] using the top-cell
map and a suspension comparison; no such identification is asserted here. -/
noncomputable def SphereHopfInput.xbar (N : SphereHopfInput)
    (topLift : (sphereMapCofiberAdams N.map).Page 2 (8, 134)) :=
  topLift + sphereMapCofiberBottomE2 N.map (8, 134)
    (linToSphereE2 8 134 (by decide) (atom .x126_8)) +
    sphereMapCofiberBottomE2 N.map (8, 134)
      (linToSphereE2 8 134 (by decide) (atom .x126_8_2))

/-- The cofiber sequence and bottom-cell classes are now determined by the
fixed sphere and N.map. The topLift comparison and all external evidence
values are still explicit outstanding inputs. -/
abbrev SphereHopfInput.ComputationFacts (N : SphereHopfInput)
    (topLift : (sphereMapCofiberAdams N.map).Page 2 (8, 134)) :=
  HopfCofiberFacts (sphereMapCofiberAdams N.map) (N.xbar topLift) N.ybar N.tbar

end KIP126.Computation.Near126
