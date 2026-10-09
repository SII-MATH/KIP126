import Fact761ConstructedActual.Targets

namespace Fact761ConstructedActual.Incoming
open LinearCertificates PageTransitionCertificates ManualInputObligations.Reference
open Row3151ActualTransport ActualAdamsHomologyCoordinates
open ActualAdamsHomologyCoordinates.Meaning Local
open NamedPageComparison.ConditionalHigherData

theorem accepted4 : checkWire b4_131_2 = true := by decide
theorem accepted5 : checkWire b5_132_2 = true := by decide
theorem accepted3_2 : checkWire b3_130_2 = true := by decide
theorem accepted3_3 : checkWire b3_130_3 = true := by decide
theorem accepted3_4 : checkWire b3_130_4 = true := by decide

structure Empty4 (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S) where
  initial : Chart ⟨4,131⟩ S 2 1
  step2 : Step ⟨4,131⟩ S pages 2 b4_131_2 initial
  zero3 : LocalZeroMeaning pages 3 ⟨4,131⟩

structure Empty5 (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S) where
  initial : Chart ⟨5,132⟩ S 2 1
  step2 : Step ⟨5,132⟩ S pages 2 b5_132_2 initial

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}

noncomputable def Empty4.page4 (E : Empty4 S pages) : Coordinates S 4 ⟨4,131⟩ 0 :=
  emptyNext pages (E.step2.next accepted4).coordinates E.zero3

noncomputable def Empty5.page3 (E : Empty5 S pages) : Coordinates S 3 ⟨5,132⟩ 0 :=
  (E.step2.next accepted5).coordinates

noncomputable def Empty4.incoming (E : Empty4 S pages) :
    ActualAdamsIncomingBridge.Source S 4 degree ≃ Vec 0 :=
  (ActualAdamsIncomingBridge.sourceEquiv S 4 degree (by decide)).trans E.page4.equivalence

noncomputable def Empty5.incoming (E : Empty5 S pages) :
    ActualAdamsIncomingBridge.Source S 3 degree ≃ Vec 0 :=
  (ActualAdamsIncomingBridge.sourceEquiv S 3 degree (by decide)).trans E.page3.equivalence

theorem empty_incoming {r : Nat}
    (source : ActualAdamsIncomingBridge.Source S r degree ≃ Vec 0)
    (x : ActualAdamsIncomingBridge.Source S r degree) :
    ActualAdamsIncomingBridge.differential S r degree x = 0 := by
  have eq : x = ActualAdamsIncomingBridge.sourceZero S r degree :=
    source.injective (by funext i; exact Fin.elim0 i)
  rw [eq, ActualAdamsIncomingBridge.differential_zero, S.zero_is_zero]

structure Source3Stage2 (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S) where
  initial : Chart ⟨3,130⟩ S 2 2
  step2 : Step ⟨3,130⟩ S pages 2 b3_130_2 initial

noncomputable def Source3Stage2.page3 (T : Source3Stage2 S pages) : Chart ⟨3,130⟩ S 3 1 :=
  T.step2.next accepted3_2

/-- The NULL future marker in row 2438 does not discharge these finite
cycle interpretations. Each page's sole generator is named in its chart. -/
structure Source3Stage3 (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S) where
  previous : Source3Stage2 S pages
  target : Coordinates S 3 ⟨6,132⟩ 1
  source : ActualAdamsIncomingBridge.Source S 3 ⟨3,130⟩ ≃ Vec 0
  cycle3 : S.differential 3 ⟨3,130⟩
    (previous.page3.coordinates.equivalence.symm (fun _ => true)) = 0
  zero3 : LocalZeroMeaning pages 3 ⟨3,130⟩
  add3 : LocalAddMeaning pages 3 ⟨3,130⟩

noncomputable def Source3Stage3.step3 (T : Source3Stage3 S pages) :
    Step ⟨3,130⟩ S pages 3 b3_130_3 T.previous.page3 where
  outgoingTarget := T.target
  outgoing := by
    intro x
    erw [one_dimensional_zero T.previous.page3.coordinates T.cycle3 x, T.target.zero_value]
    symm
    exact (show ∀ v : Vec 1, eval (matrixOf 1 1 b3_130_3.outgoing) v = zero from by decide) _
  incomingSource := T.source
  incoming := by
    intro x
    have eq : x = ActualAdamsIncomingBridge.sourceZero S 3 ⟨3,130⟩ :=
      T.source.injective (by funext i; exact Fin.elim0 i)
    erw [eq, ActualAdamsIncomingBridge.differential_zero, S.zero_is_zero,
      T.previous.page3.coordinates.zero_value]
    symm
    exact (show ∀ v : Vec 0, eval (matrixOf 1 0 b3_130_3.incoming) v = zero from by decide) _
  zeroMeaning := T.zero3
  addMeaning := T.add3

