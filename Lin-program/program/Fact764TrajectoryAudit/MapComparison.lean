import Fact764TrajectoryAudit.MapActual
import PageTransitionCertificates.InducedMap
import PageTransitionCertificates.Import
namespace Fact764TrajectoryAudit.MapComparison
open LinearCertificates PageTransitionCertificates ResolutionCertificates
def source : WireComparison := ⟨1,2,5,5,4,[false,false,false,false,false,false,false,false,false,false],[false,false,false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false],[true,false,false,false,false,true,false,false,false,false,false,false,false,false,true,false,false,false,false,true],[true,false,false,false,false,false,true,false,false,false,false,false,false,true,false,false,false,false,false,true],[false,false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false],[false,false,false,false,false,false,false,false,false,false]⟩
theorem source_complete : source.Valid := by lin_cert using ()
def target : WireComparison := ⟨1,2,5,4,3,[false,false,false,false,false,false,false,false,false,false],[false,false,false,false,false,false,false,false,false,true,false,false,false,false,true,false,false,false,false,false],[true,false,false,false,true,false,false,false,false,false,false,false,false,false,true],[true,false,false,false,false,false,true,false,false,false,false,false,false,false,true],[false,false,false,false,false,false,false,true,false,false,false,false,false,true,false,false,false,false,false,false],[false,false,false,false,false,false,false,false,false,false]⟩
theorem target_complete : target.Valid := by lin_cert using ()
def upperSource : WireComparison := ⟨1,3,3,4,3,[false,false,false,false,false,false,false,false,false],[false,false,false,false,false,false,false,false,false,false,false,false],[true,false,false,false,true,false,false,false,true],[true,false,false,false,true,false,false,false,true],[false,false,false,false,false,false,false,false,false,false,false,false],[false,false,false,false,false,false,false,false,false]⟩
theorem upperSource_complete : upperSource.Valid := by lin_cert using ()
def upperTarget : WireComparison := ⟨1,2,3,5,3,[false,false,false,false,false,false],[false,false,false,false,false,false,false,false,false,false,false,false,false,false,false],[true,false,false,false,true,false,false,false,true],[true,false,false,false,true,false,false,false,true],[false,false,false,false,false,false,false,false,false,false,false,false,false,false,false],[false,false,false,false,false,false]⟩
theorem upperTarget_complete : upperTarget.Valid := by lin_cert using ()
def middleMap : Matrix 5 5 := matrixOf 5 5 [true,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,false,false]
def outMap : Matrix 2 2 := matrixOf 2 2 [true,false,false,false]
def inMap : Matrix 4 5 := matrixOf 4 5 [true,false,false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,true,false,false]
def upperMiddleMap : Matrix 3 3 := matrixOf 3 3 [false,false,false,true,false,false,false,false,false]
def upperOutMap : Matrix 2 3 := matrixOf 2 3 [false,true,false,true,false,false]
def upperInMap : Matrix 5 4 := matrixOf 5 4 [true,false,false,false,false,true,false,false,false,false,true,false,false,false,false,false,false,false,false,false]
theorem compatible : CompatibleMap (matrixOf source.k source.m source.outgoing) (matrixOf source.m source.n source.incoming) (matrixOf target.k target.m target.outgoing) (matrixOf target.m target.n target.incoming) middleMap outMap inMap := by lin_cert using ()
theorem uppercompatible : CompatibleMap (matrixOf upperSource.k upperSource.m upperSource.outgoing) (matrixOf upperSource.m upperSource.n upperSource.incoming) (matrixOf upperTarget.k upperTarget.m upperTarget.outgoing) (matrixOf upperTarget.m upperTarget.n upperTarget.incoming) upperMiddleMap upperOutMap upperInMap := by lin_cert using ()
end Fact764TrajectoryAudit.MapComparison
