import KIP126.Def.ClassicalAdams.HopfCofiber.Data

namespace KIP126.Classical.Adams
open CategoryTheory KIP126.StableHomotopy

/-- A stable map has a specified filtration-one E₂ representative. This does
not claim a canonical choice of Hopf map or identification with a classical
geometric model. It ties the map and class through the actual sphere tower. -/
def SphereFiltrationOneRepresents (f : SphereThreeMap)
    (x : sphereAdamsModel.sequence.Page 2 (1, 4)) : Prop :=
  ∃ a : HomotopyGroup 3 (adamsTower standardFoundation.hf2.unit SphereSpectrum 1),
    a ≫ adamsTowerStep standardFoundation.hf2.unit SphereSpectrum 0 = f ∧
      sphereFiltrationOneClass a = x

end KIP126.Classical.Adams
