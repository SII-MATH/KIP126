import PageTransitionCertificates.Import
namespace PageTransitionCertificates.Release50
open LinProgramCertificates
def certificate2500 : WireComparison := ⟨1, 2, 4, 2, 3, [true, true, false, false, false, false, false, false], [false, false, false, false, false, false, false, false], [true, false, false, true, false, false, false, true, false, false, false, true], [false, true, false, false, false, false, true, false, false, false, false, true], [false, false, false, false, false, false, false, false], [true, false, false, false, false, false, false, false]⟩
theorem comparison2500 : certificate2500.Valid := by lin_cert using ()
def certificate2501 : WireComparison := ⟨1, 2, 1, 4, 1, [false, false], [false, false, false, false], [true], [true], [false, false, false, false], [false, false]⟩
theorem comparison2501 : certificate2501.Valid := by lin_cert using ()
def certificate2502 : WireComparison := ⟨1, 1, 3, 1, 1, [true, false, false], [false, true, false], [false, false, true], [false, false, true], [false, true, false], [true, false, false]⟩
theorem comparison2502 : certificate2502.Valid := by lin_cert using ()
def certificate2503 : WireComparison := ⟨1, 3, 2, 2, 0, [false, false, true, false, false, true], [false, false, false, false], [], [], [false, false, false, false], [false, true, false, false, false, true]⟩
theorem comparison2503 : certificate2503.Valid := by lin_cert using ()
def certificate2504 : WireComparison := ⟨1, 2, 4, 1, 2, [false, false, false, false, false, false, false, true], [false, true, false, false], [true, false, false, false, false, true, false, false], [true, false, false, false, false, false, true, false], [false, true, false, false], [false, false, false, false, false, false, false, true]⟩
theorem comparison2504 : certificate2504.Valid := by lin_cert using ()
def certificate2505 : WireComparison := ⟨1, 2, 1, 4, 0, [false, true], [false, false, false, false], [], [], [false, false, false, false], [false, true]⟩
theorem comparison2505 : certificate2505.Valid := by lin_cert using ()
def certificate2506 : WireComparison := ⟨1, 4, 4, 3, 2, [false, false, false, false, false, true, false, false, true, false, false, false, false, false, false, false], [false, false, false, false, false, false, false, false, false, false, false, false], [false, false, false, false, true, false, false, true], [false, false, true, false, false, false, false, true], [false, false, false, false, false, false, false, false, false, false, false, false], [false, false, true, false, false, true, false, false, false, false, false, false, false, false, false, false]⟩
theorem comparison2506 : certificate2506.Valid := by lin_cert using ()
def certificate2507 : WireComparison := ⟨1, 2, 1, 2, 0, [false, true], [false, false], [], [], [false, false], [false, true]⟩
theorem comparison2507 : certificate2507.Valid := by lin_cert using ()
def certificate2508 : WireComparison := ⟨1, 1, 4, 3, 1, [true, false, false, false], [false, false, false, true, false, false, false, true, false, true, false, false], [false, true, false, false], [false, true, false, true], [false, false, false, true, false, false, true, false, false, false, false, false], [true, false, false, false]⟩
theorem comparison2508 : certificate2508.Valid := by lin_cert using ()
def certificate2509 : WireComparison := ⟨1, 3, 2, 4, 1, [false, false, false, false, false, false], [true, true, false, false, false, false, false, false], [false, true], [false, true], [true, false, false, false, false, false, false, false], [false, false, false, false, false, false]⟩
theorem comparison2509 : certificate2509.Valid := by lin_cert using ()
def certificate2510 : WireComparison := ⟨1, 3, 2, 1, 0, [true, false, false, false, false, true], [false, false], [], [], [false, false], [true, false, false, false, false, true]⟩
theorem comparison2510 : certificate2510.Valid := by lin_cert using ()
def certificate2511 : WireComparison := ⟨1, 2, 5, 3, 2, [true, false, false, false, false, false, false, false, false, false], [false, false, false, false, true, false, true, false, false, true, false, false, false, false, false], [false, false, false, false, true, false, false, false, false, true], [false, false, true, true, false, false, false, false, false, true], [false, false, false, true, false, false, true, false, false, false, false, false, false, false, false], [true, false, false, false, false, false, false, false, false, false]⟩
theorem comparison2511 : certificate2511.Valid := by lin_cert using ()
end PageTransitionCertificates.Release50
