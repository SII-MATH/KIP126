import Row3019Detector.Actual
import PageTransitionCertificates.InducedMap
import PageTransitionCertificates.Import
namespace Row3019Detector.Comparison
open LinearCertificates PageTransitionCertificates ResolutionCertificates
def source : WireComparison := ⟨1,3,4,3,3,[false,false,false,false,false,false,false,false,false,false,false,true],[false,false,false,false,false,false,false,false,false,false,false,false],[true,false,false,false,true,false,false,false,true,false,false,false],[true,false,false,false,false,true,false,false,false,false,true,false],[false,false,false,false,false,false,false,false,false,false,false,false],[false,false,false,false,false,false,false,false,false,false,false,true]⟩
theorem source_complete : source.Valid := by lin_cert using ()
def target : WireComparison := ⟨1,5,3,5,3,[false,false,false,false,false,false,false,false,false,false,false,false,false,false,false],[false,false,false,false,false,false,false,false,false,false,false,false,false,false,false],[true,false,false,false,true,false,false,false,true],[true,false,false,false,true,false,false,false,true],[false,false,false,false,false,false,false,false,false,false,false,false,false,false,false],[false,false,false,false,false,false,false,false,false,false,false,false,false,false,false]⟩
theorem target_complete : target.Valid := by lin_cert using ()
def upperSource : WireComparison := ⟨1,4,4,3,2,[false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,false],[false,false,false,false,false,false,false,false,false,false,false,true],[true,false,false,false,false,true,false,false],[true,false,false,false,false,false,true,false],[false,false,false,false,false,false,false,false,false,false,false,true],[false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false]⟩
theorem upperSource_complete : upperSource.Valid := by lin_cert using ()
def upperTarget : WireComparison := ⟨1,4,4,4,4,[false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false],[false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false],[true,false,false,false,false,true,false,false,false,false,true,false,false,false,false,true],[true,false,false,false,false,true,false,false,false,false,true,false,false,false,false,true],[false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false],[false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false]⟩
theorem upperTarget_complete : upperTarget.Valid := by lin_cert using ()
def middleMap : Matrix 3 4 := Actual.m11_138.algebra.mat
def outMap : Matrix 5 3 := Actual.m13_139.algebra.mat
def inMap : Matrix 5 3 := Actual.m9_137.algebra.mat
def upperMiddleMap : Matrix 4 4 := Actual.m14_140.algebra.mat
def upperOutMap : Matrix 4 4 := Actual.m16_141.algebra.mat
def upperInMap : Matrix 4 3 := Actual.m12_139.algebra.mat
theorem compatible : CompatibleMap (matrixOf source.k source.m source.outgoing) (matrixOf source.m source.n source.incoming) (matrixOf target.k target.m target.outgoing) (matrixOf target.m target.n target.incoming) middleMap outMap inMap := by lin_cert using ()
theorem uppercompatible : CompatibleMap (matrixOf upperSource.k upperSource.m upperSource.outgoing) (matrixOf upperSource.m upperSource.n upperSource.incoming) (matrixOf upperTarget.k upperTarget.m upperTarget.outgoing) (matrixOf upperTarget.m upperTarget.n upperTarget.incoming) upperMiddleMap upperOutMap upperInMap := by lin_cert using ()
end Row3019Detector.Comparison
