import Fact713C2Row3143.MapActual
import PageTransitionCertificates.InducedMap
import PageTransitionCertificates.Import
namespace Fact713C2Row3143.MapComparison
open LinearCertificates PageTransitionCertificates ResolutionCertificates
def source : WireComparison := ⟨1,1,3,4,1,[false,false,true],[false,false,false,false,true,false,false,false,false,false,false,false],[true,false,false],[true,false,false],[false,true,false,false,false,false,false,false,false,false,false,false],[false,false,true]⟩
theorem source_complete : source.Valid := by lin_cert using ()
def target : WireComparison := ⟨1,2,4,4,1,[false,false,false,false,false,true,false,false],[false,false,false,false,false,false,false,false,false,true,true,true,false,true,false,true],[true,false,false,false],[true,false,false,false],[false,false,false,false,false,false,false,true,false,false,true,true,false,false,false,false],[false,false,false,true,false,false,false,false]⟩
theorem target_complete : target.Valid := by lin_cert using ()
def upperSource : WireComparison := ⟨1,3,3,0,2,[false,false,false,false,false,false,false,true,false],[],[true,false,false,false,false,true],[true,false,false,false,false,true],[],[false,false,false,false,false,true,false,false,false]⟩
theorem upperSource_complete : upperSource.Valid := by lin_cert using ()
def upperTarget : WireComparison := ⟨1,2,3,3,1,[false,false,false,false,true,false],[false,false,false,false,false,false,true,true,false],[true,false,false],[true,false,false],[false,false,true,false,false,false,false,false,false],[false,false,false,true,false,false]⟩
theorem upperTarget_complete : upperTarget.Valid := by lin_cert using ()
def middleMap : Matrix 4 3 := matrixOf 4 3 [true,false,false,false,false,false,false,true,false,false,true,false]
def outMap : Matrix 2 1 := matrixOf 2 1 [false,false]
def inMap : Matrix 4 4 := matrixOf 4 4 [false,false,false,false,true,false,false,false,false,false,false,false,false,false,false,false]
def upperMiddleMap : Matrix 3 3 := matrixOf 3 3 [true,false,false,false,false,false,false,true,false]
def upperOutMap : Matrix 2 3 := matrixOf 2 3 [false,false,false,true,false,false]
def upperInMap : Matrix 3 0 := matrixOf 3 0 []
theorem compatible : CompatibleMap (matrixOf source.k source.m source.outgoing) (matrixOf source.m source.n source.incoming) (matrixOf target.k target.m target.outgoing) (matrixOf target.m target.n target.incoming) middleMap outMap inMap := by lin_cert using ()
theorem uppercompatible : CompatibleMap (matrixOf upperSource.k upperSource.m upperSource.outgoing) (matrixOf upperSource.m upperSource.n upperSource.incoming) (matrixOf upperTarget.k upperTarget.m upperTarget.outgoing) (matrixOf upperTarget.m upperTarget.n upperTarget.incoming) upperMiddleMap upperOutMap upperInMap := by lin_cert using ()
end Fact713C2Row3143.MapComparison
