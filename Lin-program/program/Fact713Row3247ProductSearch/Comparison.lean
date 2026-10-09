import Fact713Row3247ProductSearch.Maps
import PageTransitionCertificates.Import
import PageTransitionCertificates.InducedMap
namespace Fact713Row3247ProductSearch.Comparison
open LinearCertificates PageTransitionCertificates
set_option maxRecDepth 100000
set_option maxHeartbeats 8000000
def Cnu_10_55 : WireComparison := page_comparison% "Fact713Row3247ProductSearch/quotient/Cnu_10_55.json"
theorem Cnu_10_55_valid : Cnu_10_55.Valid := by lin_cert using ()
#print axioms Cnu_10_55_valid
def Cnu_13_57 : WireComparison := page_comparison% "Fact713Row3247ProductSearch/quotient/Cnu_13_57.json"
theorem Cnu_13_57_valid : Cnu_13_57.Valid := by lin_cert using ()
#print axioms Cnu_13_57_valid
def Cnu_22_163 : WireComparison := page_comparison% "Fact713Row3247ProductSearch/quotient/Cnu_22_163.json"
theorem Cnu_22_163_valid : Cnu_22_163.Valid := by lin_cert using ()
#print axioms Cnu_22_163_valid
def Cnu_25_165 : WireComparison := page_comparison% "Fact713Row3247ProductSearch/quotient/Cnu_25_165.json"
theorem Cnu_25_165_valid : Cnu_25_165.Valid := by lin_cert using ()
#print axioms Cnu_25_165_valid
def S0_12_108 : WireComparison := page_comparison% "Fact713Row3247ProductSearch/quotient/S0_12_108.json"
theorem S0_12_108_valid : S0_12_108.Valid := by lin_cert using ()
#print axioms S0_12_108_valid
def S0_15_110 : WireComparison := page_comparison% "Fact713Row3247ProductSearch/quotient/S0_15_110.json"
theorem S0_15_110_valid : S0_15_110.Valid := by lin_cert using ()
#print axioms S0_15_110_valid
theorem factor_10_55_compatible : CompatibleMap
    (matrixOf Cnu_10_55.k Cnu_10_55.m Cnu_10_55.outgoing) (matrixOf Cnu_10_55.m Cnu_10_55.n Cnu_10_55.incoming)
    (matrixOf Cnu_22_163.k Cnu_22_163.m Cnu_22_163.outgoing) (matrixOf Cnu_22_163.m Cnu_22_163.n Cnu_22_163.incoming)
    Maps.factor_10_55.algebra.mat Maps.factor_12_56.algebra.mat Maps.factor_8_54.algebra.mat := by lin_cert using ()
def factor_10_55_E3 := coordinateMap Cnu_10_55.comparison Cnu_22_163.comparison Maps.factor_10_55.algebra.mat
#print axioms factor_10_55_compatible
theorem factor_13_57_compatible : CompatibleMap
    (matrixOf Cnu_13_57.k Cnu_13_57.m Cnu_13_57.outgoing) (matrixOf Cnu_13_57.m Cnu_13_57.n Cnu_13_57.incoming)
    (matrixOf Cnu_25_165.k Cnu_25_165.m Cnu_25_165.outgoing) (matrixOf Cnu_25_165.m Cnu_25_165.n Cnu_25_165.incoming)
    Maps.factor_13_57.algebra.mat Maps.factor_15_58.algebra.mat Maps.factor_11_56.algebra.mat := by lin_cert using ()
def factor_13_57_E3 := coordinateMap Cnu_13_57.comparison Cnu_25_165.comparison Maps.factor_13_57.algebra.mat
#print axioms factor_13_57_compatible
end Fact713Row3247ProductSearch.Comparison
