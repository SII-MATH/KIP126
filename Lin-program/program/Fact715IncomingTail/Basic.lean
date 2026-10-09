import Fact715IncomingTail.Data
import Fact721ConstructedActual.Basic
import Row2773D4Leibniz.Descent
import ActualAdamsSystemBridge.Tail

namespace Fact715IncomingTail
open ManualInputObligations.Reference Row3151ActualTransport
open ActualAdamsHomologyCoordinates ActualAdamsHomologyCoordinates.Meaning
open Fact721ConstructedActual ActualAdamsSystemBridge

abbrev degree : Bidegree := ⟨11,136⟩

theorem empty_later (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (zeros : ZeroMeaning S pages) (d : Bidegree) (r : Nat)
    (empty : ∀ x : (S.element r d).carrier, x = 0)
    (q : Nat) (above : r ≤ q) (x : (S.element q d).carrier) : x = 0 := by
  induction q,above using Nat.le_induction with
  | base => exact empty x
  | succ q hq ih =>
    obtain ⟨y,rfl⟩ := Row2773D4Leibniz.Descent.next_surjective S pages q d x
    have same : y = zeroCycle S q d := Subtype.ext (ih y.val)
    exact (congrArg (fun z : PageCycle S q d =>
      (pages.nextPage q d).toNext (Quotient.mk _ z)) same).trans
      ((zeros q d).trans (S.zero_is_zero _ _))

theorem coordinate_empty {S : AdamsSpectralSequence} {r : Nat} {d : Bidegree}
    (C : Coordinates S r d 0) (x : (S.element r d).carrier) : x = 0 :=
  C.equivalence.injective (by funext i; exact Fin.elim0 i)

/-- Complete earlier homology computations, not later zero-page premises. -/
structure EarlierSources (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S) where
  source6 : AdditiveCoordinates ⟨5,131⟩ S 2 1
  step6 : StepInput ⟨5,131⟩ S pages 2 Data.source6d2 source6
  source7 : AdditiveCoordinates ⟨4,130⟩ S 2 2
  step7a : StepInput ⟨4,130⟩ S pages 2 Data.source7d2 source7
  step7b : StepInput ⟨4,130⟩ S pages 3 Data.source7d3
    (step7a.next Data.source7d2_accepted)
  source8 : AdditiveCoordinates ⟨3,129⟩ S 2 1
  step8 : StepInput ⟨3,129⟩ S pages 2 Data.source8d2 source8
  source10 : Coordinates S 2 ⟨1,127⟩ 0
  source11 : Coordinates S 2 ⟨0,126⟩ 0

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}

theorem EarlierSources.empty6 (E : EarlierSources S pages)
    (zeros : ZeroMeaning S pages) (x : (S.element 6 ⟨5,131⟩).carrier) : x = 0 :=
  empty_later S pages zeros _ 3
    (coordinate_empty (E.step6.next Data.source6d2_accepted).coordinates) 6 (by decide) x

theorem EarlierSources.empty7 (E : EarlierSources S pages)
    (zeros : ZeroMeaning S pages) (x : (S.element 7 ⟨4,130⟩).carrier) : x = 0 :=
  empty_later S pages zeros _ 4
    (coordinate_empty (E.step7b.next Data.source7d3_accepted).coordinates) 7 (by decide) x

theorem EarlierSources.empty8 (E : EarlierSources S pages)
    (zeros : ZeroMeaning S pages) (x : (S.element 8 ⟨3,129⟩).carrier) : x = 0 :=
  empty_later S pages zeros _ 3
    (coordinate_empty (E.step8.next Data.source8d2_accepted).coordinates) 8 (by decide) x

/-- This exhausts the later incoming degrees except pages 5 and 9. Those
two sources need additional mathematics and are deliberately excluded. -/
theorem EarlierSources.incoming_zero (E : EarlierSources S pages)
    (zeros : ZeroMeaning S pages) (r : Nat) (lower : 5 ≤ r)
    (not5 : r ≠ 5) (not9 : r ≠ 9) (y : Incoming S r degree) :
    incoming S r degree y = S.zero r degree := by
  by_cases high : degree.filtration < r
  · exact incoming_map_zero_above_filtration S r degree high y
  cases y with
  | inl u => cases u; exact (S.zero_is_zero _ _).symm
  | inr y =>
    obtain ⟨e,h,x⟩ := y
    have hs := congrArg Bidegree.filtration h.val
    have ht := congrArg Bidegree.internal h.val
    change e.filtration + r = 11 at hs
    change e.internal + (r : Int) - 1 = 136 at ht
    have cases : r = 6 ∨ r = 7 ∨ r = 8 ∨ r = 10 ∨ r = 11 := by
      change ¬ 11 < r at high
      omega
    have hx : x = 0 := by
      rcases cases with rfl | rfl | rfl | rfl | rfl
      · have same : e = (⟨5,131⟩ : Bidegree) := by apply Bidegree.ext <;> dsimp at * <;> omega
        subst e
        exact E.empty6 zeros x
      · have same : e = (⟨4,130⟩ : Bidegree) := by apply Bidegree.ext <;> dsimp at * <;> omega
        subst e
        exact E.empty7 zeros x
      · have same : e = (⟨3,129⟩ : Bidegree) := by apply Bidegree.ext <;> dsimp at * <;> omega
        subst e
        exact E.empty8 zeros x
      · have same : e = (⟨1,127⟩ : Bidegree) := by apply Bidegree.ext <;> dsimp at * <;> omega
        subst e
        exact empty_later S pages zeros _ 2 (coordinate_empty E.source10) 10 (by decide) x
      · have same : e = (⟨0,126⟩ : Bidegree) := by apply Bidegree.ext <;> dsimp at * <;> omega
        subst e
        exact empty_later S pages zeros _ 2 (coordinate_empty E.source11) 11 (by decide) x
    subst x
    change pageCast S r h.val (S.differential r e 0) = S.zero r degree
    rw [(S.differential r e).map_zero',ActualAdamsIncomingBridge.cast_zero,S.zero_is_zero]

#print axioms empty_later
#print axioms EarlierSources.empty6
#print axioms EarlierSources.empty7
#print axioms EarlierSources.empty8
#print axioms EarlierSources.incoming_zero
end Fact715IncomingTail
