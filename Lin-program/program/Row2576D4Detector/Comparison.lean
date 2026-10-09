import Row2576D4Detector.Actual
import PageTransitionCertificates.InducedMap
import PageTransitionCertificates.Import
namespace Row2576D4Detector.Comparison
open LinearCertificates PageTransitionCertificates ResolutionCertificates
def namedS : WireComparison := ⟨1,2,1,0,1,[false,false],[],[true],[true],[],[false,false]⟩
theorem namedS_complete : namedS.Valid := by lin_cert using ()
def namedT : WireComparison := ⟨1,2,1,1,0,[false,false],[true],[],[],[true],[false,false]⟩
theorem namedT_complete : namedT.Valid := by lin_cert using ()
def namedMiddle : Matrix 1 1 := Actual.m4_132.algebra.mat
def namedOut : Matrix 2 2 := Actual.m6_133.algebra.mat
def namedIn : Matrix 1 0 := Actual.m2_131.algebra.mat
theorem namedCompatible : CompatibleMap (matrixOf namedS.k namedS.m namedS.outgoing) (matrixOf namedS.m namedS.n namedS.incoming) (matrixOf namedT.k namedT.m namedT.outgoing) (matrixOf namedT.m namedT.n namedT.incoming) namedMiddle namedOut namedIn := by lin_cert using ()
def namedMap := coordinateMap namedS.comparison namedT.comparison namedMiddle
theorem named_all_classes (x : Homology (matrixOf namedS.k namedS.m namedS.outgoing) (matrixOf namedS.m namedS.n namedS.incoming)) :
    (homologyEquivalence _ _ namedT.comparison namedT_complete.2).toCoordinates (inducedMap namedCompatible x) =
      eval namedMap ((homologyEquivalence _ _ namedS.comparison namedS_complete.2).toCoordinates x) :=
  induced_coordinates_all namedCompatible _ _ namedS_complete.2 namedT_complete.2 x
def lowerS : WireComparison := ⟨1,5,1,2,0,[false,false,false,true,false],[false,false],[],[],[false,false],[false,false,false,true,false]⟩
theorem lowerS_complete : lowerS.Valid := by lin_cert using ()
def lowerT : WireComparison := ⟨1,4,1,2,1,[false,false,false,false],[false,false],[true],[true],[false,false],[false,false,false,false]⟩
theorem lowerT_complete : lowerT.Valid := by lin_cert using ()
def lowerMiddle : Matrix 1 1 := Actual.m5_133.algebra.mat
def lowerOut : Matrix 4 5 := Actual.m7_134.algebra.mat
def lowerIn : Matrix 2 2 := Actual.m3_132.algebra.mat
theorem lowerCompatible : CompatibleMap (matrixOf lowerS.k lowerS.m lowerS.outgoing) (matrixOf lowerS.m lowerS.n lowerS.incoming) (matrixOf lowerT.k lowerT.m lowerT.outgoing) (matrixOf lowerT.m lowerT.n lowerT.incoming) lowerMiddle lowerOut lowerIn := by lin_cert using ()
def lowerMap := coordinateMap lowerS.comparison lowerT.comparison lowerMiddle
theorem lower_all_classes (x : Homology (matrixOf lowerS.k lowerS.m lowerS.outgoing) (matrixOf lowerS.m lowerS.n lowerS.incoming)) :
    (homologyEquivalence _ _ lowerT.comparison lowerT_complete.2).toCoordinates (inducedMap lowerCompatible x) =
      eval lowerMap ((homologyEquivalence _ _ lowerS.comparison lowerS_complete.2).toCoordinates x) :=
  induced_coordinates_all lowerCompatible _ _ lowerS_complete.2 lowerT_complete.2 x
