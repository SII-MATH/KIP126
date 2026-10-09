import ModuleToModuleCertificates.ShiftedImport
import PageTransitionCertificates.Import
import PageTransitionCertificates.InducedMap
namespace Fact721FirstD6DC2h6.Data
open LinearCertificates PageTransitionCertificates ModuleToModuleCertificates
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def d0 : WireComparison := page_comparison% "Fact721FirstD6DC2h6/wire/d0.json"
theorem d0_valid : d0.Valid := by lin_cert using ()
#print axioms d0_valid
def d0Out3 : WireComparison := page_comparison% "Fact721FirstD6DC2h6/wire/d0Out3.json"
theorem d0Out3_valid : d0Out3.Valid := by lin_cert using ()
#print axioms d0Out3_valid
def d0Out4 : WireComparison := page_comparison% "Fact721FirstD6DC2h6/wire/d0Out4.json"
theorem d0Out4_valid : d0Out4.Valid := by lin_cert using ()
#print axioms d0Out4_valid
def y : WireComparison := page_comparison% "Fact721FirstD6DC2h6/wire/y.json"
theorem y_valid : y.Valid := by lin_cert using ()
#print axioms y_valid
def yOut3 : WireComparison := page_comparison% "Fact721FirstD6DC2h6/wire/yOut3.json"
theorem yOut3_valid : yOut3.Valid := by lin_cert using ()
#print axioms yOut3_valid
def yOutOut3 : WireComparison := page_comparison% "Fact721FirstD6DC2h6/wire/yOutOut3.json"
theorem yOutOut3_valid : yOutOut3.Valid := by lin_cert using ()
#print axioms yOutOut3_valid
def z : WireComparison := page_comparison% "Fact721FirstD6DC2h6/wire/z.json"
theorem z_valid : z.Valid := by lin_cert using ()
#print axioms z_valid
def source : WireComparison := page_comparison% "Fact721FirstD6DC2h6/wire/source.json"
theorem source_valid : source.Valid := by lin_cert using ()
#print axioms source_valid
def target : WireComparison := page_comparison% "Fact721FirstD6DC2h6/wire/target.json"
theorem target_valid : target.Valid := by lin_cert using ()
#print axioms target_valid
def sourceAction : ShiftedWire := shifted_module_map% "Fact721FirstD6DC2h6/wire/sourceAction.json"
theorem sourceAction_valid : sourceAction.Valid := by lin_cert using ()
#print axioms sourceAction_valid
def sourceActionUpper : ShiftedWire := shifted_module_map% "Fact721FirstD6DC2h6/wire/sourceActionUpper.json"
theorem sourceActionUpper_valid : sourceActionUpper.Valid := by lin_cert using ()
#print axioms sourceActionUpper_valid
def sourceActionLower : ShiftedWire := shifted_module_map% "Fact721FirstD6DC2h6/wire/sourceActionLower.json"
theorem sourceActionLower_valid : sourceActionLower.Valid := by lin_cert using ()
#print axioms sourceActionLower_valid
def targetAction : ShiftedWire := shifted_module_map% "Fact721FirstD6DC2h6/wire/targetAction.json"
theorem targetAction_valid : targetAction.Valid := by lin_cert using ()
#print axioms targetAction_valid
def targetActionUpper : ShiftedWire := shifted_module_map% "Fact721FirstD6DC2h6/wire/targetActionUpper.json"
theorem targetActionUpper_valid : targetActionUpper.Valid := by lin_cert using ()
#print axioms targetActionUpper_valid
def targetActionLower : ShiftedWire := shifted_module_map% "Fact721FirstD6DC2h6/wire/targetActionLower.json"
theorem targetActionLower_valid : targetActionLower.Valid := by lin_cert using ()
#print axioms targetActionLower_valid
theorem sourceAction_compatible : CompatibleMap
    (matrixOf y.k y.m y.outgoing) (matrixOf y.m y.n y.incoming)
    (matrixOf source.k source.m source.outgoing) (matrixOf source.m source.n source.incoming)
    sourceAction.algebra.mat sourceActionUpper.algebra.mat sourceActionLower.algebra.mat := by lin_cert using ()
def sourceAction3 := coordinateMap y.comparison source.comparison sourceAction.algebra.mat
#print axioms sourceAction_compatible
theorem targetAction_compatible : CompatibleMap
    (matrixOf z.k z.m z.outgoing) (matrixOf z.m z.n z.incoming)
    (matrixOf target.k target.m target.outgoing) (matrixOf target.m target.n target.incoming)
    targetAction.algebra.mat targetActionUpper.algebra.mat targetActionLower.algebra.mat := by lin_cert using ()
def targetAction3 := coordinateMap z.comparison target.comparison targetAction.algebra.mat
#print axioms targetAction_compatible
theorem source_action3 : ∀ v : Vec 1, eval sourceAction3 v = (fun i => if i.val = 0 then v ⟨0,by decide⟩ else false) := by decide
theorem target_action3 : ∀ v : Vec 1, eval targetAction3 v = zero := by decide
#print axioms source_action3
#print axioms target_action3
end Fact721FirstD6DC2h6.Data
