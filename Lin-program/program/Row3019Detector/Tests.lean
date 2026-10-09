import Row3019Detector.Matches

namespace Row3019Detector.Tests
open ModuleToModuleCertificates LinearCertificates Row3019Detector

example : checkShifted { Actual.m11_138 with suspension := -1 } = false := by decide
example : checkShifted { Actual.m11_138 with targetS := 12 } = false := by decide
example : checkShifted { Actual.m11_138 with targetT := 139 } = false := by decide

example : eval Comparison.middleMap (fun i => i.val == 2) = zero := by
  funext i
  exact (show ∀ i, eval Comparison.middleMap (fun j => j.val == 2) i = zero i from by decide) i

/-- All three nonzero target vectors, including their sum, stay nonzero. -/
example : ∀ v : Vec 2, v ≠ zero →
    eval Comparison.upperTarget.comparison.projection
      (eval Comparison.upperMiddleMap (eval Comparison.upperSource.comparison.inclusion v)) ≠ zero := by decide

/-- The raw staircase row3019 is local2; basis row3019 itself is local1. -/
example : (fun i : Fin 4 => i.val == 2) ≠ (fun i : Fin 4 => i.val == 1) := by decide

end Row3019Detector.Tests
