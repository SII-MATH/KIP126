import PageTransitionCertificates.Trajectory

namespace PageTransitionCertificates.TrajectoryExamples
open LinProgramCertificates

def first : Stage := ⟨page_comparison% "PageTransitionCertificates/sample.json",
  [false, false, true, false]⟩
def nextWire : WireComparison :=
  ⟨1, 1, 2, 1, 2, [false, false], [false, false],
    [true, false, false, true], [true, false, false, true],
    [false, false], [false, false]⟩
def second : Stage := ⟨nextWire, [true, false]⟩
example : TrajectoryValid [first, second] := by lin_cert using ()
example : checkTrajectory [] = false := by decide
example : checkTrajectory [first, {second with representative := [false, true]}] = false := by decide
example : checkTrajectory [{first with representative := [true, false, false, false]}] = false := by decide
#print axioms checkTrajectory_sound
end PageTransitionCertificates.TrajectoryExamples
