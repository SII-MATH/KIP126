import KIP126.Def.References.Literature.HopfCofiber.Proofs

/-! Statement track for the preserved consumer API; every goal remains open. -/

namespace KIP126.Classical.Adams
open CategoryTheory KIP126.StableHomotopy

theorem Challenge.sphereMapCofiber_first_zero (f : SphereThreeMap) :
    f ≫ sphereMapCofiberInclusion f = 0 := by
  sorry

theorem Challenge.sphereMapCofiber_cells_zero (f : SphereThreeMap) :
    sphereMapCofiberInclusion f ≫ sphereMapCofiberProjection f = 0 := by
  sorry

theorem Challenge.sphereMapCofiberInclusionTower_step (f : SphereThreeMap) (s : ℕ) :
    sphereMapCofiberInclusionTower f (s + 1) ≫
        adamsTowerStep standardFoundation.hf2.unit (sphereMapCofiber f) s =
      adamsTowerStep standardFoundation.hf2.unit SphereSpectrum s ≫
        sphereMapCofiberInclusionTower f s := by
  sorry

end KIP126.Classical.Adams
