import Fact721FirstD6DC2h6.MapCoordinates
import Row2684D5Search.Actual

namespace Fact721FirstD6DC2h6.Incoming5
open LinearCertificates ManualInputObligations.Reference
open ActualAdamsHomologyCoordinates ActualAdamsHomologyCoordinates.Meaning
open Row3151ActualTransport (Coordinates)

abbrev degree : Bidegree := ⟨12,134⟩
variable {S T : AdamsSpectralSequence} {sp : CertifiedAdamsPages S} {tp : CertifiedAdamsPages T}
  {P : CertifiedAdamsProduct S}

def matrix : Matrix 3 3 := Maps.incoming5Map.algebra.mat
def matrix3 : Matrix 2 2 := PageTransitionCertificates.coordinateMap
  Row2684D5Search.Data.source2.comparison Maps.incoming5Detector.comparison matrix

theorem compatible : PageTransitionCertificates.CompatibleMap
    (PageTransitionCertificates.matrixOf 1 3 Row2684D5Search.Data.source2.outgoing)
    (PageTransitionCertificates.matrixOf 3 3 Row2684D5Search.Data.source2.incoming)
    (PageTransitionCertificates.matrixOf Maps.incoming5Detector.k 3 Maps.incoming5Detector.outgoing)
    (PageTransitionCertificates.matrixOf 3 Maps.incoming5Detector.n Maps.incoming5Detector.incoming)
    matrix Maps.incoming5MapUpper.algebra.mat Maps.incoming5MapLower.algebra.mat := by lin_cert using ()

theorem finite_surjective : Function.Surjective (eval matrix3) := by decide

/-- Source E3-to-E5 pages are the existing square construction. Surjectivity
of the detector map is derived before using the square d5 theorem. -/
structure Input (W : Row2684D5Search.Actual.Witness S sp P) (F : PageMap.Map S T sp tp) where
  current : Coordinates T 2 degree 3
  complete : Meaning T 2 degree Maps.incoming5Detector current
  zero : LocalZeroMeaning tp 2 degree
  map2 : ∀ x, current.equivalence (F.map 2 degree x) = eval matrix (W.source.initial.equivalence x)

namespace Input
variable {W : Row2684D5Search.Actual.Witness S sp P} {F : PageMap.Map S T sp tp} (I : Input W F)
include I

theorem onto3 : Function.Surjective (F.map 3 degree) := by
  let D := MapCoordinates.input F 2 degree Row2684D5Search.Data.source2 Maps.incoming5Detector
    W.source.initial I.current W.source.step2.meaning I.complete
    Row2684D5Search.Data.source2_valid Maps.incoming5Detector_valid
    W.source.step2.zeroMeaning I.zero matrix Maps.incoming5MapUpper.algebra.mat
    Maps.incoming5MapLower.algebra.mat compatible I.map2
  exact Fact762CsigmasqD5.Descent.next_map_surjective D
    (MapCoordinates.transition F 2 degree Row2684D5Search.Data.source2 Maps.incoming5Detector
      W.source.initial I.current W.source.step2.meaning I.complete
      Row2684D5Search.Data.source2_valid Maps.incoming5Detector_valid
      W.source.step2.zeroMeaning I.zero matrix Maps.incoming5MapUpper.algebra.mat
      Maps.incoming5MapLower.algebra.mat compatible I.map2) finite_surjective

theorem sphere3_zero (x : (S.element 3 degree).carrier) : S.differential 3 degree x = 0 :=
  (W.source.step3.cycle x ((show ∀ v : Vec 2,
    eval (PageTransitionCertificates.matrixOf 2 2 Row2684D5Search.Data.source3.outgoing) v = LinearCertificates.zero
      from by decide) _)).trans (S.zero_is_zero _ _)

theorem sphere4_zero (x : (S.element 4 degree).carrier) : S.differential 4 degree x = 0 :=
  (W.source.step4.cycle x ((show ∀ v : Vec 1,
    eval (PageTransitionCertificates.matrixOf 1 1 Row2684D5Search.Data.source4.outgoing) v = LinearCertificates.zero
      from by decide) _)).trans (S.zero_is_zero _ _)

theorem onto4 : Function.Surjective (F.map 4 degree) := F.surjective_next 3 degree I.onto3 I.sphere3_zero
theorem onto5 : Function.Surjective (F.map 5 degree) := F.surjective_next 4 degree I.onto4 I.sphere4_zero

theorem whole_d5_zero (x : (T.element 5 degree).carrier) : T.differential 5 degree x = 0 :=
  F.whole_zero 5 degree I.onto5 (Row2684D5Search.Actual.whole_d5_zero W) x
end Input

#print axioms compatible
#print axioms finite_surjective
#print axioms Input.onto3
#print axioms Input.sphere3_zero
#print axioms Input.sphere4_zero
#print axioms Input.onto4
#print axioms Input.onto5
#print axioms Input.whole_d5_zero
end Fact721FirstD6DC2h6.Incoming5
