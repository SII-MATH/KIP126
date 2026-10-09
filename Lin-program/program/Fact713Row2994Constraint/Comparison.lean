import Fact713Row2994Constraint.Maps
import PageTransitionCertificates.InducedMap
import PageTransitionCertificates.Import
namespace Fact713Row2994Constraint.Comparison
open LinearCertificates PageTransitionCertificates ResolutionCertificates
def source : WireComparison := ⟨1,3,4,2,1,[true,true,false,false,false,false,false,false,false,true,true,false],[false,false,false,false,false,false,true,false],[true,true,true,false],[false,false,true,false],[false,false,false,true,false,false,false,false],[true,false,true,false,false,true,false,false,false,false,false,false]⟩
theorem source_complete : source.Valid := by lin_cert using ()
def target : WireComparison := ⟨1,3,4,4,1,[false,false,false,false,false,false,false,false,false,true,true,false],[true,false,false,false,true,false,false,false,true,false,false,false,false,false,false,true],[true,false,false,false],[true,false,true,false],[false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,true],[false,false,false,false,false,true,false,false,false,false,false,false]⟩
theorem target_complete : target.Valid := by lin_cert using ()
def upperSource : WireComparison := ⟨1,3,3,3,2,[false,false,false,false,false,false,false,false,false],[false,false,false,false,false,false,false,true,true],[true,false,false,true,false,false],[true,false,false,false,true,false],[false,false,false,false,false,true,false,false,false],[false,false,false,false,false,false,false,false,false]⟩
theorem upperSource_complete : upperSource.Valid := by lin_cert using ()
def upperTarget : WireComparison := ⟨1,1,4,2,2,[false,true,false,false],[false,false,false,false,false,false,true,true],[true,false,false,false,false,true,false,false],[true,false,false,false,false,false,true,false],[false,false,false,true,false,false,false,false],[false,true,false,false]⟩
theorem upperTarget_complete : upperTarget.Valid := by lin_cert using ()
def middleMap : Matrix 4 4 := Maps.m17_138.algebra.mat
def outMap : Matrix 3 3 := Maps.m19_139.algebra.mat
def inMap : Matrix 4 2 := Maps.m15_137.algebra.mat
def upperMiddleMap : Matrix 4 3 := Maps.m20_140.algebra.mat
def upperOutMap : Matrix 1 3 := Maps.m22_141.algebra.mat
def upperInMap : Matrix 2 3 := Maps.m18_139.algebra.mat
theorem compatible : CompatibleMap (matrixOf source.k source.m source.outgoing) (matrixOf source.m source.n source.incoming) (matrixOf target.k target.m target.outgoing) (matrixOf target.m target.n target.incoming) middleMap outMap inMap := by lin_cert using ()
theorem uppercompatible : CompatibleMap (matrixOf upperSource.k upperSource.m upperSource.outgoing) (matrixOf upperSource.m upperSource.n upperSource.incoming) (matrixOf upperTarget.k upperTarget.m upperTarget.outgoing) (matrixOf upperTarget.m upperTarget.n upperTarget.incoming) upperMiddleMap upperOutMap upperInMap := by lin_cert using ()
#print axioms compatible
#print axioms uppercompatible
end Fact713Row2994Constraint.Comparison
