import Row2861D4Detector.Matches
namespace Row2861D4Detector.Tests
open ModuleToModuleCertificates LinearCertificates Row2861D4Detector

example : checkShifted { Actual.m9_136 with suspension := -1 } = false := by decide
example : checkShifted { Actual.m9_136 with targetS := 10 } = false := by decide
example : checkShifted { Actual.m9_136 with targetT := 137 } = false := by decide

example : eval Higher.MiddleMap (fun i => i.val == 0) = zero := by
  funext i
  exact (show ∀ i, eval Higher.MiddleMap (fun j => j.val == 0) i = zero i from by decide) i

example : eval Higher.upperTarget.comparison.projection
    (eval Higher.upperMiddleMap (fun _ => true)) ≠ zero := by
  intro h
  have hi := congrFun h ⟨0, by decide⟩
  contradiction
end Row2861D4Detector.Tests
