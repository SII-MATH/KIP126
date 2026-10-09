import Fact761ConstructedActual.Row2858

namespace Fact761ConstructedActual.Targets
open LinearCertificates PageTransitionCertificates ManualInputObligations.Reference
open Row3151ActualTransport ActualAdamsHomologyCoordinates
open ActualAdamsHomologyCoordinates.Meaning Local
open NamedPageComparison.ConditionalHigherData

theorem accepted17 : checkWire b17_141_2 = true := by decide
theorem accepted12_2 : checkWire b12_137_2 = true := by decide
theorem accepted12_3 : checkWire b12_137_3 = true := by decide
theorem accepted13_3 : checkWire b13_138_3 = true := by decide
theorem accepted13_4 : checkWire b13_138_4 = true := by decide

structure Empty17 (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S) where
  initial : Chart ⟨17,141⟩ S 2 4
  step2 : Step ⟨17,141⟩ S pages 2 b17_141_2 initial
  zero3 : LocalZeroMeaning pages 3 ⟨17,141⟩

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}

noncomputable def Empty17.page3 (E : Empty17 S pages) : Coordinates S 3 ⟨17,141⟩ 0 :=
  (E.step2.next accepted17).coordinates
noncomputable def Empty17.page4 (E : Empty17 S pages) : Coordinates S 4 ⟨17,141⟩ 0 :=
  emptyNext pages E.page3 E.zero3

/-- Row 3080 is unknown in the database, but its whole actual d3 vanishes
because the complete target E3 quotient has dimension zero. -/
theorem Empty17.row3080_zero (E : Empty17 S pages)
    (x : (S.element 3 ⟨14,139⟩).carrier) : S.differential 3 ⟨14,139⟩ x = 0 :=
  empty_zero E.page3 _

structure Empty12Stage2 (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S) where
  initial : Chart ⟨12,137⟩ S 2 5
  step2 : Step ⟨12,137⟩ S pages 2 b12_137_2 initial

noncomputable def Empty12Stage2.page3 (E : Empty12Stage2 S pages) : Chart ⟨12,137⟩ S 3 2 :=
  E.step2.next accepted12_2

structure Empty12 (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S) where
  previous : Empty12Stage2 S pages
  step3 : Step ⟨12,137⟩ S pages 3 b12_137_3 previous.page3

noncomputable def Empty12.page4 (E : Empty12 S pages) : Coordinates S 4 ⟨12,137⟩ 0 :=
  (E.step3.next accepted12_3).coordinates

structure Target13Stage3 (I : Row2858.D2Input S pages) where
  leibniz : Row2858.D2Input.Leibniz I
  outgoingTarget : Coordinates S 3 ⟨16,140⟩ 3
  outgoing : ∀ x, outgoingTarget.equivalence (S.differential 3 ⟨13,138⟩ x) =
    eval (matrixOf 3 3 b13_138_3.outgoing) (I.target3.coordinates.equivalence x)
  zero3 : LocalZeroMeaning pages 3 ⟨13,138⟩
  add3 : LocalAddMeaning pages 3 ⟨13,138⟩

noncomputable def Target13Stage3.step3 {I : Row2858.D2Input S pages} (T : Target13Stage3 I) :
    Step ⟨13,138⟩ S pages 3 b13_138_3 I.target3 where
  outgoingTarget := T.outgoingTarget
  outgoing := T.outgoing
  incomingSource := (ActualAdamsIncomingBridge.sourceEquiv S 3 ⟨13,138⟩ (by decide)).trans
    I.source3.coordinates.equivalence
  incoming := by
    intro x
    erw [I.incoming_zero T.leibniz, I.target3.coordinates.zero_value]
    symm
    exact (show ∀ v : Vec 1, eval (matrixOf 3 1 b13_138_3.incoming) v = zero from by decide) _
  zeroMeaning := T.zero3
  addMeaning := T.add3

noncomputable def Target13Stage3.page4 {I : Row2858.D2Input S pages} (T : Target13Stage3 I) :
    Chart ⟨13,138⟩ S 4 2 := T.step3.next accepted13_3

structure Target13Stage4 (I : Row2858.D2Input S pages) where
  previous : Target13Stage3 I
  empty17 : Empty17 S pages
  incomingSource : ActualAdamsIncomingBridge.Source S 4 ⟨13,138⟩ ≃ Vec 2
  incoming : ∀ x, previous.page4.coordinates.equivalence
    (ActualAdamsIncomingBridge.differential S 4 ⟨13,138⟩ x) =
      eval (matrixOf 2 2 b13_138_4.incoming) (incomingSource x)
  zero4 : LocalZeroMeaning pages 4 ⟨13,138⟩
  add4 : LocalAddMeaning pages 4 ⟨13,138⟩

noncomputable def Target13Stage4.step4 {I : Row2858.D2Input S pages} (T : Target13Stage4 I) :
    Step ⟨13,138⟩ S pages 4 b13_138_4 T.previous.page4 where
  outgoingTarget := T.empty17.page4
  outgoing := by intro x; funext i; exact Fin.elim0 i
  incomingSource := T.incomingSource
  incoming := T.incoming
  zeroMeaning := T.zero4
  addMeaning := T.add4

noncomputable def Target13Stage4.page5 {I : Row2858.D2Input S pages} (T : Target13Stage4 I) :
    Coordinates S 5 ⟨13,138⟩ 0 := (T.step4.next accepted13_4).coordinates

theorem d4_zero (T : Empty12 S pages) (x : (S.element 4 degree).carrier) :
    S.differential 4 degree x = 0 := empty_zero T.page4 _

theorem d5_zero {I : Row2858.D2Input S pages} (T : Target13Stage4 I)
    (x : (S.element 5 degree).carrier) : S.differential 5 degree x = 0 := empty_zero T.page5 _

#print axioms Empty17.row3080_zero
#print axioms Target13Stage3.step3
#print axioms Target13Stage4.step4
#print axioms d4_zero
#print axioms d5_zero
end Fact761ConstructedActual.Targets
