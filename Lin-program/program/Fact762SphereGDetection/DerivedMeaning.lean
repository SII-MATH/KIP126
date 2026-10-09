import Fact762SphereGDetection.NamedCycles

namespace Fact762SphereGDetection.DerivedMeaning
open LinearCertificates PageTransitionCertificates ManualInputObligations.Reference
open Row3151ActualTransport ActualAdamsHomologyCoordinates ActualAdamsHomologyCoordinates.Meaning

/-- The complete incoming map is retained; the full outgoing map is derived
from actual product cycles instead of accepting zero-valued NULL columns. -/
def zeroOutgoing {S : AdamsSpectralSequence} {r : Nat} {degree : Bidegree}
    {w : WireComparison} {current : Coordinates S r degree w.m}
    (additive : ∀ x y, current.equivalence (x+y) = add (current.equivalence x) (current.equivalence y))
    (target : Coordinates S r (AdamsTarget r degree) w.k)
    (source : ActualAdamsIncomingBridge.Source S r degree ≃ Vec w.n)
    (incoming : ∀ x, current.equivalence (ActualAdamsIncomingBridge.differential S r degree x) =
      eval (matrixOf w.m w.n w.incoming) (source x))
    (matrixZero : ∀ x, eval (matrixOf w.k w.m w.outgoing) x = zero)
    (cycles : ∀ x, S.differential r degree x = 0) : Meaning S r degree w current where
  current_add := additive
  outgoingCoordinates := target.equivalence
  outgoing_injective := target.equivalence.injective
  outgoing_zero := target.zero_value
  outgoing := by intro x; rw [cycles,target.zero_value,matrixZero]
  incomingCoordinates := source
  incoming_surjective := source.surjective
  incoming := incoming

/-- The E3 target's three zero columns are derived using the two actual
products and the known incoming boundary. -/
def detector3 {S : AdamsSpectralSequence} {P : CertifiedAdamsProduct S}
    (current : Coordinates S 3 Detector.targetDegree 3)
    (additive : ∀ x y, current.equivalence (x+y) = add (current.equivalence x) (current.equivalence y))
    (target : Coordinates S 3 (AdamsTarget 3 Detector.targetDegree) 1)
    (source : ActualAdamsIncomingBridge.Source S 3 Detector.targetDegree ≃ Vec 2)
    (incoming : ∀ x, current.equivalence (ActualAdamsIncomingBridge.differential S 3 Detector.targetDegree x) =
      eval (matrixOf 3 2 Data.w23_167_3.incoming) (source x))
    (boundary : (S.element 3 ⟨20,165⟩).carrier)
    (boundaryName : current.equivalence (S.differential 3 ⟨20,165⟩ boundary) = Whole.unitVector 3 0)
    (g : (S.element 3 Detector.leftDegree).carrier) (y : (S.element 3 Detector.rightDegree).carrier)
    (h0 : (S.element 3 ⟨1,1⟩).carrier) (z : (S.element 3 ⟨22,166⟩).carrier)
    (gCycle : S.differential 3 Detector.leftDegree g = 0)
    (yCycle : S.differential 3 Detector.rightDegree y = 0)
    (h0Cycle : S.differential 3 ⟨1,1⟩ h0 = 0)
    (zPrefix : S.differential 3 ⟨22,166⟩ z = 0)
    (gName : current.equivalence (P.product.multiply 3 Detector.leftDegree Detector.rightDegree g y) = Whole.unitVector 3 1)
    (h0Name : current.equivalence (P.product.multiply 3 ⟨1,1⟩ ⟨22,166⟩ h0 z) = Whole.unitVector 3 2) :
    Meaning S 3 Detector.targetDegree Data.w23_167_3 current :=
  zeroOutgoing additive target source incoming (by decide)
    (NamedCycles.detector_d3_all_zero current additive boundary boundaryName g y h0 z
      gCycle yCycle h0Cycle zPrefix gName h0Name)

/-- The complete E4 incoming source is zero-dimensional. The two outgoing
columns are deduced from the same product representatives on E4. -/
def detector4 {S : AdamsSpectralSequence} {P : CertifiedAdamsProduct S}
    (current : Coordinates S 4 Detector.targetDegree 2)
    (additive : ∀ x y, current.equivalence (x+y) = add (current.equivalence x) (current.equivalence y))
    (target : Coordinates S 4 (AdamsTarget 4 Detector.targetDegree) 2)
    (source : ActualAdamsIncomingBridge.Source S 4 Detector.targetDegree ≃ Vec 0)
    (g : (S.element 4 Detector.leftDegree).carrier) (y : (S.element 4 Detector.rightDegree).carrier)
    (h0 : (S.element 4 ⟨1,1⟩).carrier) (z : (S.element 4 ⟨22,166⟩).carrier)
    (gCycle : S.differential 4 Detector.leftDegree g = 0)
    (yCycle : S.differential 4 Detector.rightDegree y = 0)
    (h0Cycle : S.differential 4 ⟨1,1⟩ h0 = 0)
    (zPrefix : S.differential 4 ⟨22,166⟩ z = 0)
    (gName : current.equivalence (P.product.multiply 4 Detector.leftDegree Detector.rightDegree g y) = (fun i => i.val == 0))
    (h0Name : current.equivalence (P.product.multiply 4 ⟨1,1⟩ ⟨22,166⟩ h0 z) = (fun i => i.val == 1)) :
    Meaning S 4 Detector.targetDegree Data.w23_167_4 current :=
  zeroOutgoing additive target source (by
    intro x
    have eq : x = ActualAdamsIncomingBridge.sourceZero S 4 Detector.targetDegree :=
      source.injective (by funext i; exact Fin.elim0 i)
    rw [eq,ActualAdamsIncomingBridge.differential_zero,S.zero_is_zero]
    exact current.zero_value) (by decide)
    (NamedCycles.detector_d4_all_zero current additive g y h0 z
      gCycle yCycle h0Cycle zPrefix gName h0Name)

#print axioms zeroOutgoing
#print axioms detector3
#print axioms detector4
end Fact762SphereGDetection.DerivedMeaning
