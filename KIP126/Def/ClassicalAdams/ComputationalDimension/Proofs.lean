import KIP126.Def.AdamsE2.LinSquareDimension.Proofs
import KIP126.Def.ClassicalAdams.ComputationalClasses.Data

namespace KIP126.Classical.Adams

/-- The existing Lin comparison transfers the exhaustive two-element
description to the actual internal second page. No Milnor input is used. -/
theorem sphereAdamsData_square_eq_zero_or (x : sphereAdamsData.Page 2 (2, 128)) :
    x = 0 ∨ x = computedH6Square := by
  obtain ⟨a, rfl⟩ := (linToSphereE2 2 128 (by decide)).surjective x
  rcases KIP126.LinE2.E2At_square_eq_zero_or a with rfl | rfl
  · exact Or.inl (map_zero _)
  · exact Or.inr rfl

/-- Every nonzero element in this bidegree is the fixed computational square. -/
theorem sphereAdamsData_eq_computedH6Square_of_ne_zero
    (x : sphereAdamsData.Page 2 (2, 128)) (hx : x ≠ 0) : x = computedH6Square :=
  (sphereAdamsData_square_eq_zero_or x).resolve_left hx

end KIP126.Classical.Adams
