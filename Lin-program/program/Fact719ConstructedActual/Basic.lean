import ActualAdamsHomologyCoordinates.Adapter
import Fact719TrajectoryCertificates.Named

namespace Fact719ConstructedActual
open LinearCertificates PageTransitionCertificates ManualInputObligations.Reference
open Row3151ActualTransport ActualAdamsHomologyCoordinates
open ActualAdamsHomologyCoordinates.Meaning

abbrev degree : Bidegree := ⟨8,130⟩

structure AdditiveCoordinates (S : AdamsSpectralSequence) (r : Nat) (n : Nat) where
  coordinates : Coordinates S r degree n
  map_add : ∀ x y, coordinates.equivalence (x + y) =
    add (coordinates.equivalence x) (coordinates.equivalence y)

/-- Full neighboring actual maps and local quotient laws are inputs. No
later current coordinates, additivity proof, or quotient formula is supplied. -/
structure StepInput (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (r : Nat) (w : WireComparison) (current : AdditiveCoordinates S r w.m) where
  outgoingTarget : Coordinates S r (AdamsTarget r degree) w.k
  incomingSource : ActualAdamsIncomingBridge.Source S r degree ≃ Vec w.n
  outgoing : ∀ x, outgoingTarget.equivalence (S.differential r degree x) =
    eval (matrixOf w.k w.m w.outgoing) (current.coordinates.equivalence x)
  incoming : ∀ x, current.coordinates.equivalence
      (ActualAdamsIncomingBridge.differential S r degree x) =
    eval (matrixOf w.m w.n w.incoming) (incomingSource x)
  zeroMeaning : LocalZeroMeaning pages r degree
  addMeaning : LocalAddMeaning pages r degree

namespace StepInput
variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
  {r : Nat} {w : WireComparison} {current : AdditiveCoordinates S r w.m}
  (I : StepInput S pages r w current)

def whole : WholeCoordinates S r degree w current.coordinates where
  current_add := current.map_add
  outgoingTarget := I.outgoingTarget
  incomingSource := I.incomingSource
  outgoing := I.outgoing
  incoming := I.incoming

noncomputable def next (accepted : checkWire w = true) : AdditiveCoordinates S (r + 1) w.h where
  coordinates := I.whole.next pages accepted I.zeroMeaning
  map_add := nextCoordinates_add I.whole.meaning pages (checkWire_sound w accepted)
    I.zeroMeaning I.addMeaning

noncomputable def stepMeaning (accepted : checkWire w = true) :
    Row3151ActualTransport.Named.StepMeaning S pages r degree w current.coordinates
      (I.next accepted).coordinates := I.whole.stepMeaning pages accepted I.zeroMeaning
end StepInput

abbrev wire2 := Fact719TrajectoryCertificates.b8_130_2
abbrev wire3 := Fact719TrajectoryCertificates.b8_130_3
abbrev wire4 := Fact719TrajectoryCertificates.b8_130_4
abbrev wire5 := Fact719TrajectoryCertificates.b8_130_5
def namedVector : Vec 1 := fun _ => true

theorem named_binding : namedVector = Fact719PageCertificates.target := by decide
theorem accepted2 : checkWire wire2 = true := by decide
theorem accepted3 : checkWire wire3 = true := by decide
theorem accepted4 : checkWire wire4 = true := by decide
theorem accepted5 : checkWire wire5 = true := by decide

def FiniteStep (w : WireComparison) (x : Vec w.m) (y : Vec w.h) : Prop :=
  InKernel (matrixOf w.k w.m w.outgoing) x ∧
  eval w.comparison.projection x = y ∧
  ¬ InImage (matrixOf w.m w.n w.incoming) x

theorem finite2 : FiniteStep wire2 namedVector namedVector := by
  unfold FiniteStep InKernel InImage
  decide
theorem finite3 : FiniteStep wire3 namedVector namedVector := by
  unfold FiniteStep InKernel InImage
  decide
theorem finite4 : FiniteStep wire4 namedVector namedVector := by
  unfold FiniteStep InKernel InImage
  decide
theorem finite5 : FiniteStep wire5 namedVector namedVector := by
  unfold FiniteStep InKernel InImage
  decide

structure Prefix3 (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (initial : AdditiveCoordinates S 2 1) where
  step2 : StepInput S pages 2 wire2 initial

noncomputable def Prefix3.page3 {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
    {initial : AdditiveCoordinates S 2 1} (P : Prefix3 S pages initial) :
    AdditiveCoordinates S 3 1 := P.step2.next accepted2

structure Prefix4 (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (initial : AdditiveCoordinates S 2 1) where
  previous : Prefix3 S pages initial
  step3 : StepInput S pages 3 wire3 previous.page3

noncomputable def Prefix4.page4 {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
    {initial : AdditiveCoordinates S 2 1} (P : Prefix4 S pages initial) :
    AdditiveCoordinates S 4 1 := P.step3.next accepted3

structure Prefix5 (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (initial : AdditiveCoordinates S 2 1) where
  previous : Prefix4 S pages initial
  step4 : StepInput S pages 4 wire4 previous.page4

noncomputable def Prefix5.page5 {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
    {initial : AdditiveCoordinates S 2 1} (P : Prefix5 S pages initial) :
    AdditiveCoordinates S 5 1 := P.step4.next accepted4

structure Prefix6 (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (initial : AdditiveCoordinates S 2 1) where
  previous : Prefix5 S pages initial
  step5 : StepInput S pages 5 wire5 previous.page5

noncomputable def Prefix6.page6 {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
    {initial : AdditiveCoordinates S 2 1} (P : Prefix6 S pages initial) :
    AdditiveCoordinates S 6 1 := P.step5.next accepted5

theorem unknown_d6_preserved :
    NamedPageComparison.Fact761D3.queryStored Fact719TrajectoryCertificates.rawUnknownPage 6 = none :=
  Fact719TrajectoryCertificates.unknown_d6_preserved

#print axioms StepInput.next
#print axioms StepInput.stepMeaning
#print axioms named_binding
#print axioms finite2
#print axioms finite3
#print axioms finite4
#print axioms finite5
#print axioms unknown_d6_preserved
end Fact719ConstructedActual
