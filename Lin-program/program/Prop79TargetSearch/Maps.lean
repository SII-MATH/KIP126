import ModuleToModuleCertificates.ShiftedImport
namespace Prop79TargetSearch.Maps
open ModuleToModuleCertificates LinProgramCertificates
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
def s12t138 : ShiftedWire := shifted_module_map% "Prop79TargetSearch/bottom-wire/s12t138.json"
theorem s12t138_valid : s12t138.Valid := by lin_cert using ()
#print axioms s12t138_valid
def s14t139 : ShiftedWire := shifted_module_map% "Prop79TargetSearch/bottom-wire/s14t139.json"
theorem s14t139_valid : s14t139.Valid := by lin_cert using ()
#print axioms s14t139_valid
def s15t140 : ShiftedWire := shifted_module_map% "Prop79TargetSearch/bottom-wire/s15t140.json"
theorem s15t140_valid : s15t140.Valid := by lin_cert using ()
#print axioms s15t140_valid
def s16t140 : ShiftedWire := shifted_module_map% "Prop79TargetSearch/bottom-wire/s16t140.json"
theorem s16t140_valid : s16t140.Valid := by lin_cert using ()
#print axioms s16t140_valid
def s17t141 : ShiftedWire := shifted_module_map% "Prop79TargetSearch/bottom-wire/s17t141.json"
theorem s17t141_valid : s17t141.Valid := by lin_cert using ()
#print axioms s17t141_valid
def s19t142 : ShiftedWire := shifted_module_map% "Prop79TargetSearch/bottom-wire/s19t142.json"
theorem s19t142_valid : s19t142.Valid := by lin_cert using ()
#print axioms s19t142_valid
end Prop79TargetSearch.Maps
