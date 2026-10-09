import Fact713Row3005Continuation.Branches
import Fact713Row3143Continuation.Request

namespace Fact713Row3005Continuation.Constructed
open LinearCertificates PageTransitionCertificates ManualInputObligations.Reference
open ManualInputObligations Fact713ConstructedNamed Fact713Row3143Continuation.Constructed
open Row3151ActualTransport Row3151ActualTransport.Named

abbrev wire10 := Data.b_S0_9_132_d10
theorem accepted10 : checkWire wire10 = true := by decide
def vector11 : Vec 1 := fun _ => true

structure Prefix11 (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S) where
  previous : Prefix10 S pages
  step10 : StepInput S pages 10 degree wire10 previous.page10

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}

noncomputable def Prefix11.page11 (P : Prefix11 S pages) : AdditiveCoordinates S 11 degree 1 :=
  P.step10.next accepted10
noncomputable def Prefix11.raw (P : Prefix11 S pages) := P.previous.raw

theorem finite10 : eval (matrixOf wire10.k wire10.m wire10.outgoing) Fact713Row3143Continuation.Constructed.vector10 = zero ∧
    eval wire10.comparison.projection Fact713Row3143Continuation.Constructed.vector10 = vector11 ∧
    ¬ InImage (matrixOf wire10.m wire10.n wire10.incoming) Fact713Row3143Continuation.Constructed.vector10 := by
  unfold InImage
  decide

theorem Prefix11.cycle10 (P : Prefix11 S pages) :
    S.differential 10 degree P.previous.endpoint10.value = S.zero 10 (AdamsTarget 10 degree) :=
  cycle S pages 10 degree wire10 P.previous.page10.coordinates P.page11.coordinates
    (P.step10.stepMeaning accepted10) _ (by
      erw [P.previous.coordinate10]
      exact finite10.1)

theorem Prefix11.nonboundary10 (P : Prefix11 S pages) :
    ¬ PageBoundary S 10 degree P.previous.endpoint10.value := by
  intro h
  have finite := (boundary_iff S pages 10 degree wire10 P.previous.page10.coordinates
    P.page11.coordinates (P.step10.stepMeaning accepted10) _).mp h
  erw [P.previous.coordinate10] at finite
  exact finite10.2.2 finite

noncomputable def Prefix11.endpoint11 (P : Prefix11 S pages) : Endpoint S pages 11 degree P.raw :=
  advance S pages 10 degree wire10 P.previous.page10.coordinates P.page11.coordinates
    (P.step10.stepMeaning accepted10) _ P.previous.endpoint10 (by
      erw [P.previous.coordinate10]
      exact finite10.1)

theorem Prefix11.coordinate11 (P : Prefix11 S pages) :
    P.page11.coordinates.equivalence P.endpoint11.value = vector11 :=
  ((P.step10.stepMeaning accepted10).quotient _ _).trans
    ((congrArg (eval wire10.comparison.projection) P.previous.coordinate10).trans finite10.2.1)

theorem Prefix11.nonzero11 (P : Prefix11 S pages) : P.endpoint11.value ≠ 0 := by
  intro h
  have coordinates := P.coordinate11
  rw [h,P.page11.coordinates.zero_value] at coordinates
  exact (show (zero : Vec 1) ≠ vector11 from by decide) coordinates

theorem Prefix11.named_E11 (P : Prefix11 S pages) :
    ∃ x : (S.element 11 degree).carrier, Nonempty (Trace S pages degree 11 P.raw x) ∧
      x ≠ 0 ∧ P.page11.coordinates.equivalence x = vector11 :=
  ⟨P.endpoint11.value,⟨P.endpoint11.trace⟩,P.nonzero11,P.coordinate11⟩

def noIncoming (S : AdamsSpectralSequence) : ActualAdamsIncomingBridge.Source S 10 degree ≃ Vec 0 where
  toFun _ := zero
  invFun _ := ActualAdamsIncomingBridge.sourceZero S 10 degree
  left_inv x := (ActualAdamsIncomingBridge.source_above_filtration S 10 degree (by decide)).elim _ _
  right_inv x := by funext i; exact Fin.elim0 i

/-- Filtration excludes incoming d10 sources. The supplied complete outgoing
zero space gives the whole other map; the quotient constructs the E11 chart. -/
def assemble (P : Prefix10 S pages)
    (outgoing : Coordinates S 10 (AdamsTarget 10 degree) 0)
    (zeroMeaning : ActualAdamsHomologyCoordinates.Meaning.LocalZeroMeaning pages 10 degree)
    (addMeaning : ActualAdamsHomologyCoordinates.LocalAddMeaning pages 10 degree) : Prefix11 S pages where
  previous := P
  step10 := {
    outgoingTarget := outgoing
    incomingSource := noIncoming S
    outgoing := by intro x; funext i; exact Fin.elim0 i
    incoming := by
      intro x
      have hz := Prop79TargetSearch.ZeroSpaces.incoming_zero S 10 degree (noIncoming S) x
      exact (congrArg P.page10.coordinates.equivalence hz).trans
        (P.page10.coordinates.zero_value.trans (by funext i; rfl))
    zeroMeaning := zeroMeaning
    addMeaning := addMeaning }

#print axioms accepted10
#print axioms finite10
#print axioms Prefix11.page11
#print axioms Prefix11.cycle10
#print axioms Prefix11.nonboundary10
#print axioms Prefix11.coordinate11
#print axioms Prefix11.nonzero11
#print axioms Prefix11.named_E11
#print axioms noIncoming
#print axioms assemble
end Fact713Row3005Continuation.Constructed
