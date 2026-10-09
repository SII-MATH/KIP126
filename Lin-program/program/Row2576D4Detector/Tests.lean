import Row2576D4Detector.ImportedBoundary
namespace Row2576D4Detector.Tests
open LinearCertificates PageTransitionCertificates ModuleToModuleCertificates

def badOut : Matrix 5 6 := fun i j => i.val == 0 && j.val == 0
example : ¬ Target.Natural badOut := by
  intro h
  have hi := Target.unknown_column_forced badOut h ⟨0,by decide⟩
  contradiction
example : checkShifted { Actual.m8_135 with suspension := 1 } = false := by decide
example : ∀ i : Fin 6, eval Comparison.centerMap (fun j : Fin 2 => j.val == 0) i =
    (i.val == 0) := by decide
example : ∀ i : Fin 6, eval Comparison.centerMap (fun j : Fin 2 => j.val == 1) i =
    (i.val == 1) := by decide
example : ¬ ImportedBoundary.IncomingMeaning (fun i _ => i.val == 0) := by
  intro h
  have hi := h ⟨0,by decide⟩ ⟨0,by decide⟩
  contradiction
end Row2576D4Detector.Tests
