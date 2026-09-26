import KIP126.Def.ClassicalAdams.ComputationalBasis.Data
import KIP126.Def.AdamsE2.LinBasis.Proofs

namespace KIP126.Classical.Adams
open KIP126.LinE2

theorem sphereE2Coordinates_basis (s t : ℕ) (ht : t ≤ 261) (i : BasisIndex s t) :
    sphereE2Coordinates s t ht (sphereE2Basis s t ht i) = Finsupp.single i 1 := by
  change dataCoordinates s t ht
    ((linToSphereE2 s t ht).symm (linToSphereE2 s t ht (dataBasis s t ht i))) = _
  rw [LinearEquiv.symm_apply_apply, dataCoordinates_basis]

theorem sphereE2Basis_ne_zero (s t : ℕ) (ht : t ≤ 261) (i : BasisIndex s t) :
    sphereE2Basis s t ht i ≠ 0 := by
  intro h
  apply dataBasis_ne_zero s t ht i
  apply (linToSphereE2 s t ht).injective
  simpa [sphereE2Basis] using h

theorem sphereE2Coordinates_reconstruct (s t : ℕ) (ht : t ≤ 261)
    (x : sphereAdamsData.Page 2 ((s : ℤ), (t : ℤ))) :
    (sphereE2Coordinates s t ht).symm (sphereE2Coordinates s t ht x) = x :=
  (sphereE2Coordinates s t ht).symm_apply_apply x

end KIP126.Classical.Adams
