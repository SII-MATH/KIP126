import Row2929Detector.Actual
import PageTransitionCertificates.InducedMap
import PageTransitionCertificates.Import
namespace Row2929Detector.Comparison
open LinearCertificates PageTransitionCertificates ResolutionCertificates
def source : WireComparison := ⟨1,5,6,1,3,[true,false,false,false,false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true],[false,false,false,false,false,false],[false,false,false,false,false,false,true,false,false,false,true,false,false,false,true,false,false,false],[false,false,true,false,false,false,false,false,false,true,false,false,false,false,false,false,true,false],[false,false,false,false,false,false],[true,false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true]⟩
theorem source_complete : source.Valid := by lin_cert using ()
def target : WireComparison := ⟨1,4,5,4,4,[false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,true,false,false],[false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false],[true,false,false,false,false,true,false,false,false,true,false,false,false,false,true,false,false,false,false,true],[true,false,false,false,false,false,false,true,false,false,false,false,false,true,false,false,false,false,false,true],[false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false],[false,false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false,false,false]⟩
theorem target_complete : target.Valid := by lin_cert using ()
def upperSource : WireComparison := ⟨1,5,3,4,1,[false,false,false,false,false,false,false,false,false,false,false,false,false,true,false],[false,false,false,false,false,false,false,false,false,false,false,true],[true,false,false],[true,false,false],[false,false,false,false,false,false,false,false,false,false,false,true],[false,false,false,false,false,false,false,false,false,true,false,false,false,false,false]⟩
theorem upperSource_complete : upperSource.Valid := by lin_cert using ()
def upperTarget : WireComparison := ⟨1,4,5,4,4,[false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false],[false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false,false,true,false,false],[true,false,false,false,false,true,false,false,false,false,true,false,false,false,false,true,false,false,false,false],[true,false,false,false,false,false,true,false,false,true,false,false,true,false,false,false,false,false,true,false],[false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false],[false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false]⟩
theorem upperTarget_complete : upperTarget.Valid := by lin_cert using ()
def middleMap : Matrix 5 6 := Actual.m10_137.algebra.mat
def outMap : Matrix 4 5 := Actual.m12_138.algebra.mat
def inMap : Matrix 4 1 := Actual.m8_136.algebra.mat
def upperMiddleMap : Matrix 5 3 := Actual.m13_139.algebra.mat
def upperOutMap : Matrix 4 5 := Actual.m15_140.algebra.mat
def upperInMap : Matrix 4 4 := Actual.m11_138.algebra.mat
theorem compatible : CompatibleMap (matrixOf source.k source.m source.outgoing) (matrixOf source.m source.n source.incoming) (matrixOf target.k target.m target.outgoing) (matrixOf target.m target.n target.incoming) middleMap outMap inMap := by lin_cert using ()
theorem uppercompatible : CompatibleMap (matrixOf upperSource.k upperSource.m upperSource.outgoing) (matrixOf upperSource.m upperSource.n upperSource.incoming) (matrixOf upperTarget.k upperTarget.m upperTarget.outgoing) (matrixOf upperTarget.m upperTarget.n upperTarget.incoming) upperMiddleMap upperOutMap upperInMap := by lin_cert using ()
end Row2929Detector.Comparison
