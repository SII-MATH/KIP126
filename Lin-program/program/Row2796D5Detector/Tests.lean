import Row2796D5Detector.Matches
namespace Row2796D5Detector.Tests
open LinearCertificates PageTransitionCertificates ModuleToModuleCertificates Source

example : checkShifted { Actual.m8_135 with suspension := -1 } = false := by decide
example : checkShifted { Actual.m8_135 with targetS := 9 } = false := by decide
example : checkShifted { Actual.m8_135 with targetT := 136 } = false := by decide
example : eval Comparison.c8_135E3 named3 = zero := named_actual_image
example : eval Comparison.c8_135E3 (fun i => i.val == 1) ≠ zero := by decide
example : eval Higher.targetT.comparison.projection
    (eval Higher.targetMap (fun _ => true)) = (fun _ => true) := by decide
end Row2796D5Detector.Tests
