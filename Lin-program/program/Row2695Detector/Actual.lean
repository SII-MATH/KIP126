import ModuleToModuleCertificates.ShiftedImport
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
namespace Row2695Detector.Actual
open ModuleToModuleCertificates LinProgramCertificates
def m7_133 : ShiftedWire := shifted_module_map% "Row2695Detector/wire/s7t133.json"
theorem m7_133_valid : m7_133.Valid := by lin_cert using ()
def m9_134 : ShiftedWire := shifted_module_map% "Row2695Detector/wire/s9t134.json"
theorem m9_134_valid : m9_134.Valid := by lin_cert using ()
def m11_135 : ShiftedWire := shifted_module_map% "Row2695Detector/wire/s11t135.json"
theorem m11_135_valid : m11_135.Valid := by lin_cert using ()
def m10_135 : ShiftedWire := shifted_module_map% "Row2695Detector/wire/s10t135.json"
theorem m10_135_valid : m10_135.Valid := by lin_cert using ()
def m12_136 : ShiftedWire := shifted_module_map% "Row2695Detector/wire/s12t136.json"
theorem m12_136_valid : m12_136.Valid := by lin_cert using ()
def m14_137 : ShiftedWire := shifted_module_map% "Row2695Detector/wire/s14t137.json"
theorem m14_137_valid : m14_137.Valid := by lin_cert using ()
end Row2695Detector.Actual
