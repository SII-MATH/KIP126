import Row2695Detector.Matches
namespace Row2695Detector.Tests
open ModuleToModuleCertificates LinearCertificates Row2695Detector

example : checkShifted { Actual.m9_134 with suspension := -1 } = false := by decide
example : checkShifted { Actual.m9_134 with targetS := 10 } = false := by decide
example : checkShifted { Actual.m9_134 with targetT := 135 } = false := by decide

example : eval Comparison.middleMap (fun i => i.val == 2) = zero := by
  funext i
  exact (show ∀ i, eval Comparison.middleMap (fun j => j.val == 2) i = zero i from by decide) i

example : eval Comparison.upperTarget.comparison.projection
    (eval Comparison.upperMiddleMap (fun i => i.val == 0)) ≠ zero := by
  intro h
  have hi := congrFun h ⟨1, by decide⟩
  contradiction
end Row2695Detector.Tests
