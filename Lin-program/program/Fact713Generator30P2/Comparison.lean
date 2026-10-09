import Fact713Generator30P2.Maps
import PageTransitionCertificates.Import
import PageTransitionCertificates.InducedMap
namespace Fact713Generator30P2.Comparison
open LinearCertificates PageTransitionCertificates
set_option maxRecDepth 100000
set_option maxHeartbeats 8000000
def Cnu_10_55 : WireComparison := page_comparison% "Fact713Generator30P2/quotient/Cnu_10_55.json"
theorem Cnu_10_55_valid : Cnu_10_55.Valid := by lin_cert using ()
#print axioms Cnu_10_55_valid
def Cnu_13_57 : WireComparison := page_comparison% "Fact713Generator30P2/quotient/Cnu_13_57.json"
theorem Cnu_13_57_valid : Cnu_13_57.Valid := by lin_cert using ()
#print axioms Cnu_13_57_valid
def Cnu_18_85 : WireComparison := page_comparison% "Fact713Generator30P2/quotient/Cnu_18_85.json"
theorem Cnu_18_85_valid : Cnu_18_85.Valid := by lin_cert using ()
#print axioms Cnu_18_85_valid
def Cnu_21_87 : WireComparison := page_comparison% "Fact713Generator30P2/quotient/Cnu_21_87.json"
theorem Cnu_21_87_valid : Cnu_21_87.Valid := by lin_cert using ()
#print axioms Cnu_21_87_valid
def S0_8_30 : WireComparison := page_comparison% "Fact713Generator30P2/quotient/S0_8_30.json"
theorem S0_8_30_valid : S0_8_30.Valid := by lin_cert using ()
#print axioms S0_8_30_valid
def S0_11_32 : WireComparison := page_comparison% "Fact713Generator30P2/quotient/S0_11_32.json"
theorem S0_11_32_valid : S0_11_32.Valid := by lin_cert using ()
#print axioms S0_11_32_valid
theorem factor_10_55_compatible : CompatibleMap
    (matrixOf Cnu_10_55.k Cnu_10_55.m Cnu_10_55.outgoing) (matrixOf Cnu_10_55.m Cnu_10_55.n Cnu_10_55.incoming)
    (matrixOf Cnu_18_85.k Cnu_18_85.m Cnu_18_85.outgoing) (matrixOf Cnu_18_85.m Cnu_18_85.n Cnu_18_85.incoming)
    Maps.factor_10_55.algebra.mat Maps.factor_12_56.algebra.mat Maps.factor_8_54.algebra.mat := by lin_cert using ()
def factor_10_55_E3 := coordinateMap Cnu_10_55.comparison Cnu_18_85.comparison Maps.factor_10_55.algebra.mat
#print axioms factor_10_55_compatible
theorem factor_13_57_compatible : CompatibleMap
    (matrixOf Cnu_13_57.k Cnu_13_57.m Cnu_13_57.outgoing) (matrixOf Cnu_13_57.m Cnu_13_57.n Cnu_13_57.incoming)
    (matrixOf Cnu_21_87.k Cnu_21_87.m Cnu_21_87.outgoing) (matrixOf Cnu_21_87.m Cnu_21_87.n Cnu_21_87.incoming)
    Maps.factor_13_57.algebra.mat Maps.factor_15_58.algebra.mat Maps.factor_11_56.algebra.mat := by lin_cert using ()
def factor_13_57_E3 := coordinateMap Cnu_13_57.comparison Cnu_21_87.comparison Maps.factor_13_57.algebra.mat
#print axioms factor_13_57_compatible
end Fact713Generator30P2.Comparison
