import Fact762SphereGDetection.Data
import ModuleToModuleCertificates.ShiftedImport
import PageTransitionCertificates.InducedMap
namespace Fact762SphereGDetection.BySigmaData
open LinearCertificates PageTransitionCertificates ModuleToModuleCertificates
set_option maxRecDepth 8192
set_option maxHeartbeats 8000000
def m17_156 : ShiftedWire := shifted_module_map% "Fact762SphereGDetection/mapwire/m17_156.json"
theorem m17_156_valid : m17_156.Valid := by lin_cert using ()
#print axioms m17_156_valid
def m19_157 : ShiftedWire := shifted_module_map% "Fact762SphereGDetection/mapwire/m19_157.json"
theorem m19_157_valid : m19_157.Valid := by lin_cert using ()
#print axioms m19_157_valid
def m21_158 : ShiftedWire := shifted_module_map% "Fact762SphereGDetection/mapwire/m21_158.json"
theorem m21_158_valid : m21_158.Valid := by lin_cert using ()
#print axioms m21_158_valid
def source : WireComparison := page_comparison% "Fact762SphereGDetection/wire/bySigma2.json"
theorem source_valid : source.Valid := by lin_cert using ()
abbrev target := Data.w20_165_2
theorem compatible : CompatibleMap (matrixOf source.k source.m source.outgoing) (matrixOf source.m source.n source.incoming) (matrixOf target.k target.m target.outgoing) (matrixOf target.m target.n target.incoming) m19_157.algebra.mat m21_158.algebra.mat m17_156.algebra.mat := by lin_cert using ()
def quotientMap := coordinateMap source.comparison target.comparison m19_157.algebra.mat
def named2 : Vec 3 := fun i => i.val == 2
def target2 : Vec 3 := fun i => i.val == 2
def named3 : Vec 3 := fun i => i.val == 2
def target3 : Vec 2 := fun i => i.val == 0
theorem named2_map : eval m19_157.algebra.mat named2 = target2 := by decide
theorem source_next : eval source.comparison.projection named2 = named3 := by decide
theorem target_next : eval target.comparison.projection target2 = target3 := by decide
theorem named3_map : eval quotientMap named3 = target3 := by decide
#print axioms source_valid
#print axioms compatible
#print axioms named2_map
#print axioms source_next
#print axioms target_next
#print axioms named3_map
end Fact762SphereGDetection.BySigmaData
