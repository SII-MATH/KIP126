import Row2796D4Detector.Comparison

namespace Row2796D4Detector.Comparison
open LinearCertificates PageTransitionCertificates ResolutionCertificates
 theorem center_actual_coordinates (x : Homology (matrixOf centerS.k centerS.m centerS.outgoing) (matrixOf centerS.m centerS.n centerS.incoming)) :
    (homologyEquivalence _ _ centerT.comparison centerT_complete.2).toCoordinates
      (inducedMap centerCompatible x) =
    eval centerMap ((homologyEquivalence _ _ centerS.comparison centerS_complete.2).toCoordinates x) :=
  induced_coordinates_all centerCompatible centerS.comparison centerT.comparison centerS_complete.2 centerT_complete.2 x
 theorem named_actual_coordinates (x : Homology (matrixOf namedS.k namedS.m namedS.outgoing) (matrixOf namedS.m namedS.n namedS.incoming)) :
    (homologyEquivalence _ _ namedT.comparison namedT_complete.2).toCoordinates
      (inducedMap namedCompatible x) =
    eval namedMap ((homologyEquivalence _ _ namedS.comparison namedS_complete.2).toCoordinates x) :=
  induced_coordinates_all namedCompatible namedS.comparison namedT.comparison namedS_complete.2 namedT_complete.2 x
 theorem source_named_raw : ∀ i : Fin 7, namedS.comparison.inclusion i ⟨0,by decide⟩ = (i.val == 2) := by decide
end Row2796D4Detector.Comparison
