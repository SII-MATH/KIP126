import ModuleToModuleCertificates.Import
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
namespace Row2861Csigma.Actual
open ModuleToModuleCertificates LinProgramCertificates
def m7_135 : Wire := module_to_module% "Row2861Csigma/wire/s7t135.json"
theorem m7_135_valid : m7_135.Valid := by lin_cert using ()
def m9_136 : Wire := module_to_module% "Row2861Csigma/wire/s9t136.json"
theorem m9_136_valid : m9_136.Valid := by lin_cert using ()
def m11_137 : Wire := module_to_module% "Row2861Csigma/wire/s11t137.json"
theorem m11_137_valid : m11_137.Valid := by lin_cert using ()
def m10_137 : Wire := module_to_module% "Row2861Csigma/wire/s10t137.json"
theorem m10_137_valid : m10_137.Valid := by lin_cert using ()
def m12_138 : Wire := module_to_module% "Row2861Csigma/wire/s12t138.json"
theorem m12_138_valid : m12_138.Valid := by lin_cert using ()
def m14_139 : Wire := module_to_module% "Row2861Csigma/wire/s14t139.json"
theorem m14_139_valid : m14_139.Valid := by lin_cert using ()
end Row2861Csigma.Actual
