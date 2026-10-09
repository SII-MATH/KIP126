import Row2916D4Search.Maps
import PageTransitionCertificates.Import
import PageTransitionCertificates.InducedMap
namespace Row2916D4Search.Comparison
open LinearCertificates PageTransitionCertificates
set_option maxRecDepth 100000
set_option maxHeartbeats 8000000
def Ceta_5_38 : WireComparison := page_comparison% "Row2916D4Search/quotient/Ceta_5_38.json"
theorem Ceta_5_38_valid : Ceta_5_38.Valid := by lin_cert using ()
#print axioms Ceta_5_38_valid
def Ceta_8_40 : WireComparison := page_comparison% "Row2916D4Search/quotient/Ceta_8_40.json"
theorem Ceta_8_40_valid : Ceta_8_40.Valid := by lin_cert using ()
#print axioms Ceta_8_40_valid
def Ceta_10_137 : WireComparison := page_comparison% "Row2916D4Search/quotient/Ceta_10_137.json"
theorem Ceta_10_137_valid : Ceta_10_137.Valid := by lin_cert using ()
#print axioms Ceta_10_137_valid
def Ceta_13_139 : WireComparison := page_comparison% "Row2916D4Search/quotient/Ceta_13_139.json"
theorem Ceta_13_139_valid : Ceta_13_139.Valid := by lin_cert using ()
#print axioms Ceta_13_139_valid
def Ceta_16_141 : WireComparison := page_comparison% "Row2916D4Search/quotient/Ceta_16_141.json"
theorem Ceta_16_141_valid : Ceta_16_141.Valid := by lin_cert using ()
#print axioms Ceta_16_141_valid
def Ceta_17_142 : WireComparison := page_comparison% "Row2916D4Search/quotient/Ceta_17_142.json"
theorem Ceta_17_142_valid : Ceta_17_142.Valid := by lin_cert using ()
#print axioms Ceta_17_142_valid
def S0_8_101 : WireComparison := page_comparison% "Row2916D4Search/quotient/S0_8_101.json"
theorem S0_8_101_valid : S0_8_101.Valid := by lin_cert using ()
#print axioms S0_8_101_valid
def S0_11_103 : WireComparison := page_comparison% "Row2916D4Search/quotient/S0_11_103.json"
theorem S0_11_103_valid : S0_11_103.Valid := by lin_cert using ()
#print axioms S0_11_103_valid
def S0_13_137 : WireComparison := page_comparison% "Row2916D4Search/quotient/S0_13_137.json"
theorem S0_13_137_valid : S0_13_137.Valid := by lin_cert using ()
#print axioms S0_13_137_valid
theorem top_13_139_compatible : CompatibleMap
    (matrixOf Ceta_13_139.k Ceta_13_139.m Ceta_13_139.outgoing) (matrixOf Ceta_13_139.m Ceta_13_139.n Ceta_13_139.incoming)
    (matrixOf S0_13_137.k S0_13_137.m S0_13_137.outgoing) (matrixOf S0_13_137.m S0_13_137.n S0_13_137.incoming)
    Maps.top_13_139.algebra.mat Maps.top_15_140.algebra.mat Maps.top_11_138.algebra.mat := by lin_cert using ()
def top_13_139_E3 := coordinateMap Ceta_13_139.comparison S0_13_137.comparison Maps.top_13_139.algebra.mat
#print axioms top_13_139_compatible
theorem source_5_38_compatible : CompatibleMap
    (matrixOf Ceta_5_38.k Ceta_5_38.m Ceta_5_38.outgoing) (matrixOf Ceta_5_38.m Ceta_5_38.n Ceta_5_38.incoming)
    (matrixOf Ceta_13_139.k Ceta_13_139.m Ceta_13_139.outgoing) (matrixOf Ceta_13_139.m Ceta_13_139.n Ceta_13_139.incoming)
    Maps.source_5_38.algebra.mat Maps.source_7_39.algebra.mat Maps.source_3_37.algebra.mat := by lin_cert using ()
def source_5_38_E3 := coordinateMap Ceta_5_38.comparison Ceta_13_139.comparison Maps.source_5_38.algebra.mat
#print axioms source_5_38_compatible
theorem right_8_40_compatible : CompatibleMap
    (matrixOf Ceta_8_40.k Ceta_8_40.m Ceta_8_40.outgoing) (matrixOf Ceta_8_40.m Ceta_8_40.n Ceta_8_40.incoming)
    (matrixOf Ceta_16_141.k Ceta_16_141.m Ceta_16_141.outgoing) (matrixOf Ceta_16_141.m Ceta_16_141.n Ceta_16_141.incoming)
    Maps.right_8_40.algebra.mat Maps.right_10_41.algebra.mat Maps.right_6_39.algebra.mat := by lin_cert using ()
def right_8_40_E3 := coordinateMap Ceta_8_40.comparison Ceta_16_141.comparison Maps.right_8_40.algebra.mat
#print axioms right_8_40_compatible
theorem left0_5_38_compatible : CompatibleMap
    (matrixOf Ceta_5_38.k Ceta_5_38.m Ceta_5_38.outgoing) (matrixOf Ceta_5_38.m Ceta_5_38.n Ceta_5_38.incoming)
    (matrixOf Ceta_16_141.k Ceta_16_141.m Ceta_16_141.outgoing) (matrixOf Ceta_16_141.m Ceta_16_141.n Ceta_16_141.incoming)
    Maps.left0_5_38.algebra.mat Maps.left0_7_39.algebra.mat Maps.left0_3_37.algebra.mat := by lin_cert using ()
def left0_5_38_E3 := coordinateMap Ceta_5_38.comparison Ceta_16_141.comparison Maps.left0_5_38.algebra.mat
#print axioms left0_5_38_compatible
theorem left1_5_38_compatible : CompatibleMap
    (matrixOf Ceta_5_38.k Ceta_5_38.m Ceta_5_38.outgoing) (matrixOf Ceta_5_38.m Ceta_5_38.n Ceta_5_38.incoming)
    (matrixOf Ceta_16_141.k Ceta_16_141.m Ceta_16_141.outgoing) (matrixOf Ceta_16_141.m Ceta_16_141.n Ceta_16_141.incoming)
    Maps.left1_5_38.algebra.mat Maps.left1_7_39.algebra.mat Maps.left1_3_37.algebra.mat := by lin_cert using ()
def left1_5_38_E3 := coordinateMap Ceta_5_38.comparison Ceta_16_141.comparison Maps.left1_5_38.algebra.mat
#print axioms left1_5_38_compatible
end Row2916D4Search.Comparison
