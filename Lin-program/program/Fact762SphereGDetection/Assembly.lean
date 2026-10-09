import Fact762SphereGDetection.Relations
import Fact762SphereGDetection.Incoming

namespace Fact762SphereGDetection.Assembly
open LinearCertificates PageTransitionCertificates ManualInputObligations ManualInputObligations.Reference
open Row3151ActualTransport ActualAdamsHomologyCoordinates ActualAdamsHomologyCoordinates.Meaning

/-- The only zero d3 entry in the incoming source is obtained from the
by-sigma source prefix and naturality, then extended to the whole map. -/
theorem incoming_from_by_sigma {C S : AdamsSpectralSequence}
    (A : BySigma.Prefix C S) (transition : A.input.Transition)
    (named : (C.element 3 BySigma.sourceDegree).carrier)
    (name : A.input.nextSource.equivalence named = BySigmaData.named3)
    (knownPrefix : C.differential 3 BySigma.sourceDegree named = 0)
    (mapTarget : (C.element 3 (AdamsTarget 3 BySigma.sourceDegree)).carrier →
      (S.element 3 (AdamsTarget 3 BySigma.targetDegree)).carrier)
    (mapZero : mapTarget 0 = 0)
    (naturality : ∀ x, S.differential 3 BySigma.targetDegree (A.input.nextMap x) =
      mapTarget (C.differential 3 BySigma.sourceDegree x))
    (target : Coordinates S 3 Incoming.targetDegree 3)
    (sourceAdd : ∀ x y, A.input.nextTarget.equivalence (x+y) =
      add (A.input.nextTarget.equivalence x) (A.input.nextTarget.equivalence y))
    (targetAdd : ∀ x y, target.equivalence (x+y) = add (target.equivalence x) (target.equivalence y))
    (recorded : target.equivalence (S.differential 3 Incoming.degree
      (A.input.nextTarget.equivalence.symm (fun i => i.val == 1))) = (fun i => i.val == 0))
    (x : ActualAdamsIncomingBridge.Source S 3 Incoming.targetDegree) :
    target.equivalence (ActualAdamsIncomingBridge.differential S 3 Incoming.targetDegree x) =
      eval (matrixOf 3 2 Data.w23_167_3.incoming)
        (Incoming.sourceCoordinates A.input.nextTarget x) :=
  Incoming.full_incoming A.input.nextTarget target sourceAdd targetAdd
    (BySigma.incoming_cycle A transition named name knownPrefix mapTarget mapZero naturality) recorded x

/-- A certificate for the named finite conclusion. Complete actual page,
product and relation meanings remain explicit mathematical inputs. -/
structure Certificate (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (P : CertifiedAdamsProduct S) (R : Type) [CommRing R] [CharP R 2] where
  zeros : ActualAdamsSystemBridge.ZeroMeaning S pages
  detector : Detector.Stage4 S pages P
  interpretation : Relations.Interpretation S P R
  productTransitions : ∀ q, 2 ≤ q → q < 5 → ActualAdamsProductTraceBridge.Transition S pages P q Actual.factorDegree Actual.sourceDegree
  correctionTransitions : ∀ q, 2 ≤ q → q < 5 → ActualAdamsProductTraceBridge.Transition S pages P q Actual.factorD5Degree Actual.sourceDegree
  g : (S.element 5 Actual.factorDegree).carrier
  namedG : detector.input.nextLeft.equivalence g = fun _ => true

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
  {P : CertifiedAdamsProduct S} {R : Type} [CommRing R] [CharP R 2]

theorem result_sound (c : Certificate S pages P R)
    (input : (S.element 2 Actual.sourceDegree).carrier)
    (value : (S.element 5 Actual.sourceDegree).carrier)
    (trace : ManualInputObligations.Trace S pages Actual.sourceDegree 5 input value)
    (name : c.interpretation.source input = NamedElementCertificates.evaluate c.interpretation.valuation [[1,7,275]]) :
    S.differential 5 Actual.sourceDegree value = 0 :=
  Actual.named_d5_zero S pages c.zeros P c.detector input value trace
    (Relations.initial_product c.interpretation input name)
    (Relations.initial_correction c.interpretation input name)
    c.productTransitions c.correctionTransitions c.g c.namedG

open Lean Elab Tactic
elab "sphere_g_d5_cert" " using " c:term : tactic => do
  evalTactic (← `(tactic| exact result_sound $c _ _ ‹_› ‹_›))

#print axioms incoming_from_by_sigma
#print axioms result_sound
end Fact762SphereGDetection.Assembly
