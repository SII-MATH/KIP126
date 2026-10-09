import ModuleToModuleCertificates.ShiftedImport
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
namespace Row2576Detector.Actual
open ModuleToModuleCertificates LinProgramCertificates
def m2_131 : ShiftedWire := shifted_module_map% "Row2576Detector/wire/s2t131.json"
theorem m2_131_valid : m2_131.Valid := by lin_cert using ()
def m4_132 : ShiftedWire := shifted_module_map% "Row2576Detector/wire/s4t132.json"
theorem m4_132_valid : m4_132.Valid := by lin_cert using ()
def m6_133 : ShiftedWire := shifted_module_map% "Row2576Detector/wire/s6t133.json"
theorem m6_133_valid : m6_133.Valid := by lin_cert using ()
def m5_133 : ShiftedWire := shifted_module_map% "Row2576Detector/wire/s5t133.json"
theorem m5_133_valid : m5_133.Valid := by lin_cert using ()
def m7_134 : ShiftedWire := shifted_module_map% "Row2576Detector/wire/s7t134.json"
theorem m7_134_valid : m7_134.Valid := by lin_cert using ()
def m9_135 : ShiftedWire := shifted_module_map% "Row2576Detector/wire/s9t135.json"
theorem m9_135_valid : m9_135.Valid := by lin_cert using ()
end Row2576Detector.Actual
