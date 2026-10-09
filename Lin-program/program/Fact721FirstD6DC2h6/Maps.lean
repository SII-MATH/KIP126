import Fact721FirstD6DC2h6.Data
namespace Fact721FirstD6DC2h6.Maps
open LinearCertificates PageTransitionCertificates ModuleToModuleCertificates
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def firstSphere : WireComparison := page_comparison% "Fact721FirstD6DC2h6/wire/firstSphere.json"
theorem firstSphere_valid : firstSphere.Valid := by lin_cert using ()
#print axioms firstSphere_valid
def firstDetector : WireComparison := page_comparison% "Fact721FirstD6DC2h6/wire/firstDetector.json"
theorem firstDetector_valid : firstDetector.Valid := by lin_cert using ()
#print axioms firstDetector_valid
def firstMap : ShiftedWire := shifted_module_map% "Fact721FirstD6DC2h6/wire/firstMap.json"
theorem firstMap_valid : firstMap.Valid := by lin_cert using ()
#print axioms firstMap_valid
def firstMapUpper : ShiftedWire := shifted_module_map% "Fact721FirstD6DC2h6/wire/firstMapUpper.json"
theorem firstMapUpper_valid : firstMapUpper.Valid := by lin_cert using ()
#print axioms firstMapUpper_valid
def firstMapLower : ShiftedWire := shifted_module_map% "Fact721FirstD6DC2h6/wire/firstMapLower.json"
theorem firstMapLower_valid : firstMapLower.Valid := by lin_cert using ()
#print axioms firstMapLower_valid
theorem first_compatible : CompatibleMap
    (matrixOf firstSphere.k firstSphere.m firstSphere.outgoing) (matrixOf firstSphere.m firstSphere.n firstSphere.incoming)
    (matrixOf firstDetector.k firstDetector.m firstDetector.outgoing) (matrixOf firstDetector.m firstDetector.n firstDetector.incoming)
    firstMap.algebra.mat firstMapUpper.algebra.mat firstMapLower.algebra.mat := by lin_cert using ()
def firstMap3 := coordinateMap firstSphere.comparison firstDetector.comparison firstMap.algebra.mat
#print axioms first_compatible
def incoming4Sphere : WireComparison := page_comparison% "Fact721FirstD6DC2h6/wire/incoming4Sphere.json"
theorem incoming4Sphere_valid : incoming4Sphere.Valid := by lin_cert using ()
#print axioms incoming4Sphere_valid
def incoming4Detector : WireComparison := page_comparison% "Fact721FirstD6DC2h6/wire/incoming4Detector.json"
theorem incoming4Detector_valid : incoming4Detector.Valid := by lin_cert using ()
#print axioms incoming4Detector_valid
def incoming4Map : ShiftedWire := shifted_module_map% "Fact721FirstD6DC2h6/wire/incoming4Map.json"
theorem incoming4Map_valid : incoming4Map.Valid := by lin_cert using ()
#print axioms incoming4Map_valid
def incoming4MapUpper : ShiftedWire := shifted_module_map% "Fact721FirstD6DC2h6/wire/incoming4MapUpper.json"
theorem incoming4MapUpper_valid : incoming4MapUpper.Valid := by lin_cert using ()
#print axioms incoming4MapUpper_valid
def incoming4MapLower : ShiftedWire := shifted_module_map% "Fact721FirstD6DC2h6/wire/incoming4MapLower.json"
theorem incoming4MapLower_valid : incoming4MapLower.Valid := by lin_cert using ()
#print axioms incoming4MapLower_valid
theorem incoming4_compatible : CompatibleMap
    (matrixOf incoming4Sphere.k incoming4Sphere.m incoming4Sphere.outgoing) (matrixOf incoming4Sphere.m incoming4Sphere.n incoming4Sphere.incoming)
    (matrixOf incoming4Detector.k incoming4Detector.m incoming4Detector.outgoing) (matrixOf incoming4Detector.m incoming4Detector.n incoming4Detector.incoming)
    incoming4Map.algebra.mat incoming4MapUpper.algebra.mat incoming4MapLower.algebra.mat := by lin_cert using ()
