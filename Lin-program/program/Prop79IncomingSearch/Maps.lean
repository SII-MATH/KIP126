import ModuleToModuleCertificates.ShiftedImport
namespace Prop79IncomingSearch.Maps
open ModuleToModuleCertificates LinProgramCertificates
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
def s11t137 : ShiftedWire := shifted_module_map% "Prop79IncomingSearch/bottom-wire/s11t137.json"
theorem s11t137_valid : s11t137.Valid := by lin_cert using ()
#print axioms s11t137_valid
def s12t138 : ShiftedWire := shifted_module_map% "Prop79IncomingSearch/bottom-wire/s12t138.json"
theorem s12t138_valid : s12t138.Valid := by lin_cert using ()
#print axioms s12t138_valid
def s13t138 : ShiftedWire := shifted_module_map% "Prop79IncomingSearch/bottom-wire/s13t138.json"
theorem s13t138_valid : s13t138.Valid := by lin_cert using ()
#print axioms s13t138_valid
def s14t139 : ShiftedWire := shifted_module_map% "Prop79IncomingSearch/bottom-wire/s14t139.json"
theorem s14t139_valid : s14t139.Valid := by lin_cert using ()
#print axioms s14t139_valid
def s16t140 : ShiftedWire := shifted_module_map% "Prop79IncomingSearch/bottom-wire/s16t140.json"
theorem s16t140_valid : s16t140.Valid := by lin_cert using ()
#print axioms s16t140_valid
def s9t136 : ShiftedWire := shifted_module_map% "Prop79IncomingSearch/bottom-wire/s9t136.json"
theorem s9t136_valid : s9t136.Valid := by lin_cert using ()
#print axioms s9t136_valid
end Prop79IncomingSearch.Maps
