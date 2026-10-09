import Row2925EtaD4.Products
import PageTransitionCertificates.InducedMap
import PageTransitionCertificates.Import
namespace Row2925EtaD4.Comparison
open LinearCertificates PageTransitionCertificates ResolutionCertificates
def sourceLowerS : WireComparison := ⟨1,5,7,4,2,[false,false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,true,false,false,false,false,false,false,false,false,true],[false,false,false,false,false,false,false,false,false,false,false,false,false,true,false,false,false,true,false,false,false,true,true,true,false,false,false,false],[false,false,false,true,true,false,false,false,false,false,false,false,false,false],[false,false,true,false,false,false,false,false,true,false,false,false,false,false],[false,false,false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,false,true,true,false,false,false,false,false,false,false,false],[false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true]⟩
theorem sourceLowerS_complete : sourceLowerS.Valid := by lin_cert using ()
def sourceLowerT : WireComparison := ⟨1,4,3,1,3,[false,false,false,false,false,false,false,false,false,false,false,false],[false,false,false],[false,true,false,false,false,true,true,false,false],[false,false,true,true,false,false,false,true,false],[false,false,false],[false,false,false,false,false,false,false,false,false,false,false,false]⟩
theorem sourceLowerT_complete : sourceLowerT.Valid := by lin_cert using ()
def sourceLowerMap := Products.matrix8_135
def sourceLowerUpper := Products.matrix10_136
def sourceLowerLower := Products.matrix6_134
theorem sourceLowerCompatible : CompatibleMap (matrixOf sourceLowerS.k sourceLowerS.m sourceLowerS.outgoing) (matrixOf sourceLowerS.m sourceLowerS.n sourceLowerS.incoming) (matrixOf sourceLowerT.k sourceLowerT.m sourceLowerT.outgoing) (matrixOf sourceLowerT.m sourceLowerT.n sourceLowerT.incoming) sourceLowerMap sourceLowerUpper sourceLowerLower := by lin_cert using ()
def sourceLowerE3 := coordinateMap sourceLowerS.comparison sourceLowerT.comparison sourceLowerMap
theorem sourceLower_all_coordinates (x : Homology (matrixOf sourceLowerS.k sourceLowerS.m sourceLowerS.outgoing) (matrixOf sourceLowerS.m sourceLowerS.n sourceLowerS.incoming)) : (homologyEquivalence _ _ sourceLowerT.comparison sourceLowerT_complete.2).toCoordinates (inducedMap sourceLowerCompatible x) = eval sourceLowerE3 ((homologyEquivalence _ _ sourceLowerS.comparison sourceLowerS_complete.2).toCoordinates x) := induced_coordinates_all sourceLowerCompatible _ _ sourceLowerS_complete.2 sourceLowerT_complete.2 x
def sourceS : WireComparison := ⟨1,5,6,5,2,[false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,true,false,false],[false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,false,true],[false,false,true,false,true,true,false,false,false,false,false,false],[false,true,false,false,false,false,false,true,true,false,false,false],[false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,true],[false,false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false]⟩
theorem sourceS_complete : sourceS.Valid := by lin_cert using ()
def sourceT : WireComparison := ⟨1,4,3,4,1,[false,false,false,false,false,false,false,false,false,false,false,true],[false,false,false,false,false,true,false,false,false,false,false,false],[true,false,false],[true,false,false],[false,false,false,false,true,false,false,false,false,false,false,false],[false,false,false,false,false,false,false,false,false,false,false,true]⟩
theorem sourceT_complete : sourceT.Valid := by lin_cert using ()
def sourceMap := Products.matrix11_137
def sourceUpper := Products.matrix13_138
def sourceLower := Products.matrix9_136
theorem sourceCompatible : CompatibleMap (matrixOf sourceS.k sourceS.m sourceS.outgoing) (matrixOf sourceS.m sourceS.n sourceS.incoming) (matrixOf sourceT.k sourceT.m sourceT.outgoing) (matrixOf sourceT.m sourceT.n sourceT.incoming) sourceMap sourceUpper sourceLower := by lin_cert using ()
def sourceE3 := coordinateMap sourceS.comparison sourceT.comparison sourceMap
theorem source_all_coordinates (x : Homology (matrixOf sourceS.k sourceS.m sourceS.outgoing) (matrixOf sourceS.m sourceS.n sourceS.incoming)) : (homologyEquivalence _ _ sourceT.comparison sourceT_complete.2).toCoordinates (inducedMap sourceCompatible x) = eval sourceE3 ((homologyEquivalence _ _ sourceS.comparison sourceS_complete.2).toCoordinates x) := induced_coordinates_all sourceCompatible _ _ sourceS_complete.2 sourceT_complete.2 x
def sourceUpperS : WireComparison := ⟨1,5,3,5,1,[false,false,false,false,false,false,true,false,false,false,false,false,false,false,false],[false,false,false,false,false,false,false,false,false,false,false,true,false,false,false],[false,true,false],[false,true,false],[false,false,false,false,false,true,false,false,false,false,false,false,false,false,false],[false,false,true,false,false,false,false,false,false,false,false,false,false,false,false]⟩
theorem sourceUpperS_complete : sourceUpperS.Valid := by lin_cert using ()
def sourceUpperT : WireComparison := ⟨1,2,2,5,0,[true,false,false,false],[false,false,false,false,false,false,false,false,false,true],[],[],[false,false,false,false,false,false,false,false,false,true],[true,false,false,false]⟩
theorem sourceUpperT_complete : sourceUpperT.Valid := by lin_cert using ()
def sourceUpperMap := Products.matrix14_139
def sourceUpperUpper := Products.matrix16_140
def sourceUpperLower := Products.matrix12_138
theorem sourceUpperCompatible : CompatibleMap (matrixOf sourceUpperS.k sourceUpperS.m sourceUpperS.outgoing) (matrixOf sourceUpperS.m sourceUpperS.n sourceUpperS.incoming) (matrixOf sourceUpperT.k sourceUpperT.m sourceUpperT.outgoing) (matrixOf sourceUpperT.m sourceUpperT.n sourceUpperT.incoming) sourceUpperMap sourceUpperUpper sourceUpperLower := by lin_cert using ()
def sourceUpperE3 := coordinateMap sourceUpperS.comparison sourceUpperT.comparison sourceUpperMap
theorem sourceUpper_all_coordinates (x : Homology (matrixOf sourceUpperS.k sourceUpperS.m sourceUpperS.outgoing) (matrixOf sourceUpperS.m sourceUpperS.n sourceUpperS.incoming)) : (homologyEquivalence _ _ sourceUpperT.comparison sourceUpperT_complete.2).toCoordinates (inducedMap sourceUpperCompatible x) = eval sourceUpperE3 ((homologyEquivalence _ _ sourceUpperS.comparison sourceUpperS_complete.2).toCoordinates x) := induced_coordinates_all sourceUpperCompatible _ _ sourceUpperS_complete.2 sourceUpperT_complete.2 x
def targetLowerS : WireComparison := ⟨1,3,5,6,1,[false,false,false,false,false,false,false,false,false,false,false,true,false,false,false],[true,false,false,false,false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true],[false,false,false,true,false],[false,false,false,true,false],[true,false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true],[false,false,false,false,false,true,false,false,false,false,false,false,false,false,false]⟩
theorem targetLowerS_complete : targetLowerS.Valid := by lin_cert using ()
def targetLowerT : WireComparison := ⟨1,2,5,3,3,[false,false,false,false,false,false,false,false,false,true],[false,false,false,false,false,false,false,false,false,false,false,true,false,false,false],[false,false,true,true,false,false,false,true,false,false,false,false,false,false,false],[false,true,false,false,false,false,false,true,false,false,true,false,false,false,false],[false,false,false,false,false,false,false,false,false,false,false,false,false,true,false],[false,false,false,false,false,false,false,false,false,true]⟩
theorem targetLowerT_complete : targetLowerT.Valid := by lin_cert using ()
def targetLowerMap := Products.matrix12_138
def targetLowerUpper := Products.matrix14_139
def targetLowerLower := Products.matrix10_137
theorem targetLowerCompatible : CompatibleMap (matrixOf targetLowerS.k targetLowerS.m targetLowerS.outgoing) (matrixOf targetLowerS.m targetLowerS.n targetLowerS.incoming) (matrixOf targetLowerT.k targetLowerT.m targetLowerT.outgoing) (matrixOf targetLowerT.m targetLowerT.n targetLowerT.incoming) targetLowerMap targetLowerUpper targetLowerLower := by lin_cert using ()
def targetLowerE3 := coordinateMap targetLowerS.comparison targetLowerT.comparison targetLowerMap
theorem targetLower_all_coordinates (x : Homology (matrixOf targetLowerS.k targetLowerS.m targetLowerS.outgoing) (matrixOf targetLowerS.m targetLowerS.n targetLowerS.incoming)) : (homologyEquivalence _ _ targetLowerT.comparison targetLowerT_complete.2).toCoordinates (inducedMap targetLowerCompatible x) = eval targetLowerE3 ((homologyEquivalence _ _ targetLowerS.comparison targetLowerS_complete.2).toCoordinates x) := induced_coordinates_all targetLowerCompatible _ _ targetLowerS_complete.2 targetLowerT_complete.2 x
def targetS : WireComparison := ⟨1,4,5,3,2,[false,false,false,false,false,false,false,false,true,false,false,false,false,false,false,true,false,false,false,false],[false,false,false,false,false,false,false,false,false,false,false,false,false,true,false],[false,false,true,false,false,true,false,false,false,false],[false,true,false,false,false,false,false,true,false,false],[false,false,false,false,false,false,false,false,false,true,false,false,false,false,false],[false,false,false,true,false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,false]⟩
theorem targetS_complete : targetS.Valid := by lin_cert using ()
def targetT : WireComparison := ⟨1,2,3,3,2,[false,false,false,false,false,false],[false,false,false,false,false,false,false,false,true],[false,true,true,false,false,false],[false,true,false,true,false,false],[false,false,false,false,false,false,false,false,true],[false,false,false,false,false,false]⟩
theorem targetT_complete : targetT.Valid := by lin_cert using ()
def targetMap := Products.matrix15_140
def targetUpper := Products.matrix17_141
def targetLower := Products.matrix13_139
theorem targetCompatible : CompatibleMap (matrixOf targetS.k targetS.m targetS.outgoing) (matrixOf targetS.m targetS.n targetS.incoming) (matrixOf targetT.k targetT.m targetT.outgoing) (matrixOf targetT.m targetT.n targetT.incoming) targetMap targetUpper targetLower := by lin_cert using ()
def targetE3 := coordinateMap targetS.comparison targetT.comparison targetMap
theorem target_all_coordinates (x : Homology (matrixOf targetS.k targetS.m targetS.outgoing) (matrixOf targetS.m targetS.n targetS.incoming)) : (homologyEquivalence _ _ targetT.comparison targetT_complete.2).toCoordinates (inducedMap targetCompatible x) = eval targetE3 ((homologyEquivalence _ _ targetS.comparison targetS_complete.2).toCoordinates x) := induced_coordinates_all targetCompatible _ _ targetS_complete.2 targetT_complete.2 x
def targetUpperS : WireComparison := ⟨1,1,2,4,0,[false,false],[true,false,false,false,true,false,false,true],[],[],[true,false,false,false,false,false,true,true],[false,false]⟩
theorem targetUpperS_complete : targetUpperS.Valid := by lin_cert using ()
def targetUpperT : WireComparison := ⟨1,2,3,4,1,[false,true,false,false,false,true],[false,false,false,false,false,false,false,false,false,false,false,false],[true,false,false],[true,false,false],[false,false,false,false,false,false,false,false,false,false,false,false],[false,false,true,false,false,true]⟩
theorem targetUpperT_complete : targetUpperT.Valid := by lin_cert using ()
def targetUpperMap := Products.matrix18_142
def targetUpperUpper := Products.matrix20_143
def targetUpperLower := Products.matrix16_141
theorem targetUpperCompatible : CompatibleMap (matrixOf targetUpperS.k targetUpperS.m targetUpperS.outgoing) (matrixOf targetUpperS.m targetUpperS.n targetUpperS.incoming) (matrixOf targetUpperT.k targetUpperT.m targetUpperT.outgoing) (matrixOf targetUpperT.m targetUpperT.n targetUpperT.incoming) targetUpperMap targetUpperUpper targetUpperLower := by lin_cert using ()
def targetUpperE3 := coordinateMap targetUpperS.comparison targetUpperT.comparison targetUpperMap
theorem targetUpper_all_coordinates (x : Homology (matrixOf targetUpperS.k targetUpperS.m targetUpperS.outgoing) (matrixOf targetUpperS.m targetUpperS.n targetUpperS.incoming)) : (homologyEquivalence _ _ targetUpperT.comparison targetUpperT_complete.2).toCoordinates (inducedMap targetUpperCompatible x) = eval targetUpperE3 ((homologyEquivalence _ _ targetUpperS.comparison targetUpperS_complete.2).toCoordinates x) := induced_coordinates_all targetUpperCompatible _ _ targetUpperS_complete.2 targetUpperT_complete.2 x
#print axioms source_all_coordinates
#print axioms target_all_coordinates
end Row2925EtaD4.Comparison
