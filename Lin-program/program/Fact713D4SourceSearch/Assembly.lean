import Fact713D4SourceSearch.Actual

namespace Fact713D4SourceSearch.Assembly
open LinearCertificates PageTransitionCertificates Row3151ActualTransport
open ManualInputObligations.Reference ActualAdamsHomologyCoordinates
open Parameters Comparison ActualDescent

/-- Only additivity and the outgoing actual matrix remain as target inputs.
The full incoming coordinates and their equation are constructed from Forcing. -/
structure TargetPartial (sphere detector : AdamsSpectralSequence) (u v : Bool)
    (w : Vec 4) (F : Incoming.Forcing sphere detector w) where
  current_add : ∀ x y, F.imageTarget.equivalence (x + y) =
    add (F.imageTarget.equivalence x) (F.imageTarget.equivalence y)
  outgoingCoordinates :
    (detector.element 3 (AdamsTarget 3 Actual.targetDegree)).carrier → Vec 2
  outgoing_injective : Function.Injective outgoingCoordinates
  outgoing_zero : outgoingCoordinates 0 = zero
  outgoing : ∀ x, outgoingCoordinates (detector.differential 3 Actual.targetDegree x) =
    eval (matrixOf (targetD u v).k (targetD u v).m (targetD u v).outgoing)
      (F.imageTarget.equivalence x)

def incomingCoordinates {sphere detector : AdamsSpectralSequence} {w : Vec 4}
    (F : Incoming.Forcing sphere detector w) :
    ActualAdamsIncomingBridge.Source detector 3 Actual.targetDegree → Vec 4 :=
  fun x => F.imageSource.equivalence (x (by decide))

theorem incomingCoordinates_surjective {sphere detector : AdamsSpectralSequence} {w : Vec 4}
    (F : Incoming.Forcing sphere detector w) : Function.Surjective (incomingCoordinates F) := by
  intro x
  exact ⟨fun _ => F.imageSource.equivalence.symm x, F.imageSource.equivalence.apply_symm_apply x⟩

theorem incomingEquation {sphere detector : AdamsSpectralSequence} {w : Vec 4}
    (F : Incoming.Forcing sphere detector w) (u v : Bool)
    (x : ActualAdamsIncomingBridge.Source detector 3 Actual.targetDegree) :
    F.imageTarget.equivalence
      (ActualAdamsIncomingBridge.differential detector 3 Actual.targetDegree x) =
    eval (matrixOf (targetD u v).m (targetD u v).n (targetD u v).incoming)
      (incomingCoordinates F x) := by
  have shape := F.unknownMeaning (x (by decide))
  have forced := congrArg (fun w => eval (Naturality.incomingUnknown w)
    (F.imageSource.equivalence (x (by decide)))) F.zero
  have emptyColumn : ∀ y : Vec 4, eval (Naturality.incomingUnknown zero) y = zero := by decide
  have actualZero := shape.trans (forced.trans (emptyColumn _))
  have wireZero : ∀ (u v : Bool) (y : Vec 4),
      eval (matrixOf (targetD u v).m (targetD u v).n (targetD u v).incoming) y = zero := by decide
  rw [wireZero]
  have bridge : ActualAdamsIncomingBridge.differential detector 3 Actual.targetDegree x =
      detector.differential 3 Incoming.sourceDegree (x (by decide)) := by
    unfold ActualAdamsIncomingBridge.differential
    rw [dif_pos (show 3 ≤ Actual.targetDegree.filtration from by decide)]
    rfl
  exact (congrArg F.imageTarget.equivalence bridge).trans actualZero

def targetMeaning {sphere detector : AdamsSpectralSequence} {w : Vec 4}
    (F : Incoming.Forcing sphere detector w) (u v : Bool)
    (P : TargetPartial sphere detector u v w F) :
    ActualAdamsHomologyCoordinates.Meaning detector 3 Actual.targetDegree (targetD u v)
      F.imageTarget where
  current_add := P.current_add
  outgoingCoordinates := P.outgoingCoordinates
  outgoing_injective := P.outgoing_injective
  outgoing_zero := P.outgoing_zero
  outgoing := P.outgoing
  incomingCoordinates := incomingCoordinates F
  incoming_surjective := incomingCoordinates_surjective F
  incoming := incomingEquation F u v

