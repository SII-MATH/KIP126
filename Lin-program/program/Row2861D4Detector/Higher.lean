import Row2861D4Detector.Comparison
namespace Row2861D4Detector.Higher
open LinearCertificates PageTransitionCertificates ResolutionCertificates
def source : WireComparison := ⟨1,1,2,2,2,[false,false],[false,false,false,false],[true,false,false,true],[true,false,false,true],[false,false,false,false],[false,false]⟩
theorem source_complete : source.Valid := by lin_cert using ()
def target : WireComparison := ⟨1,0,2,2,2,[],[false,false,false,false],[true,false,false,true],[true,false,false,true],[false,false,false,false],[]⟩
theorem target_complete : target.Valid := by lin_cert using ()
def upperSource : WireComparison := ⟨1,1,1,3,1,[false],[false,false,false],[true],[true],[false,false,false],[false]⟩
theorem upperSource_complete : upperSource.Valid := by lin_cert using ()
def upperTarget : WireComparison := ⟨1,1,2,3,2,[false,false],[false,false,false,false,false,false],[true,false,false,true],[true,false,false,true],[false,false,false,false,false,false],[false,false]⟩
theorem upperTarget_complete : upperTarget.Valid := by lin_cert using ()
def MiddleMap := Comparison.sourceE3
def OutMap := Comparison.sourceUpperE3
def InMap := Comparison.sourceLowerE3
theorem compatible : CompatibleMap (matrixOf source.k source.m source.outgoing) (matrixOf source.m source.n source.incoming) (matrixOf target.k target.m target.outgoing) (matrixOf target.m target.n target.incoming) MiddleMap OutMap InMap := by lin_cert using ()
def upperMiddleMap := Comparison.targetE3
def upperOutMap := Comparison.targetUpperE3
def upperInMap := Comparison.targetLowerE3
theorem uppercompatible : CompatibleMap (matrixOf upperSource.k upperSource.m upperSource.outgoing) (matrixOf upperSource.m upperSource.n upperSource.incoming) (matrixOf upperTarget.k upperTarget.m upperTarget.outgoing) (matrixOf upperTarget.m upperTarget.n upperTarget.incoming) upperMiddleMap upperOutMap upperInMap := by lin_cert using ()
end Row2861D4Detector.Higher