def incoming4Map3 := coordinateMap incoming4Sphere.comparison incoming4Detector.comparison incoming4Map.algebra.mat
#print axioms incoming4_compatible
def incoming5Sphere : WireComparison := page_comparison% "Fact721FirstD6DC2h6/wire/incoming5Sphere.json"
theorem incoming5Sphere_valid : incoming5Sphere.Valid := by lin_cert using ()
#print axioms incoming5Sphere_valid
def incoming5Detector : WireComparison := page_comparison% "Fact721FirstD6DC2h6/wire/incoming5Detector.json"
theorem incoming5Detector_valid : incoming5Detector.Valid := by lin_cert using ()
#print axioms incoming5Detector_valid
def incoming5Map : ShiftedWire := shifted_module_map% "Fact721FirstD6DC2h6/wire/incoming5Map.json"
theorem incoming5Map_valid : incoming5Map.Valid := by lin_cert using ()
#print axioms incoming5Map_valid
def incoming5MapUpper : ShiftedWire := shifted_module_map% "Fact721FirstD6DC2h6/wire/incoming5MapUpper.json"
theorem incoming5MapUpper_valid : incoming5MapUpper.Valid := by lin_cert using ()
#print axioms incoming5MapUpper_valid
def incoming5MapLower : ShiftedWire := shifted_module_map% "Fact721FirstD6DC2h6/wire/incoming5MapLower.json"
theorem incoming5MapLower_valid : incoming5MapLower.Valid := by lin_cert using ()
#print axioms incoming5MapLower_valid
theorem incoming5_compatible : CompatibleMap
    (matrixOf incoming5Sphere.k incoming5Sphere.m incoming5Sphere.outgoing) (matrixOf incoming5Sphere.m incoming5Sphere.n incoming5Sphere.incoming)
    (matrixOf incoming5Detector.k incoming5Detector.m incoming5Detector.outgoing) (matrixOf incoming5Detector.m incoming5Detector.n incoming5Detector.incoming)
    incoming5Map.algebra.mat incoming5MapUpper.algebra.mat incoming5MapLower.algebra.mat := by lin_cert using ()
def incoming5Map3 := coordinateMap incoming5Sphere.comparison incoming5Detector.comparison incoming5Map.algebra.mat
#print axioms incoming5_compatible
def targetSphere : WireComparison := page_comparison% "Fact721FirstD6DC2h6/wire/targetSphere.json"
theorem targetSphere_valid : targetSphere.Valid := by lin_cert using ()
#print axioms targetSphere_valid
def targetDetector : WireComparison := page_comparison% "Fact721FirstD6DC2h6/wire/targetDetector.json"
theorem targetDetector_valid : targetDetector.Valid := by lin_cert using ()
#print axioms targetDetector_valid
def targetMap : ShiftedWire := shifted_module_map% "Fact721FirstD6DC2h6/wire/targetMap.json"
theorem targetMap_valid : targetMap.Valid := by lin_cert using ()
#print axioms targetMap_valid
def targetMapUpper : ShiftedWire := shifted_module_map% "Fact721FirstD6DC2h6/wire/targetMapUpper.json"
theorem targetMapUpper_valid : targetMapUpper.Valid := by lin_cert using ()
#print axioms targetMapUpper_valid
def targetMapLower : ShiftedWire := shifted_module_map% "Fact721FirstD6DC2h6/wire/targetMapLower.json"
theorem targetMapLower_valid : targetMapLower.Valid := by lin_cert using ()
#print axioms targetMapLower_valid
theorem target_compatible : CompatibleMap
    (matrixOf targetSphere.k targetSphere.m targetSphere.outgoing) (matrixOf targetSphere.m targetSphere.n targetSphere.incoming)
    (matrixOf targetDetector.k targetDetector.m targetDetector.outgoing) (matrixOf targetDetector.m targetDetector.n targetDetector.incoming)
    targetMap.algebra.mat targetMapUpper.algebra.mat targetMapLower.algebra.mat := by lin_cert using ()
def targetMap3 := coordinateMap targetSphere.comparison targetDetector.comparison targetMap.algebra.mat
#print axioms target_compatible
def incoming3 : WireComparison := page_comparison% "Fact721FirstD6DC2h6/wire/incoming3.json"
theorem incoming3_valid : incoming3.Valid := by lin_cert using ()
#print axioms incoming3_valid
def incoming3prior : WireComparison := page_comparison% "Fact721FirstD6DC2h6/wire/incoming3prior.json"
theorem incoming3prior_valid : incoming3prior.Valid := by lin_cert using ()
#print axioms incoming3prior_valid
def incoming3out : WireComparison := page_comparison% "Fact721FirstD6DC2h6/wire/incoming3out.json"
theorem incoming3out_valid : incoming3out.Valid := by lin_cert using ()
#print axioms incoming3out_valid
theorem incoming5_map3 : ∀ v : Vec 2, eval incoming5Map3 v = v := by decide
theorem target_map3 : ∀ v : Vec 1, eval targetMap3 v = (fun _ => v ⟨0,by decide⟩) := by decide
theorem first_map3_named : eval firstMap3 (fun i => i.val == 1) = zero := by decide
#print axioms incoming5_map3
#print axioms target_map3
#print axioms first_map3_named
end Fact721FirstD6DC2h6.Maps
