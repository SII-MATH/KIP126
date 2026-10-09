import ModuleToModuleCertificates.ShiftedImport
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
namespace Fact713Row2431Search.Maps
open ModuleToModuleCertificates LinProgramCertificates
def m7_129 : ShiftedWire := shifted_module_map% "Fact713Row2431Search/wire/s7t129.json"
theorem m7_129_valid : m7_129.Valid := by lin_cert using ()
def m9_130 : ShiftedWire := shifted_module_map% "Fact713Row2431Search/wire/s9t130.json"
theorem m9_130_valid : m9_130.Valid := by lin_cert using ()
def m11_131 : ShiftedWire := shifted_module_map% "Fact713Row2431Search/wire/s11t131.json"
theorem m11_131_valid : m11_131.Valid := by lin_cert using ()
def m10_131 : ShiftedWire := shifted_module_map% "Fact713Row2431Search/wire/s10t131.json"
theorem m10_131_valid : m10_131.Valid := by lin_cert using ()
def m12_132 : ShiftedWire := shifted_module_map% "Fact713Row2431Search/wire/s12t132.json"
theorem m12_132_valid : m12_132.Valid := by lin_cert using ()
def m14_133 : ShiftedWire := shifted_module_map% "Fact713Row2431Search/wire/s14t133.json"
theorem m14_133_valid : m14_133.Valid := by lin_cert using ()
#print axioms m7_129_valid
#print axioms m9_130_valid
#print axioms m11_131_valid
#print axioms m10_131_valid
#print axioms m12_132_valid
#print axioms m14_133_valid
end Fact713Row2431Search.Maps
