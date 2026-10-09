import ModuleToModuleCertificates.ShiftedImport
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
namespace Row2925Detector.Actual
open ModuleToModuleCertificates LinProgramCertificates
def m9_136 : ShiftedWire := shifted_module_map% "Row2925Detector/wire/s9t136.json"
theorem m9_136_valid : m9_136.Valid := by lin_cert using ()
def m11_137 : ShiftedWire := shifted_module_map% "Row2925Detector/wire/s11t137.json"
theorem m11_137_valid : m11_137.Valid := by lin_cert using ()
def m13_138 : ShiftedWire := shifted_module_map% "Row2925Detector/wire/s13t138.json"
theorem m13_138_valid : m13_138.Valid := by lin_cert using ()
def m12_138 : ShiftedWire := shifted_module_map% "Row2925Detector/wire/s12t138.json"
theorem m12_138_valid : m12_138.Valid := by lin_cert using ()
def m14_139 : ShiftedWire := shifted_module_map% "Row2925Detector/wire/s14t139.json"
theorem m14_139_valid : m14_139.Valid := by lin_cert using ()
def m16_140 : ShiftedWire := shifted_module_map% "Row2925Detector/wire/s16t140.json"
theorem m16_140_valid : m16_140.Valid := by lin_cert using ()
end Row2925Detector.Actual
