import KIP126.Def.References.Literature.Near126.Sphere.Proofs

/-! Statement track for the preserved consumer API; every goal remains open. -/

namespace KIP126.Computation.Near126

variable [KIP126.Classical.Adams.LinE2Presentation]
open KIP126.Classical.Adams
open KIP126.Core.SpectralSequence

/-- A downstream consumer can use the ambiguity without selecting a branch:
the actual fixed tower d₃ in this bidegree is nonzero. -/
theorem Challenge.SphereDifferentialFacts.d3_x126_6_ne_zero (F : SphereDifferentialFacts) :
    sphereAdamsData.d 3 (6, 132) ≠ 0 := by
  sorry

/-- An example of a usable non-hitting input, at every admissible page. -/
theorem Challenge.SphereSurvivalFacts.y_not_hit_on_page (F : SphereSurvivalFacts)
    (r : ℤ) (hr : 2 ≤ r) :
    ¬ HitOnPage sphereAdamsData r (11, 136)
      (linToSphereE2 11 136 (by decide) Y) := by
  sorry

end KIP126.Computation.Near126
