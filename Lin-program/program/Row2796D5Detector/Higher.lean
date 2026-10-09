import Row2796D5Detector.Comparison
namespace Row2796D5Detector.Higher
open LinearCertificates PageTransitionCertificates ResolutionCertificates
def p9_136S : WireComparison := ⟨1,1,2,2,2,[false,false],[false,false,false,false],[true,false,false,true],[true,false,false,true],[false,false,false,false],[false,false]⟩
theorem p9_136S_complete : p9_136S.Valid := by lin_cert using ()
def p9_136T : WireComparison := ⟨1,0,2,2,2,[],[false,false,false,false],[true,false,false,true],[true,false,false,true],[false,false,false,false],[]⟩
theorem p9_136T_complete : p9_136T.Valid := by lin_cert using ()
theorem p9_136Compatible : CompatibleMap (matrixOf p9_136S.k p9_136S.m p9_136S.outgoing) (matrixOf p9_136S.m p9_136S.n p9_136S.incoming) (matrixOf p9_136T.k p9_136T.m p9_136T.outgoing) (matrixOf p9_136T.m p9_136T.n p9_136T.incoming) Comparison.c9_136E3 Comparison.c12_138E3 Comparison.c6_134E3 := by lin_cert using ()
def p9_136E4 := coordinateMap p9_136S.comparison p9_136T.comparison Comparison.c9_136E3
theorem p9_136_all_coordinates (x : Homology (matrixOf p9_136S.k p9_136S.m p9_136S.outgoing) (matrixOf p9_136S.m p9_136S.n p9_136S.incoming)) : (homologyEquivalence _ _ p9_136T.comparison p9_136T_complete.2).toCoordinates (inducedMap p9_136Compatible x) = eval p9_136E4 ((homologyEquivalence _ _ p9_136S.comparison p9_136S_complete.2).toCoordinates x) := induced_coordinates_all p9_136Compatible _ _ p9_136S_complete.2 p9_136T_complete.2 x
def p13_139S : WireComparison := ⟨1,1,1,3,1,[false],[false,false,false],[true],[true],[false,false,false],[false]⟩
theorem p13_139S_complete : p13_139S.Valid := by lin_cert using ()
def p13_139T : WireComparison := ⟨1,1,2,3,2,[false,false],[false,false,false,false,false,false],[true,false,false,true],[true,false,false,true],[false,false,false,false,false,false],[false,false]⟩
theorem p13_139T_complete : p13_139T.Valid := by lin_cert using ()
theorem p13_139Compatible : CompatibleMap (matrixOf p13_139S.k p13_139S.m p13_139S.outgoing) (matrixOf p13_139S.m p13_139S.n p13_139S.incoming) (matrixOf p13_139T.k p13_139T.m p13_139T.outgoing) (matrixOf p13_139T.m p13_139T.n p13_139T.incoming) Comparison.c13_139E3 Comparison.c16_141E3 Comparison.c10_137E3 := by lin_cert using ()
def p13_139E4 := coordinateMap p13_139S.comparison p13_139T.comparison Comparison.c13_139E3
theorem p13_139_all_coordinates (x : Homology (matrixOf p13_139S.k p13_139S.m p13_139S.outgoing) (matrixOf p13_139S.m p13_139S.n p13_139S.incoming)) : (homologyEquivalence _ _ p13_139T.comparison p13_139T_complete.2).toCoordinates (inducedMap p13_139Compatible x) = eval p13_139E4 ((homologyEquivalence _ _ p13_139S.comparison p13_139S_complete.2).toCoordinates x) := induced_coordinates_all p13_139Compatible _ _ p13_139S_complete.2 p13_139T_complete.2 x
def p17_142S : WireComparison := ⟨1,1,0,2,0,[],[],[],[],[],[]⟩
theorem p17_142S_complete : p17_142S.Valid := by lin_cert using ()
def p17_142T : WireComparison := ⟨1,2,1,2,1,[false,false],[false,false],[true],[true],[false,false],[false,false]⟩
theorem p17_142T_complete : p17_142T.Valid := by lin_cert using ()
theorem p17_142Compatible : CompatibleMap (matrixOf p17_142S.k p17_142S.m p17_142S.outgoing) (matrixOf p17_142S.m p17_142S.n p17_142S.incoming) (matrixOf p17_142T.k p17_142T.m p17_142T.outgoing) (matrixOf p17_142T.m p17_142T.n p17_142T.incoming) Comparison.c17_142E3 Comparison.c20_144E3 Comparison.c14_140E3 := by lin_cert using ()
def p17_142E4 := coordinateMap p17_142S.comparison p17_142T.comparison Comparison.c17_142E3
theorem p17_142_all_coordinates (x : Homology (matrixOf p17_142S.k p17_142S.m p17_142S.outgoing) (matrixOf p17_142S.m p17_142S.n p17_142S.incoming)) : (homologyEquivalence _ _ p17_142T.comparison p17_142T_complete.2).toCoordinates (inducedMap p17_142Compatible x) = eval p17_142E4 ((homologyEquivalence _ _ p17_142S.comparison p17_142S_complete.2).toCoordinates x) := induced_coordinates_all p17_142Compatible _ _ p17_142S_complete.2 p17_142T_complete.2 x
def source3 : WireComparison := ⟨1,2,2,0,2,[false,false,false,false],[],[true,false,false,true],[true,false,false,true],[],[false,false,false,false]⟩
theorem source3_complete : source3.Valid := by lin_cert using ()
def source4 : WireComparison := ⟨1,1,2,1,2,[false,false],[false,false],[true,false,false,true],[true,false,false,true],[false,false],[false,false]⟩
theorem source4_complete : source4.Valid := by lin_cert using ()
def targetS : WireComparison := ⟨1,0,1,2,1,[],[false,false],[true],[true],[false,false],[]⟩
theorem targetS_complete : targetS.Valid := by lin_cert using ()
def targetT : WireComparison := ⟨1,1,2,2,1,[false,true],[false,false,false,false],[true,false],[true,false],[false,false,false,false],[false,true]⟩
theorem targetT_complete : targetT.Valid := by lin_cert using ()
def targetMap := p13_139E4
theorem targetCompatible : CompatibleMap (matrixOf targetS.k targetS.m targetS.outgoing) (matrixOf targetS.m targetS.n targetS.incoming) (matrixOf targetT.k targetT.m targetT.outgoing) (matrixOf targetT.m targetT.n targetT.incoming) targetMap p17_142E4 p9_136E4 := by lin_cert using ()
end Row2796D5Detector.Higher