def centerS : WireComparison := ⟨1,5,7,4,2,[false,false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,true,false,false,false,false,false,false,false,false,true],[false,false,false,false,false,false,false,false,false,false,false,false,false,true,false,false,false,true,false,false,false,true,true,true,false,false,false,false],[false,false,false,true,true,false,false,false,false,false,false,false,false,false],[false,false,true,false,false,false,false,false,true,false,false,false,false,false],[false,false,false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,false,true,true,false,false,false,false,false,false,false,false],[false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true]⟩
theorem centerS_complete : centerS.Valid := by lin_cert using ()
def centerT : WireComparison := ⟨1,4,6,3,6,[false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false],[false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false],[false,false,false,false,true,false,false,false,false,true,false,false,false,false,true,false,false,false,false,false,false,false,false,true,false,true,false,false,false,false,true,false,false,false,false,false],[false,false,false,false,false,true,false,false,false,false,true,false,false,false,true,false,false,false,false,true,false,false,false,false,true,false,false,false,false,false,false,false,false,true,false,false],[false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false],[false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false]⟩
theorem centerT_complete : centerT.Valid := by lin_cert using ()
def centerMiddle : Matrix 6 7 := Actual.m8_135.algebra.mat
def centerOut : Matrix 4 5 := Actual.m10_136.algebra.mat
def centerIn : Matrix 3 4 := Actual.m6_134.algebra.mat
theorem centerCompatible : CompatibleMap (matrixOf centerS.k centerS.m centerS.outgoing) (matrixOf centerS.m centerS.n centerS.incoming) (matrixOf centerT.k centerT.m centerT.outgoing) (matrixOf centerT.m centerT.n centerT.incoming) centerMiddle centerOut centerIn := by lin_cert using ()
def centerMap := coordinateMap centerS.comparison centerT.comparison centerMiddle
theorem center_all_classes (x : Homology (matrixOf centerS.k centerS.m centerS.outgoing) (matrixOf centerS.m centerS.n centerS.incoming)) :
    (homologyEquivalence _ _ centerT.comparison centerT_complete.2).toCoordinates (inducedMap centerCompatible x) =
      eval centerMap ((homologyEquivalence _ _ centerS.comparison centerS_complete.2).toCoordinates x) :=
  induced_coordinates_all centerCompatible _ _ centerS_complete.2 centerT_complete.2 x
def upperS : WireComparison := ⟨1,5,6,5,2,[false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,true,false,false],[false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,false,true],[false,false,true,false,true,true,false,false,false,false,false,false],[false,true,false,false,false,false,false,true,true,false,false,false],[false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,true],[false,false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false]⟩
theorem upperS_complete : upperS.Valid := by lin_cert using ()
def upperT : WireComparison := ⟨1,6,5,4,5,[false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false],[false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false],[false,true,false,false,false,true,false,false,false,false,false,false,true,false,false,false,false,false,true,false,false,false,false,true,true],[false,true,false,false,false,true,false,false,false,false,false,false,true,false,false,false,false,false,true,false,false,false,false,true,true],[false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false],[false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false]⟩
theorem upperT_complete : upperT.Valid := by lin_cert using ()
def upperMiddle : Matrix 5 6 := Actual.m11_137.algebra.mat
def upperOut : Matrix 6 5 := Actual.m13_138.algebra.mat
def upperIn : Matrix 4 5 := Actual.m9_136.algebra.mat
theorem upperCompatible : CompatibleMap (matrixOf upperS.k upperS.m upperS.outgoing) (matrixOf upperS.m upperS.n upperS.incoming) (matrixOf upperT.k upperT.m upperT.outgoing) (matrixOf upperT.m upperT.n upperT.incoming) upperMiddle upperOut upperIn := by lin_cert using ()
def upperMap := coordinateMap upperS.comparison upperT.comparison upperMiddle
theorem upper_all_classes (x : Homology (matrixOf upperS.k upperS.m upperS.outgoing) (matrixOf upperS.m upperS.n upperS.incoming)) :
    (homologyEquivalence _ _ upperT.comparison upperT_complete.2).toCoordinates (inducedMap upperCompatible x) =
      eval upperMap ((homologyEquivalence _ _ upperS.comparison upperS_complete.2).toCoordinates x) :=
  induced_coordinates_all upperCompatible _ _ upperS_complete.2 upperT_complete.2 x
def source3 : WireComparison := ⟨1,2,1,0,1,[false,false],[],[true],[true],[],[false,false]⟩
theorem source3_complete : source3.Valid := by lin_cert using ()
def target3 : WireComparison := ⟨1,2,2,0,2,[false,false,false,false],[],[true,false,false,true],[true,false,false,true],[],[false,false,false,false]⟩
theorem target3_complete : target3.Valid := by lin_cert using ()
end Row2576D4Detector.Comparison
