import Fact721FirstD6DC2h6.MapCoordinates
import Fact721FirstLater.Actual

namespace Fact721FirstD6DC2h6.First
open LinearCertificates PageTransitionCertificates ManualInputObligations.Reference
open ActualAdamsHomologyCoordinates ActualAdamsHomologyCoordinates.Meaning
open Fact761ConstructedActual.Local

abbrev degree := Fact721ConstructedActual.First.degree
abbrev wire := Fact721ConstructedActual.First.wire2
variable {S T : AdamsSpectralSequence} {sp : CertifiedAdamsPages S} {tp : CertifiedAdamsPages T}
  {P : CertifiedAdamsProduct S}
  {initial : Fact721ConstructedActual.AdditiveCoordinates degree S 2 2}
  {previous : Fact721FirstD4Search.Constructed.Prefix5 S sp initial}

theorem compatible : CompatibleMap (matrixOf wire.k wire.m wire.outgoing) (matrixOf wire.m wire.n wire.incoming)
    (matrixOf Maps.firstDetector.k Maps.firstDetector.m Maps.firstDetector.outgoing)
    (matrixOf Maps.firstDetector.m Maps.firstDetector.n Maps.firstDetector.incoming)
    Maps.firstMap.algebra.mat Maps.firstMapUpper.algebra.mat Maps.firstMapLower.algebra.mat := by lin_cert using ()

theorem finite_named : eval (coordinateMap wire.comparison Maps.firstDetector.comparison Maps.firstMap.algebra.mat)
    Fact721ConstructedActual.First.named3 = zero := by decide

structure Input (F : PageMap.Map S T sp tp) (previous : Fact721FirstD4Search.Constructed.Prefix5 S sp initial) where
  current : Chart degree T 2 2
  step : Step degree T tp 2 Maps.firstDetector current
  map2 : ∀ x, current.coordinates.equivalence (F.map 2 degree x) =
    eval Maps.firstMap.algebra.mat (initial.coordinates.equivalence x)

namespace Input
variable {F : PageMap.Map S T sp tp} (I : Input F previous)
include I

theorem image3_zero : F.map 3 degree previous.previous.previous.endpoint.value = 0 := by
  let C := I.step.next (by decide)
  apply C.coordinates.equivalence.injective
  have equation := MapCoordinates.next_coordinates F 2 degree wire Maps.firstDetector
    initial.coordinates I.current.coordinates previous.previous.previous.step2.whole.meaning I.step.whole.meaning
    Fact713DC2h6Source.Overlay.staircaseSource_valid Maps.firstDetector_valid
    previous.previous.previous.step2.zeroMeaning I.step.zeroMeaning
    Maps.firstMap.algebra.mat Maps.firstMapUpper.algebra.mat Maps.firstMapLower.algebra.mat
    compatible I.map2 previous.previous.previous.endpoint.value
  change C.coordinates.equivalence (F.map 3 degree previous.previous.previous.endpoint.value) = _ at equation
  exact equation.trans ((congrArg
    (eval (coordinateMap wire.comparison Maps.firstDetector.comparison Maps.firstMap.algebra.mat))
      previous.previous.previous.coordinate).trans (finite_named.trans C.coordinates.zero_value.symm))

theorem next_zero (r : Nat) (x : PageCycle S r degree)
    (zeroMeaning : LocalZeroMeaning tp r degree) (imageZero : F.map r degree x.val = 0) :
    F.map (r+1) degree ((sp.nextPage r degree).toNext (Quotient.mk _ x)) = 0 := by
  rw [F.quotient_cycle]
  have same : F.cycle r degree x = ActualAdamsSystemBridge.zeroCycle T r degree := Subtype.ext imageZero
  rw [same,zeroMeaning,T.zero_is_zero]

theorem image4_zero (zeros : ActualAdamsSystemBridge.ZeroMeaning T tp) :
    F.map 4 degree previous.previous.endpoint.value = 0 :=
  I.next_zero 3 _ (zeros 3 degree) I.image3_zero

theorem image5_zero (zeros : ActualAdamsSystemBridge.ZeroMeaning T tp) :
    F.map 5 degree previous.endpoint.value = 0 :=
  I.next_zero 4 _ (zeros 4 degree) (I.image4_zero zeros)

theorem image6_zero (old : Fact721FirstLater.Input previous P)
    (zeros : ActualAdamsSystemBridge.ZeroMeaning T tp) :
    F.map 6 degree old.endpoint6.value = 0 :=
  I.next_zero 5 _ (zeros 5 degree) (I.image5_zero zeros)
end Input

#print axioms compatible
#print axioms finite_named
#print axioms Input.image3_zero
#print axioms Input.next_zero
#print axioms Input.image4_zero
#print axioms Input.image5_zero
#print axioms Input.image6_zero
end Fact721FirstD6DC2h6.First
