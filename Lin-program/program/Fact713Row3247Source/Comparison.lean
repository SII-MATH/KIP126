import Fact713Row3247Source.Maps
import PageTransitionCertificates.Import
import PageTransitionCertificates.InducedMap
namespace Fact713Row3247Source.Comparison
open LinearCertificates PageTransitionCertificates
set_option maxRecDepth 100000
set_option maxHeartbeats 8000000
def Cnu_18_145 : WireComparison := page_comparison% "Fact713Row3247Source/quotient/Cnu_18_145.json"
theorem Cnu_18_145_valid : Cnu_18_145.Valid := by lin_cert using ()
#print axioms Cnu_18_145_valid
def Cnu_21_147 : WireComparison := page_comparison% "Fact713Row3247Source/quotient/Cnu_21_147.json"
theorem Cnu_21_147_valid : Cnu_21_147.Valid := by lin_cert using ()
#print axioms Cnu_21_147_valid
def Cnu_19_146 : WireComparison := page_comparison% "Fact713Row3247Source/quotient/Cnu_19_146.json"
theorem Cnu_19_146_valid : Cnu_19_146.Valid := by lin_cert using ()
#print axioms Cnu_19_146_valid
def Cnu_22_148 : WireComparison := page_comparison% "Fact713Row3247Source/quotient/Cnu_22_148.json"
theorem Cnu_22_148_valid : Cnu_22_148.Valid := by lin_cert using ()
#print axioms Cnu_22_148_valid
def Cnu_22_163 : WireComparison := page_comparison% "Fact713Row3247Source/quotient/Cnu_22_163.json"
theorem Cnu_22_163_valid : Cnu_22_163.Valid := by lin_cert using ()
#print axioms Cnu_22_163_valid
def Cnu_25_165 : WireComparison := page_comparison% "Fact713Row3247Source/quotient/Cnu_25_165.json"
theorem Cnu_25_165_valid : Cnu_25_165.Valid := by lin_cert using ()
#print axioms Cnu_25_165_valid
def S0_18_141 : WireComparison := page_comparison% "Fact713Row3247Source/quotient/S0_18_141.json"
theorem S0_18_141_valid : S0_18_141.Valid := by lin_cert using ()
#print axioms S0_18_141_valid
def S0_21_143 : WireComparison := page_comparison% "Fact713Row3247Source/quotient/S0_21_143.json"
theorem S0_21_143_valid : S0_21_143.Valid := by lin_cert using ()
#print axioms S0_21_143_valid
def S0_1_1 : WireComparison := page_comparison% "Fact713Row3247Source/quotient/S0_1_1.json"
theorem S0_1_1_valid : S0_1_1.Valid := by lin_cert using ()
#print axioms S0_1_1_valid
def S0_4_3 : WireComparison := page_comparison% "Fact713Row3247Source/quotient/S0_4_3.json"
theorem S0_4_3_valid : S0_4_3.Valid := by lin_cert using ()
#print axioms S0_4_3_valid
def S0_4_18 : WireComparison := page_comparison% "Fact713Row3247Source/quotient/S0_4_18.json"
theorem S0_4_18_valid : S0_4_18.Valid := by lin_cert using ()
#print axioms S0_4_18_valid
def S0_7_20 : WireComparison := page_comparison% "Fact713Row3247Source/quotient/S0_7_20.json"
theorem S0_7_20_valid : S0_7_20.Valid := by lin_cert using ()
#print axioms S0_7_20_valid
theorem top_18_145_compatible : CompatibleMap
    (matrixOf Cnu_18_145.k Cnu_18_145.m Cnu_18_145.outgoing) (matrixOf Cnu_18_145.m Cnu_18_145.n Cnu_18_145.incoming)
    (matrixOf S0_18_141.k S0_18_141.m S0_18_141.outgoing) (matrixOf S0_18_141.m S0_18_141.n S0_18_141.incoming)
    Maps.top_18_145.algebra.mat Maps.top_20_146.algebra.mat Maps.top_16_144.algebra.mat := by lin_cert using ()
