import Fact721FirstD4Search.Maps
import PageTransitionCertificates.InducedMap
import PageTransitionCertificates.Import
namespace Fact721FirstD4Search.Comparison
open LinearCertificates PageTransitionCertificates ResolutionCertificates
def siS : WireComparison := ⟨1,0,1,1,1,[],[false],[true],[true],[false],[]⟩
theorem siS_valid : siS.Valid := by lin_cert using ()
#print axioms siS_valid
def siD : WireComparison := ⟨1,1,2,1,2,[false,false],[false,false],[true,false,false,true],[true,false,false,true],[false,false],[false,false]⟩
theorem siD_valid : siD.Valid := by lin_cert using ()
#print axioms siD_valid
def siMap := Maps.m8_131.algebra.mat
def siOut := Maps.m10_132.algebra.mat
def siIn := Maps.m6_130.algebra.mat
theorem si_compatible : CompatibleMap (matrixOf siS.k siS.m siS.outgoing) (matrixOf siS.m siS.n siS.incoming) (matrixOf siD.k siD.m siD.outgoing) (matrixOf siD.m siD.n siD.incoming) siMap siOut siIn := by lin_cert using ()
def siE3 := coordinateMap siS.comparison siD.comparison siMap
#print axioms si_compatible
def sS : WireComparison := ⟨1,1,2,2,2,[false,false],[false,false,false,false],[true,false,false,true],[true,false,false,true],[false,false,false,false],[false,false]⟩
theorem sS_valid : sS.Valid := by lin_cert using ()
#print axioms sS_valid
def sD : WireComparison := ⟨1,0,1,1,1,[],[false],[true],[true],[false],[]⟩
theorem sD_valid : sD.Valid := by lin_cert using ()
#print axioms sD_valid
def sMap := Maps.m11_133.algebra.mat
def sOut := Maps.m13_134.algebra.mat
def sIn := Maps.m9_132.algebra.mat
theorem s_compatible : CompatibleMap (matrixOf sS.k sS.m sS.outgoing) (matrixOf sS.m sS.n sS.incoming) (matrixOf sD.k sD.m sD.outgoing) (matrixOf sD.m sD.n sD.incoming) sMap sOut sIn := by lin_cert using ()
def sE3 := coordinateMap sS.comparison sD.comparison sMap
#print axioms s_compatible
def soS : WireComparison := ⟨1,2,1,3,1,[false,false],[false,false,false],[true],[true],[false,false,false],[false,false]⟩
theorem soS_valid : soS.Valid := by lin_cert using ()
#print axioms soS_valid
def soD : WireComparison := ⟨1,3,3,2,1,[false,false,false,true,false,false,true,false,false],[false,false,false,false,true,false],[false,true,false],[false,true,false],[false,false,true,false,false,false],[false,true,false,false,false,false,false,false,false]⟩
theorem soD_valid : soD.Valid := by lin_cert using ()
#print axioms soD_valid
def soMap := Maps.m14_135.algebra.mat
def soOut := Maps.m16_136.algebra.mat
def soIn := Maps.m12_134.algebra.mat
theorem so_compatible : CompatibleMap (matrixOf soS.k soS.m soS.outgoing) (matrixOf soS.m soS.n soS.incoming) (matrixOf soD.k soD.m soD.outgoing) (matrixOf soD.m soD.n soD.incoming) soMap soOut soIn := by lin_cert using ()
def soE3 := coordinateMap soS.comparison soD.comparison soMap
#print axioms so_compatible
def tiS : WireComparison := ⟨1,1,3,3,2,[false,false,false],[false,false,false,false,false,false,true,true,false],[true,false,false,true,false,false],[true,false,false,false,true,false],[false,false,true,false,false,false,false,false,false],[false,false,false]⟩
theorem tiS_valid : tiS.Valid := by lin_cert using ()
#print axioms tiS_valid
def tiD : WireComparison := ⟨1,3,2,1,1,[false,false,false,false,true,false],[false,false],[false,true],[false,true],[false,false],[false,false,true,false,false,false]⟩
theorem tiD_valid : tiD.Valid := by lin_cert using ()
#print axioms tiD_valid
def tiMap := Maps.m12_134.algebra.mat
def tiOut := Maps.m14_135.algebra.mat
def tiIn := Maps.m10_133.algebra.mat
theorem ti_compatible : CompatibleMap (matrixOf tiS.k tiS.m tiS.outgoing) (matrixOf tiS.m tiS.n tiS.incoming) (matrixOf tiD.k tiD.m tiD.outgoing) (matrixOf tiD.m tiD.n tiD.incoming) tiMap tiOut tiIn := by lin_cert using ()
def tiE3 := coordinateMap tiS.comparison tiD.comparison tiMap
#print axioms ti_compatible
def tS : WireComparison := ⟨1,3,2,3,2,[false,false,false,false,false,false],[false,false,false,false,false,false],[true,false,false,true],[true,false,false,true],[false,false,false,false,false,false],[false,false,false,false,false,false]⟩
theorem tS_valid : tS.Valid := by lin_cert using ()
#print axioms tS_valid
def tD : WireComparison := ⟨1,2,3,3,2,[true,false,false,false,false,false],[false,false,false,false,false,false,false,false,false],[false,false,true,false,false,true],[false,true,false,false,false,true],[false,false,false,false,false,false,false,false,false],[true,false,false,false,false,false]⟩
theorem tD_valid : tD.Valid := by lin_cert using ()
#print axioms tD_valid
def tMap := Maps.m15_136.algebra.mat
def tOut := Maps.m17_137.algebra.mat
def tIn := Maps.m13_135.algebra.mat
theorem t_compatible : CompatibleMap (matrixOf tS.k tS.m tS.outgoing) (matrixOf tS.m tS.n tS.incoming) (matrixOf tD.k tD.m tD.outgoing) (matrixOf tD.m tD.n tD.incoming) tMap tOut tIn := by lin_cert using ()
def tE3 := coordinateMap tS.comparison tD.comparison tMap
#print axioms t_compatible
def toS : WireComparison := ⟨1,4,3,3,1,[false,false,false,false,false,false,false,false,false,false,true,false],[false,false,false,false,false,false,true,false,false],[true,false,false],[true,false,false],[false,false,true,false,false,false,false,false,false],[false,false,false,false,false,false,false,true,false,false,false,false]⟩
theorem toS_valid : toS.Valid := by lin_cert using ()
#print axioms toS_valid
def toD : WireComparison := ⟨1,4,4,3,3,[false,false,false,false,false,false,false,false,false,false,false,false,true,false,false,false],[false,false,false,false,false,false,false,false,false,false,false,false],[false,false,false,true,false,false,false,true,false,false,false,true],[false,true,false,false,false,false,true,false,false,false,false,true],[false,false,false,false,false,false,false,false,false,false,false,false],[false,false,false,true,false,false,false,false,false,false,false,false,false,false,false,false]⟩
theorem toD_valid : toD.Valid := by lin_cert using ()
#print axioms toD_valid
def toMap := Maps.m18_138.algebra.mat
def toOut := Maps.m20_139.algebra.mat
def toIn := Maps.m16_137.algebra.mat
theorem to_compatible : CompatibleMap (matrixOf toS.k toS.m toS.outgoing) (matrixOf toS.m toS.n toS.incoming) (matrixOf toD.k toD.m toD.outgoing) (matrixOf toD.m toD.n toD.incoming) toMap toOut toIn := by lin_cert using ()
def toE3 := coordinateMap toS.comparison toD.comparison toMap
#print axioms to_compatible
end Fact721FirstD4Search.Comparison
