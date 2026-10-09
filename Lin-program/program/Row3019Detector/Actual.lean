import ModuleToModuleCertificates.ShiftedImport
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
namespace Row3019Detector.Actual
open ModuleToModuleCertificates LinProgramCertificates
def m9_137 : ShiftedWire := shifted_module_map% "Row3019Detector/wire/s9t137.json"
theorem m9_137_valid : m9_137.Valid := by lin_cert using ()
def m11_138 : ShiftedWire := shifted_module_map% "Row3019Detector/wire/s11t138.json"
theorem m11_138_valid : m11_138.Valid := by lin_cert using ()
def m13_139 : ShiftedWire := shifted_module_map% "Row3019Detector/wire/s13t139.json"
theorem m13_139_valid : m13_139.Valid := by lin_cert using ()
def m12_139 : ShiftedWire := shifted_module_map% "Row3019Detector/wire/s12t139.json"
theorem m12_139_valid : m12_139.Valid := by lin_cert using ()
def m14_140 : ShiftedWire := shifted_module_map% "Row3019Detector/wire/s14t140.json"
theorem m14_140_valid : m14_140.Valid := by lin_cert using ()
def m16_141 : ShiftedWire := shifted_module_map% "Row3019Detector/wire/s16t141.json"
theorem m16_141_valid : m16_141.Valid := by lin_cert using ()
end Row3019Detector.Actual
