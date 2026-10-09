import ManualInputObligations.Typed
import PermanentCycleCertificates.System

namespace ActualAdamsSystemBridge
open ManualInputObligations.Reference

def zeroCycle (S : AdamsSpectralSequence) (r : Nat) (d : Bidegree) : PageCycle S r d :=
  ⟨0, by rw [(S.differential r d).map_zero', S.zero_is_zero]⟩

/-- A Type equivalence alone need not identify the zero homology class. -/
def ZeroMeaning (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S) : Prop :=
  ∀ r d, (pages.nextPage r d).toNext (Quotient.mk _ (zeroCycle S r d)) =
    S.zero (r+1) d

theorem quotient_zero_iff (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (zeroMeaning : ZeroMeaning S pages) (r : Nat) (d : Bidegree) (x : PageCycle S r d) :
    (pages.nextPage r d).toNext (Quotient.mk _ x) = S.zero (r+1) d ↔
      PageBoundary S r d x.val := by
  rw [← zeroMeaning r d]
  have injective : Function.Injective (pages.nextPage r d).toNext := by
    intro a b h
    simpa only [(pages.nextPage r d).leftInverse] using congrArg (pages.nextPage r d).fromNext h
  constructor
  · intro h
    have related := Quotient.exact (injective h)
    change x.val = 0 ∨ PageBoundary S r d (x.val + 0) at related
    rcases related with hz | hb
    · exact Or.inl hz
    · simpa using hb
  · intro h
    apply congrArg (pages.nextPage r d).toNext
    apply Quotient.sound
    exact Or.inr (by simpa [zeroCycle] using h)

/-- Every actual incoming degree is represented; Unit accounts for the zero
boundary when no nonnegative source degree exists. -/
abbrev Incoming (S : AdamsSpectralSequence) (r : Nat) (d : Bidegree) :=
  Unit ⊕ (Σ e : Bidegree, {_h : AdamsTarget r e = d // True} × (S.element r e).carrier)

def incoming (S : AdamsSpectralSequence) (r : Nat) (d : Bidegree) :
    Incoming S r d → (S.element r d).carrier
  | .inl _ => 0
  | .inr ⟨e, h, x⟩ => pageCast S r h.val (S.differential r e x)

theorem incoming_image (S : AdamsSpectralSequence) (r : Nat) (d : Bidegree)
    (x : (S.element r d).carrier) :
    (∃ y, incoming S r d y = x) ↔ PageBoundary S r d x := by
  constructor
  · rintro ⟨y, hy⟩
    cases y with
    | inl _ => exact Or.inl hy.symm
    | inr y =>
      obtain ⟨e, h, z⟩ := y
      have hd := h.val
      subst d
      exact Or.inr ⟨e, z, rfl, hy⟩
  · rintro (hz | ⟨e, y, h, hy⟩)
    · exact ⟨.inl (), hz.symm⟩
    · subst d
      exact ⟨.inr ⟨e, ⟨rfl, trivial⟩, y⟩, hy⟩

noncomputable def advance (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (r : Nat) (d : Bidegree) (x : (S.element r d).carrier) :
    (S.element (r+1) d).carrier := by
  classical
  exact if h : S.differential r d x = S.zero r (AdamsTarget r d) then
    (pages.nextPage r d).toNext (Quotient.mk _ (⟨x, h⟩ : PageCycle S r d))
  else S.zero (r+1) d

theorem advance_on_cycle (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (r : Nat) (d : Bidegree) (x : (S.element r d).carrier)
    (h : S.differential r d x = S.zero r (AdamsTarget r d)) :
    advance S pages r d x = (pages.nextPage r d).toNext
      (Quotient.mk _ (⟨x, h⟩ : PageCycle S r d)) := by
  classical
  simp only [advance, dif_pos h]

noncomputable def system (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (zeroMeaning : ZeroMeaning S pages) (d : Bidegree) : PermanentCycleCertificates.System where
  Page := fun n => (S.element (n+2) d).carrier
  Incoming := fun n => Incoming S (n+2) d
  Outgoing := fun n => (S.element (n+2) (AdamsTarget (n+2) d)).carrier
  zero := fun n => S.zero (n+2) d
  zeroIncoming := fun _ => .inl ()
  zeroOutgoing := fun n => S.zero (n+2) (AdamsTarget (n+2) d)
  incoming := fun n => incoming S (n+2) d
  outgoing := fun n => S.differential (n+2) d
  advance := fun n => advance S pages (n+2) d
  incoming_zero := fun n => (S.zero_is_zero (n+2) d).symm
  homology_zero := by
    intro n x hx
    rw [advance_on_cycle S pages (n+2) d x hx]
    exact (quotient_zero_iff S pages zeroMeaning (n+2) d ⟨x, hx⟩).trans
      (incoming_image S (n+2) d x).symm

#print axioms quotient_zero_iff
#print axioms incoming_image
#print axioms system
end ActualAdamsSystemBridge
