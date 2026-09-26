import KIP126.Def.AdamsE2.LinBasis.Data
import KIP126.Def.ClassicalAdams.ComputationalClasses.Data

namespace KIP126.Classical.Adams
open KIP126.LinE2 KIP126.Core.Algebra

/-- Coordinates on the fixed internal Adams page, using the listed F₂ basis.
The map is ℤ-linear so no new scalar-action instance is imposed on SSData. -/
noncomputable def sphereE2Coordinates (s t : ℕ) (ht : t ≤ 261) :
    sphereAdamsData.Page 2 ((s : ℤ), (t : ℤ)) ≃ₗ[ℤ] (BasisIndex s t →₀ F2) :=
  (linToSphereE2 s t ht).symm.trans ((dataCoordinates s t ht).restrictScalars ℤ)

noncomputable def sphereE2Basis (s t : ℕ) (ht : t ≤ 261) (i : BasisIndex s t) :
    sphereAdamsData.Page 2 ((s : ℤ), (t : ℤ)) :=
  linToSphereE2 s t ht (dataBasis s t ht i)

/-- Lookup by the original additive-basis CSV index, not an algebra generator ID. -/
noncomputable def sphereE2BasisByCSV? (s t : ℕ) (ht : t ≤ 261) (index : ℕ) :
    Option (sphereAdamsData.Page 2 ((s : ℤ), (t : ℤ))) :=
  (findBasisIndex? s t index).map (sphereE2Basis s t ht)

end KIP126.Classical.Adams
