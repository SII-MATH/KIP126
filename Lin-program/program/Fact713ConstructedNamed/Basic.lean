import ActualAdamsHomologyCoordinates.Adapter
import Fact713NamedActual.Basic
import Fact713NextSourceSearch.Overlay

namespace Fact713ConstructedNamed
open LinearCertificates PageTransitionCertificates ManualInputObligations.Reference
open Row3151ActualTransport ActualAdamsHomologyCoordinates
open ActualAdamsHomologyCoordinates.Meaning

structure AdditiveCoordinates (S : AdamsSpectralSequence) (r : Nat)
    (degree : Bidegree) (n : Nat) where
  coordinates : Coordinates S r degree n
  map_add : ∀ x y, coordinates.equivalence (x + y) =
    add (coordinates.equivalence x) (coordinates.equivalence y)

/-- Neighboring full-map meanings are inputs. The next coordinate function,
its additivity, and the quotient projection formula are all constructed. -/
structure StepInput (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (r : Nat) (degree : Bidegree) (w : WireComparison)
    (current : AdditiveCoordinates S r degree w.m) where
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
  {r : Nat} {degree : Bidegree} {w : WireComparison}
  {current : AdditiveCoordinates S r degree w.m}
  (I : StepInput S pages r degree w current)

def whole : WholeCoordinates S r degree w current.coordinates where
  current_add := current.map_add
  outgoingTarget := I.outgoingTarget
  incomingSource := I.incomingSource
  outgoing := I.outgoing
  incoming := I.incoming

noncomputable def next (accepted : checkWire w = true) :
    AdditiveCoordinates S (r + 1) degree w.h where
  coordinates := I.whole.next pages accepted I.zeroMeaning
  map_add := nextCoordinates_add I.whole.meaning pages (checkWire_sound w accepted)
    I.zeroMeaning I.addMeaning

noncomputable def stepMeaning (accepted : checkWire w = true) :
    Row3151ActualTransport.Named.StepMeaning S pages r degree w
      current.coordinates (I.next accepted).coordinates :=
  I.whole.stepMeaning pages accepted I.zeroMeaning
end StepInput

abbrev degree := Fact713NamedActual.degree
abbrev wire2 := Fact713NamedActual.wire2
abbrev wire3 := Fact713NamedActual.wire3
abbrev wire4 := Fact713NamedActual.wire4
abbrev wire5 := Fact713NamedActual.wire5
abbrev wire6 := Fact713NextSourceSearch.Overlay.b_S0_9_132_d6

theorem accepted2 : checkWire wire2 = true := by decide
theorem accepted3 : checkWire wire3 = true := by decide
theorem accepted4 : checkWire wire4 = true := by decide
theorem accepted5 : checkWire wire5 = true := by decide
theorem accepted6 : checkWire wire6 = true := by decide

/-- The only supplied coordinates at the tracked bidegree are those on E2. -/
structure Prefix3 (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S) where
  initial : AdditiveCoordinates S 2 degree 2
  step2 : StepInput S pages 2 degree wire2 initial

noncomputable def Prefix3.page3 {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
    (P : Prefix3 S pages) : AdditiveCoordinates S 3 degree 2 := P.step2.next accepted2

structure Prefix4 (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S) where
  previous : Prefix3 S pages
  step3 : StepInput S pages 3 degree wire3 previous.page3

noncomputable def Prefix4.page4 {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
    (P : Prefix4 S pages) : AdditiveCoordinates S 4 degree 1 := P.step3.next accepted3

structure Prefix5 (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S) where
  previous : Prefix4 S pages
  step4 : StepInput S pages 4 degree wire4 previous.page4

noncomputable def Prefix5.page5 {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
    (P : Prefix5 S pages) : AdditiveCoordinates S 5 degree 1 := P.step4.next accepted4

structure Prefix6 (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S) where
  previous : Prefix5 S pages
  step5 : StepInput S pages 5 degree wire5 previous.page5

noncomputable def Prefix6.page6 {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
    (P : Prefix6 S pages) : AdditiveCoordinates S 6 degree 1 := P.step5.next accepted5

structure Prefix7 (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S) where
  previous : Prefix6 S pages
  step6 : StepInput S pages 6 degree wire6 previous.page6

noncomputable def Prefix7.page7 {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
    (P : Prefix7 S pages) : AdditiveCoordinates S 7 degree 1 := P.step6.next accepted6

/-- Every later page and every quotient law in the older interface is
constructed from the preceding page, on the same S and pages throughout. -/
noncomputable def Prefix6.meanings {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
    (P : Prefix6 S pages) : Fact713NamedActual.Meanings S pages where
  page2 := P.previous.previous.previous.initial.coordinates
  page3 := P.previous.previous.previous.page3.coordinates
  page4 := P.previous.previous.page4.coordinates
  page5 := P.previous.page5.coordinates
  page6 := P.page6.coordinates
  step2 := P.previous.previous.previous.step2.stepMeaning accepted2
  step3 := P.previous.previous.step3.stepMeaning accepted3
  step4 := P.previous.step4.stepMeaning accepted4
  step5 := P.step5.stepMeaning accepted5

#print axioms StepInput.next
#print axioms StepInput.stepMeaning
#print axioms accepted2
#print axioms accepted3
#print axioms accepted4
#print axioms accepted5
#print axioms accepted6
#print axioms Prefix6.meanings
end Fact713ConstructedNamed
