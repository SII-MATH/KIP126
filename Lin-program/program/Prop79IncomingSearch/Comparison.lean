import Prop79IncomingSearch.Maps
import Row2925Detector.Naturality
import PageTransitionCertificates.Import
namespace Prop79IncomingSearch.Comparison
open LinearCertificates PageTransitionCertificates ResolutionCertificates
abbrev source := Row2925Detector.Comparison.source
abbrev upperSource := Row2925Detector.Comparison.upperSource
abbrev source_complete := Row2925Detector.Comparison.source_complete
abbrev upperSource_complete := Row2925Detector.Comparison.upperSource_complete
def target : WireComparison := page_comparison% "Prop79IncomingSearch/bottom-wire/Cnu_11_137_d2.json"
theorem target_complete : target.Valid := by lin_cert using ()
def upperTarget : WireComparison := page_comparison% "Prop79IncomingSearch/bottom-wire/Cnu_14_139_d2.json"
theorem upperTarget_complete : upperTarget.Valid := by lin_cert using ()
def middleMap : Matrix 4 6 := Maps.s11t137.algebra.mat
def outMap : Matrix 4 5 := Maps.s13t138.algebra.mat
def inMap : Matrix 4 5 := Maps.s9t136.algebra.mat
def upperMiddleMap : Matrix 4 3 := Maps.s14t139.algebra.mat
def upperOutMap : Matrix 6 5 := Maps.s16t140.algebra.mat
def upperInMap : Matrix 4 5 := Maps.s12t138.algebra.mat
theorem compatible : CompatibleMap (matrixOf source.k source.m source.outgoing) (matrixOf source.m source.n source.incoming) (matrixOf target.k target.m target.outgoing) (matrixOf target.m target.n target.incoming) middleMap outMap inMap := by lin_cert using ()
theorem uppercompatible : CompatibleMap (matrixOf upperSource.k upperSource.m upperSource.outgoing) (matrixOf upperSource.m upperSource.n upperSource.incoming) (matrixOf upperTarget.k upperTarget.m upperTarget.outgoing) (matrixOf upperTarget.m upperTarget.n upperTarget.incoming) upperMiddleMap upperOutMap upperInMap := by lin_cert using ()
#print axioms target_complete
#print axioms upperTarget_complete
#print axioms compatible
#print axioms uppercompatible
end Prop79IncomingSearch.Comparison
