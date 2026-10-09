import Row2929Detector.Matches
namespace Row2929Detector.Tests
open ModuleToModuleCertificates LinearCertificates Row2929Detector

example : checkShifted { Actual.m10_137 with suspension := -1 } = false := by decide
example : checkShifted { Actual.m10_137 with targetS := 11 } = false := by decide
example : checkShifted { Actual.m10_137 with targetT := 138 } = false := by decide

example : eval Comparison.middleMap (fun i => i.val == 3) = zero := by
  funext i
  exact (show ∀ i, eval Comparison.middleMap (fun j => j.val == 3) i = zero i from by decide) i

example : eval Comparison.upperTarget.comparison.projection
    (eval Comparison.upperMiddleMap (fun i => i.val == 0)) ≠ zero := by
  intro h
  have hi := congrFun h ⟨1, by decide⟩
  contradiction
end Row2929Detector.Tests
