import ModuleToModuleCertificates.ShiftedImport
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
namespace Fact713Row2916Search.Maps
open ModuleToModuleCertificates LinProgramCertificates
def m11_136 : ShiftedWire := shifted_module_map% "Fact713Row2916Search/wire/s11t136.json"
theorem m11_136_valid : m11_136.Valid := by lin_cert using ()
def m13_137 : ShiftedWire := shifted_module_map% "Fact713Row2916Search/wire/s13t137.json"
theorem m13_137_valid : m13_137.Valid := by lin_cert using ()
def m15_138 : ShiftedWire := shifted_module_map% "Fact713Row2916Search/wire/s15t138.json"
theorem m15_138_valid : m15_138.Valid := by lin_cert using ()
def m14_138 : ShiftedWire := shifted_module_map% "Fact713Row2916Search/wire/s14t138.json"
theorem m14_138_valid : m14_138.Valid := by lin_cert using ()
def m16_139 : ShiftedWire := shifted_module_map% "Fact713Row2916Search/wire/s16t139.json"
theorem m16_139_valid : m16_139.Valid := by lin_cert using ()
def m18_140 : ShiftedWire := shifted_module_map% "Fact713Row2916Search/wire/s18t140.json"
theorem m18_140_valid : m18_140.Valid := by lin_cert using ()
#print axioms m11_136_valid
#print axioms m13_137_valid
#print axioms m15_138_valid
#print axioms m14_138_valid
#print axioms m16_139_valid
#print axioms m18_140_valid
end Fact713Row2916Search.Maps
