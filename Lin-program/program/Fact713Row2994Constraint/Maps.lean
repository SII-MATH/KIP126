import ModuleToModuleCertificates.ShiftedImport
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
namespace Fact713Row2994Constraint.Maps
open ModuleToModuleCertificates LinProgramCertificates
def m15_137 : ShiftedWire := shifted_module_map% "Fact713Row2994Constraint/wire/s15t137.json"
theorem m15_137_valid : m15_137.Valid := by lin_cert using ()
def m17_138 : ShiftedWire := shifted_module_map% "Fact713Row2994Constraint/wire/s17t138.json"
theorem m17_138_valid : m17_138.Valid := by lin_cert using ()
def m19_139 : ShiftedWire := shifted_module_map% "Fact713Row2994Constraint/wire/s19t139.json"
theorem m19_139_valid : m19_139.Valid := by lin_cert using ()
def m18_139 : ShiftedWire := shifted_module_map% "Fact713Row2994Constraint/wire/s18t139.json"
theorem m18_139_valid : m18_139.Valid := by lin_cert using ()
def m20_140 : ShiftedWire := shifted_module_map% "Fact713Row2994Constraint/wire/s20t140.json"
theorem m20_140_valid : m20_140.Valid := by lin_cert using ()
def m22_141 : ShiftedWire := shifted_module_map% "Fact713Row2994Constraint/wire/s22t141.json"
theorem m22_141_valid : m22_141.Valid := by lin_cert using ()
#print axioms m17_138_valid
#print axioms m20_140_valid
end Fact713Row2994Constraint.Maps
