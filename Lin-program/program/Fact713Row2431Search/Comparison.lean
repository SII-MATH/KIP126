import Fact713Row2431Search.Maps
import PageTransitionCertificates.InducedMap
import PageTransitionCertificates.Import
namespace Fact713Row2431Search.Comparison
open LinearCertificates PageTransitionCertificates ResolutionCertificates
def source : WireComparison := ⟨1,3,2,0,1,[false,false,false,false,true,false],[],[false,true],[false,true],[],[false,false,true,false,false,false]⟩
theorem source_complete : source.Valid := by lin_cert using ()
def target : WireComparison := ⟨1,4,2,0,1,[false,false,false,false,false,false,true,true],[],[true,true],[false,true],[],[false,false,false,true,false,false,false,false]⟩
theorem target_complete : target.Valid := by lin_cert using ()
def upperSource : WireComparison := ⟨1,2,5,1,3,[false,false,false,false,false,false,false,false,true,false],[false,false,false,false,true],[true,false,false,false,true,false,false,false,true,false,false,false,false,false,false],[true,false,false,false,false,false,true,false,false,false,false,false,true,false,false],[false,false,false,false,true],[false,false,false,false,false,false,false,true,false,false]⟩
theorem upperSource_complete : upperSource.Valid := by lin_cert using ()
def upperTarget : WireComparison := ⟨1,2,5,2,4,[false,false,false,false,false,false,false,false,false,false],[false,false,false,false,false,false,false,false,false,true],[true,false,false,false,false,true,false,false,false,false,true,false,false,false,false,true,false,false,false,false],[true,false,false,false,false,false,true,false,false,false,false,false,true,false,false,false,false,false,true,false],[false,false,false,false,false,false,false,false,false,true],[false,false,false,false,false,false,false,false,false,false]⟩
theorem upperTarget_complete : upperTarget.Valid := by lin_cert using ()
def middleMap : Matrix 2 2 := Maps.m9_130.algebra.mat
def outMap : Matrix 4 3 := Maps.m11_131.algebra.mat
def inMap : Matrix 0 0 := Maps.m7_129.algebra.mat
def upperMiddleMap : Matrix 5 5 := Maps.m12_132.algebra.mat
def upperOutMap : Matrix 2 2 := Maps.m14_133.algebra.mat
def upperInMap : Matrix 2 1 := Maps.m10_131.algebra.mat
theorem compatible : CompatibleMap (matrixOf source.k source.m source.outgoing) (matrixOf source.m source.n source.incoming) (matrixOf target.k target.m target.outgoing) (matrixOf target.m target.n target.incoming) middleMap outMap inMap := by lin_cert using ()
theorem uppercompatible : CompatibleMap (matrixOf upperSource.k upperSource.m upperSource.outgoing) (matrixOf upperSource.m upperSource.n upperSource.incoming) (matrixOf upperTarget.k upperTarget.m upperTarget.outgoing) (matrixOf upperTarget.m upperTarget.n upperTarget.incoming) upperMiddleMap upperOutMap upperInMap := by lin_cert using ()
#print axioms source_complete
#print axioms target_complete
#print axioms upperSource_complete
#print axioms upperTarget_complete
#print axioms compatible
#print axioms uppercompatible
end Fact713Row2431Search.Comparison
