import Row3143D0Leibniz.Basic
import Row2773D4Leibniz.Descent
import Fact721ConstructedActual.Basic
import Prop79TargetSearch.ZeroSpaces

namespace Row3143D0Leibniz.Descent
open LinearCertificates PageTransitionCertificates ManualInputObligations.Reference
open Row3151ActualTransport ActualAdamsHomologyCoordinates ActualAdamsHomologyCoordinates.Meaning
open Fact721ConstructedActual

abbrev detectorDegree : Bidegree := ⟨17,125⟩
abbrev detectorTargetDegree : Bidegree := ⟨21,128⟩

/-- Complete neighboring zero spaces produce the whole d3 comparison. -/
def zeroStepInput (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (degree : Bidegree) (current : AdditiveCoordinates degree S 3 1)
    (outgoingTarget : Coordinates S 3 (AdamsTarget 3 degree) 0)
    (incomingSource : ActualAdamsIncomingBridge.Source S 3 degree ≃ Vec 0)
    (zeroMeaning : LocalZeroMeaning pages 3 degree)
    (addMeaning : LocalAddMeaning pages 3 degree) :
    StepInput degree S pages 3 zeroStep current where
  outgoingTarget := outgoingTarget
  incomingSource := incomingSource
  outgoing := by intro x; funext i; exact Fin.elim0 i
  incoming := by
    intro x
    have hz := Prop79TargetSearch.ZeroSpaces.incoming_zero S 3 degree incomingSource x
    exact (congrArg current.coordinates.equivalence hz).trans
      (current.coordinates.zero_value.trans (by funext i; rfl))
  zeroMeaning := zeroMeaning
  addMeaning := addMeaning

structure Prefix (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S) where
  current : AdditiveCoordinates detectorDegree S 3 1
  target : AdditiveCoordinates detectorTargetDegree S 3 1
  outgoing : Coordinates S 3 (AdamsTarget 3 detectorDegree) 0
  incoming : ActualAdamsIncomingBridge.Source S 3 detectorDegree ≃ Vec 0
  targetOutgoing : Coordinates S 3 (AdamsTarget 3 detectorTargetDegree) 0
  targetIncoming : ActualAdamsIncomingBridge.Source S 3 detectorTargetDegree ≃ Vec 0
  zeroMeaning : LocalZeroMeaning pages 3 detectorDegree
  addMeaning : LocalAddMeaning pages 3 detectorDegree
  targetZeroMeaning : LocalZeroMeaning pages 3 detectorTargetDegree
  targetAddMeaning : LocalAddMeaning pages 3 detectorTargetDegree

def Prefix.step (P : Prefix S pages) := zeroStepInput S pages detectorDegree
  P.current P.outgoing P.incoming P.zeroMeaning P.addMeaning
def Prefix.targetStep (P : Prefix S pages) := zeroStepInput S pages detectorTargetDegree
  P.target P.targetOutgoing P.targetIncoming P.targetZeroMeaning P.targetAddMeaning
noncomputable def Prefix.page4 (P : Prefix S pages) := P.step.next zeroStep_accepted
noncomputable def Prefix.targetPage4 (P : Prefix S pages) := P.targetStep.next zeroStep_accepted

/-- The explicit nonzero d4 at ss row 2149, in constructed E4 coordinates.
This is an imported actual differential meaning, never a level inference. -/
structure KnownDifferential (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S) where
  data : Prefix S pages
  recorded : data.targetPage4.coordinates.equivalence
      (S.differential 4 detectorDegree
        (data.page4.coordinates.equivalence.symm (fun _ => true))) = (fun _ => true)

theorem known_reflects_zero (K : KnownDifferential S pages)
    (x : (S.element 4 detectorDegree).carrier)
    (hx : S.differential 4 detectorDegree x = 0) : x = 0 := by
  have cases : ∀ v : Vec 1, v = zero ∨ v = (fun _ => true) := by decide
  rcases cases (K.data.page4.coordinates.equivalence x) with hz | hn
  · exact K.data.page4.coordinates.equivalence.injective
      (hz.trans K.data.page4.coordinates.zero_value.symm)
  · have same : x = K.data.page4.coordinates.equivalence.symm (fun _ => true) :=
      K.data.page4.coordinates.equivalence.injective
        (hn.trans (K.data.page4.coordinates.equivalence.apply_symm_apply _).symm)
    have recorded := K.recorded
    have zeroDiff := same ▸ hx
    have decoded := congrArg K.data.targetPage4.coordinates.equivalence zeroDiff
    have impossible := recorded.symm.trans (decoded.trans K.data.targetPage4.coordinates.zero_value)
    exact False.elim ((show (fun _ : Fin 1 => true) ≠ zero from by decide) impossible)

theorem next_zero (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (degree : Bidegree) (zeroMeaning : LocalZeroMeaning pages 3 degree)
    (wholeZero : ∀ x : (S.element 3 degree).carrier, x = 0)
    (x : (S.element 4 degree).carrier) : x = 0 := by
  obtain ⟨y,rfl⟩ := Row2773D4Leibniz.Descent.next_surjective S pages 3 degree x
  have same : y = ActualAdamsSystemBridge.zeroCycle S 3 degree := Subtype.ext (wholeZero y.val)
  exact (congrArg (fun z => (pages.nextPage 3 degree).toNext (Quotient.mk _ z)) same).trans
    (zeroMeaning.trans (S.zero_is_zero _ _))

#print axioms zeroStepInput
#print axioms Prefix.page4
#print axioms Prefix.targetPage4
#print axioms known_reflects_zero
#print axioms next_zero
end Row3143D0Leibniz.Descent
