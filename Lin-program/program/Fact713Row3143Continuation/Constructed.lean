import Fact713Row3143Continuation.Branches
import Fact713ConstructedE9.Request

namespace Fact713Row3143Continuation.Constructed
open LinearCertificates PageTransitionCertificates ManualInputObligations.Reference
open ManualInputObligations Fact713ConstructedNamed Fact713ConstructedE9
open Row3151ActualTransport Row3151ActualTransport.Named

abbrev wire9 := Data.b_S0_9_132_d9
theorem accepted9 : checkWire wire9 = true := by decide
def vector10 : Vec 1 := fun _ => true

structure Prefix10 (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S) where
  previous : Prefix9 S pages
  step9 : StepInput S pages 9 degree wire9 previous.page9

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}

noncomputable def Prefix10.page10 (P : Prefix10 S pages) : AdditiveCoordinates S 10 degree 1 :=
  P.step9.next accepted9
noncomputable def Prefix10.raw (P : Prefix10 S pages) := P.previous.raw

theorem finite9 : eval (matrixOf wire9.k wire9.m wire9.outgoing) vector9 = zero ∧
    eval wire9.comparison.projection vector9 = vector10 ∧
    ¬ InImage (matrixOf wire9.m wire9.n wire9.incoming) vector9 := by
  unfold InImage
  decide

theorem Prefix10.cycle9 (P : Prefix10 S pages) :
    S.differential 9 degree P.previous.endpoint9.value = S.zero 9 (AdamsTarget 9 degree) :=
  cycle S pages 9 degree wire9 P.previous.page9.coordinates P.page10.coordinates
    (P.step9.stepMeaning accepted9) _ (by
      erw [P.previous.coordinate9]
      exact finite9.1)

theorem Prefix10.nonboundary9 (P : Prefix10 S pages) :
    ¬ PageBoundary S 9 degree P.previous.endpoint9.value := by
  intro h
  have finite := (boundary_iff S pages 9 degree wire9 P.previous.page9.coordinates
    P.page10.coordinates (P.step9.stepMeaning accepted9) _).mp h
  erw [P.previous.coordinate9] at finite
  exact finite9.2.2 finite

noncomputable def Prefix10.endpoint10 (P : Prefix10 S pages) : Endpoint S pages 10 degree P.raw :=
  advance S pages 9 degree wire9 P.previous.page9.coordinates P.page10.coordinates
    (P.step9.stepMeaning accepted9) _ P.previous.endpoint9 (by
      erw [P.previous.coordinate9]
      exact finite9.1)

theorem Prefix10.coordinate10 (P : Prefix10 S pages) :
    P.page10.coordinates.equivalence P.endpoint10.value = vector10 :=
  ((P.step9.stepMeaning accepted9).quotient _ _).trans
    ((congrArg (eval wire9.comparison.projection) P.previous.coordinate9).trans finite9.2.1)

theorem Prefix10.nonzero10 (P : Prefix10 S pages) : P.endpoint10.value ≠ 0 := by
  intro h
  have coordinates := P.coordinate10
  rw [h,P.page10.coordinates.zero_value] at coordinates
  exact (show (zero : Vec 1) ≠ vector10 from by decide) coordinates

theorem Prefix10.named_E10 (P : Prefix10 S pages) :
    ∃ x : (S.element 10 degree).carrier, Nonempty (Trace S pages degree 10 P.raw x) ∧
      x ≠ 0 ∧ P.page10.coordinates.equivalence x = vector10 :=
  ⟨P.endpoint10.value,⟨P.endpoint10.trace⟩,P.nonzero10,P.coordinate10⟩

/-- Complete empty neighboring actual E9 spaces supply the whole d9 maps;
the E10 coordinate function is constructed from their homology quotient. -/
def assemble (P : Prefix9 S pages)
    (outgoing : Coordinates S 9 (AdamsTarget 9 degree) 0)
    (incoming : ActualAdamsIncomingBridge.Source S 9 degree ≃ Vec 0)
    (zeroMeaning : ActualAdamsHomologyCoordinates.Meaning.LocalZeroMeaning pages 9 degree)
    (addMeaning : ActualAdamsHomologyCoordinates.LocalAddMeaning pages 9 degree) : Prefix10 S pages where
  previous := P
  step9 := {
    outgoingTarget := outgoing
    incomingSource := incoming
    outgoing := by intro x; funext i; exact Fin.elim0 i
    incoming := by
      intro x
      have hz := Prop79TargetSearch.ZeroSpaces.incoming_zero S 9 degree incoming x
      exact (congrArg P.page9.coordinates.equivalence hz).trans
        (P.page9.coordinates.zero_value.trans (by funext i; rfl))
    zeroMeaning := zeroMeaning
    addMeaning := addMeaning }

#print axioms accepted9
#print axioms finite9
#print axioms Prefix10.page10
#print axioms Prefix10.cycle9
#print axioms Prefix10.nonboundary9
#print axioms Prefix10.coordinate10
#print axioms Prefix10.nonzero10
#print axioms Prefix10.named_E10
#print axioms assemble
end Fact713Row3143Continuation.Constructed
