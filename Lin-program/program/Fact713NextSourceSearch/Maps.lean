import ModuleToModuleCertificates.ShiftedImport
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
namespace Fact713NextSourceSearch.Maps
open ModuleToModuleCertificates LinProgramCertificates
def m10_133 : ShiftedWire := shifted_module_map% "Fact713NextSourceSearch/wire/s10t133.json"
theorem m10_133_valid : m10_133.Valid := by lin_cert using ()
def m12_134 : ShiftedWire := shifted_module_map% "Fact713NextSourceSearch/wire/s12t134.json"
theorem m12_134_valid : m12_134.Valid := by lin_cert using ()
def m14_135 : ShiftedWire := shifted_module_map% "Fact713NextSourceSearch/wire/s14t135.json"
theorem m14_135_valid : m14_135.Valid := by lin_cert using ()
def m13_135 : ShiftedWire := shifted_module_map% "Fact713NextSourceSearch/wire/s13t135.json"
theorem m13_135_valid : m13_135.Valid := by lin_cert using ()
def m15_136 : ShiftedWire := shifted_module_map% "Fact713NextSourceSearch/wire/s15t136.json"
theorem m15_136_valid : m15_136.Valid := by lin_cert using ()
def m17_137 : ShiftedWire := shifted_module_map% "Fact713NextSourceSearch/wire/s17t137.json"
theorem m17_137_valid : m17_137.Valid := by lin_cert using ()
#print axioms m12_134_valid
#print axioms m15_136_valid
end Fact713NextSourceSearch.Maps
