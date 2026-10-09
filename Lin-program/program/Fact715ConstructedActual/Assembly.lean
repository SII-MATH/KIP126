import Fact715ConstructedActual.Detector
import Fact715ConstructedActual.Tactic

namespace Fact715ConstructedActual.Assembly
open LinearCertificates PageTransitionCertificates Row3151ActualTransport
open ManualInputObligations.Reference ActualAdamsHomologyCoordinates
open ActualAdamsHomologyCoordinates.Meaning

abbrev targetWire := Fact715TrajectoryCertificates.ConditionalData.b15_139_3
theorem targetAccepted : checkWire targetWire = true := by decide

/-- The detector proves the unknown outgoing d3 column. The other basis
column and the complete incoming d3 meaning remain explicit inputs. -/
structure TargetInput {sphere ceta : AdamsSpectralSequence} (D : Detector.Input sphere ceta)
    (pages : CertifiedAdamsPages sphere) where
  pages_match : D.lower.targetPages = pages
  known : sphere.differential 3 Detector.sSource
    (D.lower.nextTarget.equivalence.symm Detector.sKnown) = 0
  incomingSource : ActualAdamsIncomingBridge.Source sphere 3 Detector.sSource ≃ Vec 2
  incoming : ∀ x, D.lower.nextTarget.equivalence
    (ActualAdamsIncomingBridge.differential sphere 3 Detector.sSource x) =
    eval (matrixOf targetWire.m targetWire.n targetWire.incoming) (incomingSource x)
  zeroMeaning : LocalZeroMeaning pages 3 Detector.sSource
  addMeaning : LocalAddMeaning pages 3 Detector.sSource

variable {sphere ceta : AdamsSpectralSequence} {D : Detector.Input sphere ceta}
  {pages : CertifiedAdamsPages sphere}

noncomputable def TargetInput.whole (T : TargetInput D pages) :
    WholeCoordinates sphere 3 Detector.sSource targetWire D.lower.nextTarget where
  current_add := D.source3_add
  outgoingTarget := D.upper.nextTarget
  incomingSource := T.incomingSource
  incoming := T.incoming
  outgoing := by
    intro x
    have hz := D.all_d3_zero D.source3_add T.known x
    have finiteZero : ∀ v : Vec 2,
        eval (matrixOf targetWire.k targetWire.m targetWire.outgoing) v = zero := by decide
    exact (congrArg D.upper.nextTarget.equivalence hz).trans
      (D.upper.nextTarget.zero_value.trans (finiteZero _).symm)

noncomputable def TargetInput.next (T : TargetInput D pages) :
    Coordinates sphere 4 Detector.sSource 2 := T.whole.next pages targetAccepted T.zeroMeaning

theorem TargetInput.next_add (T : TargetInput D pages)
    (x y : (sphere.element 4 Detector.sSource).carrier) :
    T.next.equivalence (x + y) = add (T.next.equivalence x) (T.next.equivalence y) :=
  nextCoordinates_add T.whole.meaning pages (checkWire_sound targetWire targetAccepted)
    T.zeroMeaning T.addMeaning x y

theorem TargetInput.next_quotient (T : TargetInput D pages)
    (x : PageCycle sphere 3 Detector.sSource) :
    T.next.equivalence ((pages.nextPage 3 Detector.sSource).toNext (Quotient.mk _ x)) =
      D.lower.nextTarget.equivalence x.val := by
  have h := T.whole.meaning.nextCoordinates_quotient pages
    (checkWire_sound targetWire targetAccepted) T.zeroMeaning x
  exact h.trans ((show ∀ v : Vec 2, eval targetWire.comparison.projection v = v from by decide) _)

/-- The main trajectory's E4 target coordinates are constructed from the
detector-derived full d3 equation. They are not a new independent input. -/
structure FinalStep {initial : AdditiveCoordinates sphere 2 5}
    (P : Prefix4 sphere pages initial) (T : TargetInput D pages) where
  incomingSource : ActualAdamsIncomingBridge.Source sphere 4 degree ≃ Vec wire4.n
  outgoing : ∀ x, T.next.equivalence (sphere.differential 4 degree x) =
    eval (matrixOf wire4.k wire4.m wire4.outgoing) (P.page4.coordinates.equivalence x)
  incoming : ∀ x, P.page4.coordinates.equivalence
      (ActualAdamsIncomingBridge.differential sphere 4 degree x) =
    eval (matrixOf wire4.m wire4.n wire4.incoming) (incomingSource x)
  zeroMeaning : LocalZeroMeaning pages 4 degree
  addMeaning : LocalAddMeaning pages 4 degree

noncomputable def assemble {initial : AdditiveCoordinates sphere 2 5}
    (P : Prefix4 sphere pages initial) (T : TargetInput D pages) (F : FinalStep P T) :
    Prefix5 sphere pages initial where
  previous := P
  step4 := {
    outgoingTarget := T.next
    incomingSource := F.incomingSource
    outgoing := F.outgoing
    incoming := F.incoming
    zeroMeaning := F.zeroMeaning
    addMeaning := F.addMeaning }

theorem actual_E5 {initial : AdditiveCoordinates sphere 2 5}
    (P : Prefix4 sphere pages initial) (T : TargetInput D pages) (F : FinalStep P T)
    (input : (sphere.element 2 degree).carrier)
    (binding : initial.coordinates.equivalence input = Fact715PageCertificates.target) :
    ResultValid sphere pages initial input := by
  fact715_cert using (assemble P T F) named binding

#print axioms TargetInput.whole
#print axioms TargetInput.next
#print axioms TargetInput.next_add
#print axioms TargetInput.next_quotient
#print axioms actual_E5
end Fact715ConstructedActual.Assembly
