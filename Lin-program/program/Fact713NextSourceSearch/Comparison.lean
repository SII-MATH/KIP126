import Fact713NextSourceSearch.Maps
import PageTransitionCertificates.InducedMap
import PageTransitionCertificates.Import
namespace Fact713NextSourceSearch.Comparison
open LinearCertificates PageTransitionCertificates ResolutionCertificates
def source : WireComparison := ⟨1,1,3,3,2,[false,false,false],[false,false,false,false,false,false,true,true,false],[true,false,false,true,false,false],[true,false,false,false,true,false],[false,false,true,false,false,false,false,false,false],[false,false,false]⟩
theorem source_complete : source.Valid := by lin_cert using ()
def target : WireComparison := ⟨1,3,2,3,1,[false,false,false,false,true,true],[false,false,false,false,false,false],[true,true],[false,true],[false,false,false,false,false,false],[false,false,true,false,false,false]⟩
theorem target_complete : target.Valid := by lin_cert using ()
def upperSource : WireComparison := ⟨1,3,2,3,2,[false,false,false,false,false,false],[false,false,false,false,false,false],[true,false,false,true],[true,false,false,true],[false,false,false,false,false,false],[false,false,false,false,false,false]⟩
theorem upperSource_complete : upperSource.Valid := by lin_cert using ()
def upperTarget : WireComparison := ⟨1,3,3,4,3,[false,false,false,false,false,false,false,false,false],[false,false,false,false,false,false,false,false,false,false,false,false],[true,false,false,false,true,false,false,false,true],[true,false,false,false,true,false,false,false,true],[false,false,false,false,false,false,false,false,false,false,false,false],[false,false,false,false,false,false,false,false,false]⟩
theorem upperTarget_complete : upperTarget.Valid := by lin_cert using ()
def middleMap : Matrix 2 3 := Maps.m12_134.algebra.mat
def outMap : Matrix 3 1 := Maps.m14_135.algebra.mat
def inMap : Matrix 3 3 := Maps.m10_133.algebra.mat
def upperMiddleMap : Matrix 3 2 := Maps.m15_136.algebra.mat
def upperOutMap : Matrix 3 3 := Maps.m17_137.algebra.mat
def upperInMap : Matrix 4 3 := Maps.m13_135.algebra.mat
theorem compatible : CompatibleMap (matrixOf source.k source.m source.outgoing) (matrixOf source.m source.n source.incoming) (matrixOf target.k target.m target.outgoing) (matrixOf target.m target.n target.incoming) middleMap outMap inMap := by lin_cert using ()
theorem uppercompatible : CompatibleMap (matrixOf upperSource.k upperSource.m upperSource.outgoing) (matrixOf upperSource.m upperSource.n upperSource.incoming) (matrixOf upperTarget.k upperTarget.m upperTarget.outgoing) (matrixOf upperTarget.m upperTarget.n upperTarget.incoming) upperMiddleMap upperOutMap upperInMap := by lin_cert using ()
#print axioms compatible
#print axioms uppercompatible
end Fact713NextSourceSearch.Comparison