def top_18_145_E3 := coordinateMap Cnu_18_145.comparison S0_18_141.comparison Maps.top_18_145.algebra.mat
#print axioms top_18_145_compatible
theorem top_21_147_compatible : CompatibleMap
    (matrixOf Cnu_21_147.k Cnu_21_147.m Cnu_21_147.outgoing) (matrixOf Cnu_21_147.m Cnu_21_147.n Cnu_21_147.incoming)
    (matrixOf S0_21_143.k S0_21_143.m S0_21_143.outgoing) (matrixOf S0_21_143.m S0_21_143.n S0_21_143.incoming)
    Maps.top_21_147.algebra.mat Maps.top_23_148.algebra.mat Maps.top_19_146.algebra.mat := by lin_cert using ()
def top_21_147_E3 := coordinateMap Cnu_21_147.comparison S0_21_143.comparison Maps.top_21_147.algebra.mat
#print axioms top_21_147_compatible
theorem h0_18_145_compatible : CompatibleMap
    (matrixOf Cnu_18_145.k Cnu_18_145.m Cnu_18_145.outgoing) (matrixOf Cnu_18_145.m Cnu_18_145.n Cnu_18_145.incoming)
    (matrixOf Cnu_19_146.k Cnu_19_146.m Cnu_19_146.outgoing) (matrixOf Cnu_19_146.m Cnu_19_146.n Cnu_19_146.incoming)
    Maps.h0_18_145.algebra.mat Maps.h0_20_146.algebra.mat Maps.h0_16_144.algebra.mat := by lin_cert using ()
def h0_18_145_E3 := coordinateMap Cnu_18_145.comparison Cnu_19_146.comparison Maps.h0_18_145.algebra.mat
#print axioms h0_18_145_compatible
theorem h0_21_147_compatible : CompatibleMap
    (matrixOf Cnu_21_147.k Cnu_21_147.m Cnu_21_147.outgoing) (matrixOf Cnu_21_147.m Cnu_21_147.n Cnu_21_147.incoming)
    (matrixOf Cnu_22_148.k Cnu_22_148.m Cnu_22_148.outgoing) (matrixOf Cnu_22_148.m Cnu_22_148.n Cnu_22_148.incoming)
    Maps.h0_21_147.algebra.mat Maps.h0_23_148.algebra.mat Maps.h0_19_146.algebra.mat := by lin_cert using ()
def h0_21_147_E3 := coordinateMap Cnu_21_147.comparison Cnu_22_148.comparison Maps.h0_21_147.algebra.mat
#print axioms h0_21_147_compatible
theorem d0_18_145_compatible : CompatibleMap
    (matrixOf Cnu_18_145.k Cnu_18_145.m Cnu_18_145.outgoing) (matrixOf Cnu_18_145.m Cnu_18_145.n Cnu_18_145.incoming)
    (matrixOf Cnu_22_163.k Cnu_22_163.m Cnu_22_163.outgoing) (matrixOf Cnu_22_163.m Cnu_22_163.n Cnu_22_163.incoming)
    Maps.d0_18_145.algebra.mat Maps.d0_20_146.algebra.mat Maps.d0_16_144.algebra.mat := by lin_cert using ()
def d0_18_145_E3 := coordinateMap Cnu_18_145.comparison Cnu_22_163.comparison Maps.d0_18_145.algebra.mat
#print axioms d0_18_145_compatible
theorem d0_21_147_compatible : CompatibleMap
    (matrixOf Cnu_21_147.k Cnu_21_147.m Cnu_21_147.outgoing) (matrixOf Cnu_21_147.m Cnu_21_147.n Cnu_21_147.incoming)
    (matrixOf Cnu_25_165.k Cnu_25_165.m Cnu_25_165.outgoing) (matrixOf Cnu_25_165.m Cnu_25_165.n Cnu_25_165.incoming)
    Maps.d0_21_147.algebra.mat Maps.d0_23_148.algebra.mat Maps.d0_19_146.algebra.mat := by lin_cert using ()
def d0_21_147_E3 := coordinateMap Cnu_21_147.comparison Cnu_25_165.comparison Maps.d0_21_147.algebra.mat
#print axioms d0_21_147_compatible
end Fact713Row3247Source.Comparison
