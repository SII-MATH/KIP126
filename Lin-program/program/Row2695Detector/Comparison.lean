import Row2695Detector.Actual
import PageTransitionCertificates.InducedMap
import PageTransitionCertificates.Import
namespace Row2695Detector.Comparison
open LinearCertificates PageTransitionCertificates ResolutionCertificates
def source : WireComparison := ⟨1,5,5,2,3,[false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,false,false,false,false,true,false,false,false,true],[false,false,false,false,false,false,false,false,false,false],[false,false,false,true,false,false,false,true,false,false,false,true,false,false,false],[false,true,false,false,false,false,false,true,false,false,false,false,false,true,false],[false,false,false,false,false,false,false,false,false,false],[false,false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,true]⟩
theorem source_complete : source.Valid := by lin_cert using ()
def target : WireComparison := ⟨1,6,3,3,1,[false,false,false,false,false,false,false,false,false,false,false,false,true,false,false,true,false,true],[false,false,false,false,false,false,false,false,false],[false,true,false],[false,true,false],[false,false,false,false,false,false,false,false,false],[false,false,false,false,true,false,false,false,false,false,false,false,false,false,false,false,true,true]⟩
theorem target_complete : target.Valid := by lin_cert using ()
def upperSource : WireComparison := ⟨1,3,5,5,1,[false,false,false,false,false,false,false,false,false,false,false,true,true,false,false],[false,false,false,false,false,false,true,false,false,false,false,true,false,false,false,false,false,true,false,false,false,false,true,false,true],[true,false,false,false,false],[true,false,false,false,false],[false,false,false,false,false,false,false,true,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,true,true],[false,false,false,false,false,true,false,false,false,false,false,false,false,false,false]⟩
theorem upperSource_complete : upperSource.Valid := by lin_cert using ()
def upperTarget : WireComparison := ⟨1,3,6,8,2,[false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,true,false,false],[false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,true,false,false,false,false,false,false,false,true,false,true],[true,false,false,true,false,false,false,false,false,false,false,false],[true,false,false,false,false,false,false,true,false,false,false,false],[false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false,false,true,true],[false,false,false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false]⟩
theorem upperTarget_complete : upperTarget.Valid := by lin_cert using ()
def middleMap : Matrix 3 5 := Actual.m9_134.algebra.mat
def outMap : Matrix 6 5 := Actual.m11_135.algebra.mat
def inMap : Matrix 3 2 := Actual.m7_133.algebra.mat
def upperMiddleMap : Matrix 6 5 := Actual.m12_136.algebra.mat
def upperOutMap : Matrix 3 3 := Actual.m14_137.algebra.mat
def upperInMap : Matrix 8 5 := Actual.m10_135.algebra.mat
theorem compatible : CompatibleMap (matrixOf source.k source.m source.outgoing) (matrixOf source.m source.n source.incoming) (matrixOf target.k target.m target.outgoing) (matrixOf target.m target.n target.incoming) middleMap outMap inMap := by lin_cert using ()
theorem uppercompatible : CompatibleMap (matrixOf upperSource.k upperSource.m upperSource.outgoing) (matrixOf upperSource.m upperSource.n upperSource.incoming) (matrixOf upperTarget.k upperTarget.m upperTarget.outgoing) (matrixOf upperTarget.m upperTarget.n upperTarget.incoming) upperMiddleMap upperOutMap upperInMap := by lin_cert using ()
end Row2695Detector.Comparison