structure Upper (sphere detector : AdamsSpectralSequence) (u v : Bool) (w : Vec 4)
    (F : Incoming.Forcing sphere detector w)
    (target : Coordinates sphere 3 Actual.targetDegree targetS.m) where
  outgoingMeaning : TargetPartial sphere detector u v w F
  sphereMeaning : ActualAdamsHomologyCoordinates.Meaning sphere 3 Actual.targetDegree targetS target
  spherePages : CertifiedAdamsPages sphere
  detectorPages : CertifiedAdamsPages detector
  sphereZero : Meaning.LocalZeroMeaning spherePages 3 Actual.targetDegree
  detectorZero : Meaning.LocalZeroMeaning detectorPages 3 Actual.targetDegree
  currentMap : (sphere.element 3 Actual.targetDegree).carrier →
    (detector.element 3 Actual.targetDegree).carrier
  currentEquation : ∀ x, F.imageTarget.equivalence (currentMap x) = eval tE3 (target.equivalence x)
  nextMap : (sphere.element 4 Actual.targetDegree).carrier →
    (detector.element 4 Actual.targetDegree).carrier

def Upper.input {sphere detector : AdamsSpectralSequence} {u v : Bool} {w : Vec 4}
    {F : Incoming.Forcing sphere detector w}
    {target : Coordinates sphere 3 Actual.targetDegree targetS.m}
    (U : Upper sphere detector u v w F target) :
    Input sphere detector 3 Actual.targetDegree Actual.targetDegree targetS (targetD u v)
      target F.imageTarget where
  sourceMeaning := U.sphereMeaning
  targetMeaning := targetMeaning F u v U.outgoingMeaning
  sourcePages := U.spherePages
  targetPages := U.detectorPages
  sourceValid := targetS_valid
  targetValid := targetD_valid u v
  sourceZero := U.sphereZero
  targetZero := U.detectorZero
  matrix := tE3
  upper := toE3
  lower := tiE3
  compatible := target_compatible u v
  currentMap := U.currentMap
  currentEquation := U.currentEquation
  nextMap := U.nextMap

def assemble {sphere detector : AdamsSpectralSequence} {a b c u v : Bool} {w : Vec 4}
    (F : Incoming.Forcing sphere detector w)
    (source : Coordinates sphere 3 Actual.sourceDegree sourceS.m)
    (imageSource : Coordinates detector 3 Actual.sourceDegree (sourceD a b c).m)
    (target : Coordinates sphere 3 Actual.targetDegree targetS.m)
    (lower : Input sphere detector 3 Actual.sourceDegree Actual.sourceDegree
      sourceS (sourceD a b c) source imageSource)
    (lowerMatrix : lower.matrix = sE3) (upper : Upper sphere detector u v w F target) :
    Actual.Meaning sphere detector a b c u v where
  source := source
  imageSource := imageSource
  target := target
  imageTarget := F.imageTarget
  lower := lower
  upper := upper.input
  lowerMatrix := lowerMatrix
  upperMatrix := rfl

/-- This final route derives the unknown incoming value using the old
row-2773 theorem before constructing the actual target homology quotient. -/
theorem actual_d4_zero {sphere detector : AdamsSpectralSequence} {a b c u v : Bool} {w : Vec 4}
    (F : Incoming.Forcing sphere detector w)
    (source : Coordinates sphere 3 Actual.sourceDegree sourceS.m)
    (imageSource : Coordinates detector 3 Actual.sourceDegree (sourceD a b c).m)
    (target : Coordinates sphere 3 Actual.targetDegree targetS.m)
    (lower : Input sphere detector 3 Actual.sourceDegree Actual.sourceDegree
      sourceS (sourceD a b c) source imageSource)
    (lowerMatrix : lower.matrix = sE3) (upper : Upper sphere detector u v w F target)
    (lowerTransition : lower.Transition) (upperTransition : upper.input.Transition)
    (naturality : ∀ x, detector.differential 4 Actual.sourceDegree (lower.nextMap x) =
      upper.nextMap (sphere.differential 4 Actual.sourceDegree x))
    (x : (sphere.element 4 Actual.sourceDegree).carrier) :
    sphere.differential 4 Actual.sourceDegree x = 0 :=
  Actual.actual_row2684_d4_zero sphere detector a b c u v
    (assemble F source imageSource target lower lowerMatrix upper)
    lowerTransition upperTransition naturality x

#print axioms incomingCoordinates_surjective
#print axioms incomingEquation
#print axioms targetMeaning
#print axioms Upper.input
#print axioms actual_d4_zero
end Fact713D4SourceSearch.Assembly
