import ModuleToModuleCertificates.ShiftedImport
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
namespace Fact721FirstD4Search.Maps
open ModuleToModuleCertificates LinProgramCertificates
def m6_130 : ShiftedWire := shifted_module_map% "Fact721FirstD4Search/wire/s6t130.json"
theorem m6_130_valid : m6_130.Valid := by lin_cert using ()
def m8_131 : ShiftedWire := shifted_module_map% "Fact721FirstD4Search/wire/s8t131.json"
theorem m8_131_valid : m8_131.Valid := by lin_cert using ()
def m9_132 : ShiftedWire := shifted_module_map% "Fact721FirstD4Search/wire/s9t132.json"
theorem m9_132_valid : m9_132.Valid := by lin_cert using ()
def m10_132 : ShiftedWire := shifted_module_map% "Fact721FirstD4Search/wire/s10t132.json"
theorem m10_132_valid : m10_132.Valid := by lin_cert using ()
def m10_133 : ShiftedWire := shifted_module_map% "Fact721FirstD4Search/wire/s10t133.json"
theorem m10_133_valid : m10_133.Valid := by lin_cert using ()
def m11_133 : ShiftedWire := shifted_module_map% "Fact721FirstD4Search/wire/s11t133.json"
theorem m11_133_valid : m11_133.Valid := by lin_cert using ()
def m12_134 : ShiftedWire := shifted_module_map% "Fact721FirstD4Search/wire/s12t134.json"
theorem m12_134_valid : m12_134.Valid := by lin_cert using ()
def m13_134 : ShiftedWire := shifted_module_map% "Fact721FirstD4Search/wire/s13t134.json"
theorem m13_134_valid : m13_134.Valid := by lin_cert using ()
def m13_135 : ShiftedWire := shifted_module_map% "Fact721FirstD4Search/wire/s13t135.json"
theorem m13_135_valid : m13_135.Valid := by lin_cert using ()
def m14_135 : ShiftedWire := shifted_module_map% "Fact721FirstD4Search/wire/s14t135.json"
theorem m14_135_valid : m14_135.Valid := by lin_cert using ()
def m15_136 : ShiftedWire := shifted_module_map% "Fact721FirstD4Search/wire/s15t136.json"
theorem m15_136_valid : m15_136.Valid := by lin_cert using ()
def m16_136 : ShiftedWire := shifted_module_map% "Fact721FirstD4Search/wire/s16t136.json"
theorem m16_136_valid : m16_136.Valid := by lin_cert using ()
def m16_137 : ShiftedWire := shifted_module_map% "Fact721FirstD4Search/wire/s16t137.json"
theorem m16_137_valid : m16_137.Valid := by lin_cert using ()
def m17_137 : ShiftedWire := shifted_module_map% "Fact721FirstD4Search/wire/s17t137.json"
theorem m17_137_valid : m17_137.Valid := by lin_cert using ()
def m18_138 : ShiftedWire := shifted_module_map% "Fact721FirstD4Search/wire/s18t138.json"
theorem m18_138_valid : m18_138.Valid := by lin_cert using ()
def m20_139 : ShiftedWire := shifted_module_map% "Fact721FirstD4Search/wire/s20t139.json"
theorem m20_139_valid : m20_139.Valid := by lin_cert using ()
#print axioms m6_130_valid
#print axioms m8_131_valid
#print axioms m9_132_valid
#print axioms m10_132_valid
#print axioms m10_133_valid
#print axioms m11_133_valid
#print axioms m12_134_valid
#print axioms m13_134_valid
#print axioms m13_135_valid
#print axioms m14_135_valid
#print axioms m15_136_valid
#print axioms m16_136_valid
#print axioms m16_137_valid
#print axioms m17_137_valid
#print axioms m18_138_valid
#print axioms m20_139_valid
end Fact721FirstD4Search.Maps
