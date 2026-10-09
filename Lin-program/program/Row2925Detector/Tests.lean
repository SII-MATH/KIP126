import Row2925Detector.Matches

namespace Row2925Detector.Tests
open ModuleToModuleCertificates LinearCertificates Row2925Detector

example : checkShifted { Actual.m11_137 with suspension := -6 } = false := by decide
example : checkShifted { Actual.m11_137 with targetS := 11 } = false := by decide
example : checkShifted { Actual.m11_137 with targetT := 142 } = false := by decide

example : eval Comparison.middleMap (fun i => i.val == 1 || i.val == 2) = zero := by
  funext i
  exact (show ∀ i, eval Comparison.middleMap (fun j => j.val == 1 || j.val == 2) i = zero i from by decide) i

example : eval Comparison.upperMiddleMap (fun i => i.val == 1) ≠ zero := by
  intro h
  have hi := congrFun h ⟨3, by decide⟩
  contradiction
end Row2925Detector.Tests
