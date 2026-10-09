import ModuleToModuleCertificates.ShiftedImport
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
namespace Fact713DC2h6Source.Maps
open ModuleToModuleCertificates LinProgramCertificates
def m9_132 : ShiftedWire := shifted_module_map% "Fact713DC2h6Source/wire/s9t132.json"
theorem m9_132_valid : m9_132.Valid := by lin_cert using ()
def m11_133 : ShiftedWire := shifted_module_map% "Fact713DC2h6Source/wire/s11t133.json"
theorem m11_133_valid : m11_133.Valid := by lin_cert using ()
def m13_134 : ShiftedWire := shifted_module_map% "Fact713DC2h6Source/wire/s13t134.json"
theorem m13_134_valid : m13_134.Valid := by lin_cert using ()
def m12_134 : ShiftedWire := shifted_module_map% "Fact713DC2h6Source/wire/s12t134.json"
theorem m12_134_valid : m12_134.Valid := by lin_cert using ()
def m14_135 : ShiftedWire := shifted_module_map% "Fact713DC2h6Source/wire/s14t135.json"
theorem m14_135_valid : m14_135.Valid := by lin_cert using ()
def m16_136 : ShiftedWire := shifted_module_map% "Fact713DC2h6Source/wire/s16t136.json"
theorem m16_136_valid : m16_136.Valid := by lin_cert using ()
#print axioms m11_133_valid
#print axioms m14_135_valid
end Fact713DC2h6Source.Maps
