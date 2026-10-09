import Fact761ConstructedActual.Incoming
import Fact761ConstructedActual.Tactic

namespace Fact761ConstructedActual
open LinearCertificates PageTransitionCertificates ManualInputObligations.Reference
open Row3151ActualTransport ActualAdamsHomologyCoordinates
open ActualAdamsHomologyCoordinates.Meaning

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
  {initial : AdditiveCoordinates S 2 6}

structure D3Input (P : Prefix3 S pages initial) where
  emptySource : Incoming.Empty5 S pages
  outgoingTarget : Coordinates S 3 ⟨11,136⟩ 4
  outgoing : ∀ x, outgoingTarget.equivalence (S.differential 3 degree x) =
    eval (matrixOf 4 4 wire3.outgoing) (P.page3.coordinates.equivalence x)
  zero3 : LocalZeroMeaning pages 3 degree
  add3 : LocalAddMeaning pages 3 degree

noncomputable def D3Input.step3 {P : Prefix3 S pages initial} (I : D3Input P) :
    StepInput S pages 3 wire3 P.page3 where
  outgoingTarget := I.outgoingTarget
  outgoing := I.outgoing
  incomingSource := I.emptySource.incoming
  incoming := by
    intro x
    erw [Incoming.empty_incoming I.emptySource.incoming x, P.page3.coordinates.zero_value]
    symm
    exact (show ∀ v : Vec 0, eval (matrixOf 4 0 wire3.incoming) v = zero from by decide) _
  zeroMeaning := I.zero3
  addMeaning := I.add3

noncomputable def D3Input.prefix4 {P : Prefix3 S pages initial} (I : D3Input P) :
    Prefix4 S pages initial := ⟨P, I.step3⟩

structure D4Input (P : Prefix4 S pages initial) where
  target : Targets.Empty12 S pages
  source : Incoming.Empty4 S pages
  zero4 : LocalZeroMeaning pages 4 degree
  add4 : LocalAddMeaning pages 4 degree

noncomputable def D4Input.step4 {P : Prefix4 S pages initial} (I : D4Input P) :
    StepInput S pages 4 wire4 P.page4 where
  outgoingTarget := I.target.page4
  outgoing := by intro x; funext i; exact Fin.elim0 i
  incomingSource := I.source.incoming
  incoming := by
    intro x
    erw [Incoming.empty_incoming I.source.incoming x, P.page4.coordinates.zero_value]
    symm
    exact (show ∀ v : Vec 0, eval (matrixOf 2 0 wire4.incoming) v = zero from by decide) _
  zeroMeaning := I.zero4
  addMeaning := I.add4

noncomputable def D4Input.prefix5 {P : Prefix4 S pages initial} (I : D4Input P) :
    Prefix5 S pages initial := ⟨P, I.step4⟩

structure D5Input (P : Prefix5 S pages initial) where
  d2 : Row2858.D2Input S pages
  target : Targets.Target13Stage4 d2
  source : Incoming.Source3Stage5 S pages
  zero5 : LocalZeroMeaning pages 5 degree
  add5 : LocalAddMeaning pages 5 degree

noncomputable def D5Input.step5 {P : Prefix5 S pages initial} (I : D5Input P) :
    StepInput S pages 5 wire5 P.page5 where
  outgoingTarget := I.target.page5
  outgoing := by intro x; funext i; exact Fin.elim0 i
  incomingSource := I.source.incoming
  incoming := by
    intro x
    erw [I.source.whole_zero x, P.page5.coordinates.zero_value]
    symm
    exact (show ∀ v : Vec 1, eval (matrixOf 2 1 wire5.incoming) v = zero from by decide) _
  zeroMeaning := I.zero5
  addMeaning := I.add5

noncomputable def D5Input.prefix6 {P : Prefix5 S pages initial} (I : D5Input P) :
    Prefix6 S pages initial := ⟨P, I.step5⟩

structure Certificate (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (initial : AdditiveCoordinates S 2 6) where
  first : Prefix3 S pages initial
  second : D3Input first
  third : D4Input second.prefix4
  fourth : D5Input third.prefix5

noncomputable def Certificate.prefix (C : Certificate S pages initial) : Prefix6 S pages initial :=
  C.fourth.prefix6

theorem Certificate.sound (C : Certificate S pages initial)
    (input : (S.element 2 degree).carrier)
    (binding : initial.coordinates.equivalence input = named2) :
    ResultValid S pages initial input := by
  fact761_cert using C.prefix named binding

theorem Certificate.nonboundaries (C : Certificate S pages initial) :
    ¬ PageBoundary S 2 degree (raw initial) ∧
    ¬ PageBoundary S 3 degree C.first.endpoint3.value ∧
    ¬ PageBoundary S 4 degree C.second.prefix4.endpoint4.value ∧
    ¬ PageBoundary S 5 degree C.third.prefix5.endpoint5.value :=
  C.prefix.nonboundaries

#print axioms D3Input.step3
#print axioms D4Input.step4
#print axioms D5Input.step5
#print axioms Certificate.sound
#print axioms Certificate.nonboundaries
end Fact761ConstructedActual
