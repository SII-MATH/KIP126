import StaircaseCertificates.Import
namespace StaircaseCertificates.Release60
open LinProgramCertificates
def c6000 : Wire := ⟨1, "RP3_256", 25, 150, 2, [true, false, false, true], [true, false, false, true], [9998, 9998], [false, false]⟩
theorem basis6000 : IsBasis c6000.certificate := by lin_cert using ()
def c6001 : Wire := ⟨1, "RP3_256", 25, 151, 5, [false, false, true, false, false, false, false, false, false, true, false, true, false, false, false, true, false, false, false, false, true, false, false, true, false], [false, false, false, true, false, false, false, true, false, false, true, false, false, false, false, false, false, false, true, true, false, true, false, false, false], [2, 2, 3, 9996, 9998], [false, false, false, false, false]⟩
theorem basis6001 : IsBasis c6001.certificate := by lin_cert using ()
def c6002 : Wire := ⟨1, "RP3_256", 25, 152, 2, [true, false, false, true], [true, false, false, true], [9997, 9997], [false, false]⟩
theorem basis6002 : IsBasis c6002.certificate := by lin_cert using ()
end StaircaseCertificates.Release60
