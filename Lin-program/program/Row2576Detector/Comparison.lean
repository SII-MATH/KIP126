import Row2576Detector.Actual
import PageTransitionCertificates.InducedMap
import PageTransitionCertificates.Import
namespace Row2576Detector.Comparison
open LinearCertificates PageTransitionCertificates ResolutionCertificates
def source : WireComparison := ⟨1,2,1,0,1,[false,false],[],[true],[true],[],[false,false]⟩
theorem source_complete : source.Valid := by lin_cert using ()
def target : WireComparison := ⟨1,2,1,1,0,[false,false],[true],[],[],[true],[false,false]⟩
theorem target_complete : target.Valid := by lin_cert using ()
def upperSource : WireComparison := ⟨1,6,5,1,2,[false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,true,false,false,false,false,false,false,false,true],[false,false,false,true,false],[true,false,true,false,false,true,false,false,false,false],[false,true,false,false,false,false,false,true,false,false],[false,false,false,true,false],[false,false,false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true]⟩
theorem upperSource_complete : upperSource.Valid := by lin_cert using ()
def upperTarget : WireComparison := ⟨1,5,4,1,4,[false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false],[false,false,false,false],[true,false,false,false,false,true,false,false,false,false,true,false,false,false,false,true],[true,false,false,false,false,true,false,false,false,false,true,false,false,false,false,true],[false,false,false,false],[false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false]⟩
theorem upperTarget_complete : upperTarget.Valid := by lin_cert using ()
def middleMap : Matrix 1 1 := Actual.m4_132.algebra.mat
def outMap : Matrix 2 2 := Actual.m6_133.algebra.mat
def inMap : Matrix 1 0 := Actual.m2_131.algebra.mat
def upperMiddleMap : Matrix 4 5 := Actual.m7_134.algebra.mat
def upperOutMap : Matrix 5 6 := Actual.m9_135.algebra.mat
def upperInMap : Matrix 1 1 := Actual.m5_133.algebra.mat
theorem compatible : CompatibleMap (matrixOf source.k source.m source.outgoing) (matrixOf source.m source.n source.incoming) (matrixOf target.k target.m target.outgoing) (matrixOf target.m target.n target.incoming) middleMap outMap inMap := by lin_cert using ()
theorem uppercompatible : CompatibleMap (matrixOf upperSource.k upperSource.m upperSource.outgoing) (matrixOf upperSource.m upperSource.n upperSource.incoming) (matrixOf upperTarget.k upperTarget.m upperTarget.outgoing) (matrixOf upperTarget.m upperTarget.n upperTarget.incoming) upperMiddleMap upperOutMap upperInMap := by lin_cert using ()
end Row2576Detector.Comparison