noncomputable def Source3Stage3.page4 (T : Source3Stage3 S pages) : Chart ⟨3,130⟩ S 4 1 :=
  T.step3.next accepted3_3

structure Source3Stage4 (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S) where
  previous : Source3Stage3 S pages
  target : Coordinates S 4 ⟨7,133⟩ 1
  cycle4 : S.differential 4 ⟨3,130⟩
    (previous.page4.coordinates.equivalence.symm (fun _ => true)) = 0
  zero4 : LocalZeroMeaning pages 4 ⟨3,130⟩
  add4 : LocalAddMeaning pages 4 ⟨3,130⟩

noncomputable def Source3Stage4.emptySource (_T : Source3Stage4 S pages) :
    ActualAdamsIncomingBridge.Source S 4 ⟨3,130⟩ ≃ Vec 0 where
  toFun := fun _ => zero
  invFun := fun _ => ActualAdamsIncomingBridge.sourceZero S 4 ⟨3,130⟩
  left_inv := fun x => (ActualAdamsIncomingBridge.source_above_filtration S 4 ⟨3,130⟩ (by decide)).elim _ x
  right_inv := by intro x; funext i; exact Fin.elim0 i

noncomputable def Source3Stage4.step4 (T : Source3Stage4 S pages) :
    Step ⟨3,130⟩ S pages 4 b3_130_4 T.previous.page4 where
  outgoingTarget := T.target
  outgoing := by
    intro x
    erw [one_dimensional_zero T.previous.page4.coordinates T.cycle4 x, T.target.zero_value]
    symm
    exact (show ∀ v : Vec 1, eval (matrixOf 1 1 b3_130_4.outgoing) v = zero from by decide) _
  incomingSource := T.emptySource
  incoming := by
    intro x
    have eq : x = ActualAdamsIncomingBridge.sourceZero S 4 ⟨3,130⟩ :=
      (ActualAdamsIncomingBridge.source_above_filtration S 4 ⟨3,130⟩ (by decide)).elim _ _
    erw [eq, ActualAdamsIncomingBridge.differential_zero, S.zero_is_zero,
      T.previous.page4.coordinates.zero_value]
    symm
    exact (show ∀ v : Vec 0, eval (matrixOf 1 0 b3_130_4.incoming) v = zero from by decide) _
  zeroMeaning := T.zero4
  addMeaning := T.add4

noncomputable def Source3Stage4.page5 (T : Source3Stage4 S pages) : Chart ⟨3,130⟩ S 5 1 :=
  T.step4.next accepted3_4

structure Source3Stage5 (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S) where
  previous : Source3Stage4 S pages
  cycle5 : S.differential 5 ⟨3,130⟩
    (previous.page5.coordinates.equivalence.symm (fun _ => true)) = 0

noncomputable def Source3Stage5.incoming (T : Source3Stage5 S pages) :
    ActualAdamsIncomingBridge.Source S 5 degree ≃ Vec 1 :=
  (ActualAdamsIncomingBridge.sourceEquiv S 5 degree (by decide)).trans
    T.previous.page5.coordinates.equivalence

theorem Source3Stage5.whole_zero (T : Source3Stage5 S pages)
    (x : ActualAdamsIncomingBridge.Source S 5 degree) :
    ActualAdamsIncomingBridge.differential S 5 degree x = 0 := by
  unfold ActualAdamsIncomingBridge.differential
  rw [dif_pos (show 5 ≤ degree.filtration from by decide)]
  change pageCast S 5 _ (S.differential 5 ⟨3,130⟩ _) = 0
  rw [one_dimensional_zero T.previous.page5.coordinates T.cycle5,
    ActualAdamsIncomingBridge.cast_zero]

#print axioms Empty4.page4
#print axioms Empty5.page3
#print axioms empty_incoming
#print axioms Source3Stage3.step3
#print axioms Source3Stage4.step4
#print axioms Source3Stage5.whole_zero
end Fact761ConstructedActual.Incoming
