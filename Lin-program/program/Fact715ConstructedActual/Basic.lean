import ActualAdamsHomologyCoordinates.Adapter
import Fact715TrajectoryCertificates.Conditional
import Fact715PageCertificates.Survivor

namespace Fact715ConstructedActual
open LinearCertificates PageTransitionCertificates ManualInputObligations.Reference
open Row3151ActualTransport ActualAdamsHomologyCoordinates
open ActualAdamsHomologyCoordinates.Meaning

abbrev degree : Bidegree := ⟨11,136⟩

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

abbrev wire2 := Fact715TrajectoryCertificates.ConditionalData.b11_136_2
abbrev wire3 := Fact715TrajectoryCertificates.ConditionalData.b11_136_3
abbrev wire4 := Fact715TrajectoryCertificates.ConditionalData.b11_136_4
def named2 : Vec 5 := fun i => i.val == 3
def named3 : Vec 4 := fun i => i.val == 2
def named4 : Vec 2 := fun i => i.val == 0
def named5 : Vec 1 := fun _ => true

theorem named_binding : named2 = Fact715PageCertificates.target := by decide
theorem initial_matrices_match : wire2.outgoing = Fact715PageCertificates.wire.outgoing ∧
    wire2.incoming = Fact715PageCertificates.wire.incoming := by decide
theorem accepted2 : checkWire wire2 = true := by decide
theorem accepted3 : checkWire wire3 = true := by decide
theorem accepted4 : checkWire wire4 = true := by decide

def FiniteStep (w : WireComparison) (x : Vec w.m) (y : Vec w.h) : Prop :=
  InKernel (matrixOf w.k w.m w.outgoing) x ∧
  eval w.comparison.projection x = y ∧
  ¬ InImage (matrixOf w.m w.n w.incoming) x

theorem finite2 : FiniteStep wire2 named2 named3 := by
  unfold FiniteStep InKernel InImage
  decide
theorem finite3 : FiniteStep wire3 named3 named4 := by
  unfold FiniteStep InKernel InImage
  decide
theorem finite4 : FiniteStep wire4 named4 named5 := by
  unfold FiniteStep InKernel InImage
  decide

structure Prefix3 (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (initial : AdditiveCoordinates S 2 5) where
  step2 : StepInput S pages 2 wire2 initial

noncomputable def Prefix3.page3 {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
    {initial : AdditiveCoordinates S 2 5} (P : Prefix3 S pages initial) :
    AdditiveCoordinates S 3 4 := P.step2.next accepted2

structure Prefix4 (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (initial : AdditiveCoordinates S 2 5) where
  previous : Prefix3 S pages initial
  step3 : StepInput S pages 3 wire3 previous.page3

noncomputable def Prefix4.page4 {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
    {initial : AdditiveCoordinates S 2 5} (P : Prefix4 S pages initial) :
    AdditiveCoordinates S 4 2 := P.step3.next accepted3

structure Prefix5 (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (initial : AdditiveCoordinates S 2 5) where
  previous : Prefix4 S pages initial
  step4 : StepInput S pages 4 wire4 previous.page4

noncomputable def Prefix5.page5 {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
    {initial : AdditiveCoordinates S 2 5} (P : Prefix5 S pages initial) :
    AdditiveCoordinates S 5 1 := P.step4.next accepted4

theorem raw_unknowns_preserved :
    Fact715TrajectoryCertificates.ConditionalData.b15_139_3_outgoing_row_1.diff = none ∧
    Fact715TrajectoryCertificates.ConditionalData.b11_136_4_outgoing_row_0.diff = none := by decide

#print axioms StepInput.next
#print axioms StepInput.stepMeaning
#print axioms named_binding
#print axioms initial_matrices_match
#print axioms finite2
#print axioms finite3
#print axioms finite4
#print axioms raw_unknowns_preserved
end Fact715ConstructedActual
