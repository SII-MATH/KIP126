import Row2576Detector.Matches
namespace Row2576Detector.Tests
open LinearCertificates ModuleToModuleCertificates PageProductCertificates Quotient

example : checkShifted { Actual.m4_132 with filtration := 1 } = false := by decide
example : checkShifted { Actual.m4_132 with targetT := 133 } = false := by decide
example : wireCheck { detect with tensor := [] } = false := by decide
example : eval Comparison.middleMap (fun _ => true) ≠ zero := by
  intro h
  have hi := congrFun h 0
  contradiction
example : eval detect.target.comparison.projection
    (product detect.product (fun _ => true)
      (eval Comparison.upperSource.comparison.inclusion (fun i => i.val == 1))) = zero := by
  funext i
  exact (show ∀ i, eval detect.target.comparison.projection
    (product detect.product (fun _ => true)
      (eval Comparison.upperSource.comparison.inclusion (fun j => j.val == 1))) i = false from by decide) i
end Row2576Detector.Tests
