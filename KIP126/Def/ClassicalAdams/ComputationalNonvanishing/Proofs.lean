import KIP126.Def.AdamsE2.LinSquareDetection.Certificate.Archive.Proofs
import KIP126.Def.ClassicalAdams.ComputationalClasses.Data

namespace KIP126.Classical.Adams

/-- Transfer any concrete nonzero-square certificate along the existing E₂
comparison. The unconditional specialization below uses the archived certificate. -/
theorem computedH6Square_ne_zero_of_check
    (h : KIP126.LinE2.SquareDetection.allRelationsCheck = true) :
    computedH6Square ≠ 0 := by
  exact fun hz => KIP126.LinE2.SquareDetection.dataH6Sq_ne_zero_of_check h
    ((linToSphereE2 2 128 (by decide)).map_eq_zero_iff.mp hz)

/-- The fixed computational class is nonzero on E₂. This uses the disclosed
Lin E₂ comparison, but no basis-table placeholder or unverified finite check. -/
theorem computedH6Square_ne_zero : computedH6Square ≠ 0 :=
  computedH6Square_ne_zero_of_check KIP126.LinE2.SquareDetection.allRelationsCheck_eq_true

end KIP126.Classical.Adams
