import ModuleToModuleCertificates.ShiftedImport
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
namespace Row2929Detector.Actual
open ModuleToModuleCertificates LinProgramCertificates
def m8_136 : ShiftedWire := shifted_module_map% "Row2929Detector/wire/s8t136.json"
theorem m8_136_valid : m8_136.Valid := by lin_cert using ()
def m10_137 : ShiftedWire := shifted_module_map% "Row2929Detector/wire/s10t137.json"
theorem m10_137_valid : m10_137.Valid := by lin_cert using ()
def m12_138 : ShiftedWire := shifted_module_map% "Row2929Detector/wire/s12t138.json"
theorem m12_138_valid : m12_138.Valid := by lin_cert using ()
def m11_138 : ShiftedWire := shifted_module_map% "Row2929Detector/wire/s11t138.json"
theorem m11_138_valid : m11_138.Valid := by lin_cert using ()
def m13_139 : ShiftedWire := shifted_module_map% "Row2929Detector/wire/s13t139.json"
theorem m13_139_valid : m13_139.Valid := by lin_cert using ()
def m15_140 : ShiftedWire := shifted_module_map% "Row2929Detector/wire/s15t140.json"
theorem m15_140_valid : m15_140.Valid := by lin_cert using ()
end Row2929Detector.Actual
