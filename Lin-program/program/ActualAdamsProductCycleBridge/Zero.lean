import ActualAdamsProductCycleBridge.Basic

namespace ActualAdamsProductCycleBridge
open ManualInputObligations.Reference
open LinearCertificates

/-- This tower is constructed from the actual certified homology identifications,
so its surjectivity is proved rather than supplied as a new unrelated premise. -/
noncomputable def pageTower (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (zeros : ActualAdamsSystemBridge.ZeroMeaning S pages) (d : Bidegree) :
    Fact762IncomingCertificates.PageTower where
  Carrier := fun r => (S.element r d).carrier
  zero := fun r => S.zero r d
  isCycle := fun r x => S.differential r d x = S.zero r (AdamsTarget r d)
  zeroCycle := by intro r; rw [S.zero_is_zero,(S.differential r d).map_zero',S.zero_is_zero]
  next := fun r x => (pages.nextPage r d).toNext (Quotient.mk _ x)
  nextZero := by
    intro r
    have he : (⟨S.zero r d,by rw [S.zero_is_zero,(S.differential r d).map_zero',S.zero_is_zero]⟩ : PageCycle S r d) =
        ActualAdamsSystemBridge.zeroCycle S r d := by apply Subtype.ext; exact S.zero_is_zero r d
    change (pages.nextPage r d).toNext (Quotient.mk _ _) = S.zero (r+1) d
    rw [he]
    exact zeros r d
  nextSurjective := by
    intro r y
    have represent (q : PageHomology S r d) :
        ∃ x : PageCycle S r d, (pages.nextPage r d).toNext (Quotient.mk _ x) =
          (pages.nextPage r d).toNext q := by
      induction q using Quotient.inductionOn with
      | h x => exact ⟨x,rfl⟩
    obtain ⟨x,hx⟩ := represent ((pages.nextPage r d).fromNext y)
    exact ⟨x,hx.trans ((pages.nextPage r d).rightInverse y)⟩

theorem zero_later_from_coordinates (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (zeros : ActualAdamsSystemBridge.ZeroMeaning S pages) (d : Bidegree)
    (coordinates : (S.element 2 d).carrier → Vec 0) (faithful : Function.Injective coordinates)
    (r : Nat) (later : 2 ≤ r) : ∀ x : (S.element r d).carrier, x = 0 := by
  have init : (pageTower S pages zeros d).ZeroAt 2 := by
    intro x
    apply faithful
    funext i
    exact Fin.elim0 i
  have result := (pageTower S pages zeros d).zero_later init later
  intro x
  exact (result x).trans (S.zero_is_zero r d)

theorem delta_cycle (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (zeros : ActualAdamsSystemBridge.ZeroMeaning S pages)
    (coordinates : (S.element 2 ⟨13,57⟩).carrier → Vec 0)
    (faithful : Function.Injective coordinates) (delta : (S.element 4 deltaDegree).carrier) :
    S.differential 4 deltaDegree delta = 0 :=
  zero_later_from_coordinates S pages zeros ⟨13,57⟩ coordinates faithful 4 (by decide) _

theorem named_cycle_from_empty_target (S : AdamsSpectralSequence)
    (pages : CertifiedAdamsPages S) (zeros : ActualAdamsSystemBridge.ZeroMeaning S pages)
    (P : CertifiedAdamsProduct S)
    (coordinates : (S.element 2 ⟨13,57⟩).carrier → Vec 0)
    (faithful : Function.Injective coordinates)
    (g : (S.element 4 gDegree).carrier) (delta : (S.element 4 deltaDegree).carrier) :
    S.differential 4 namedDegree (namedProduct S P.product 4 g delta) = 0 :=
  named_cycle S P g delta (delta_cycle S pages zeros coordinates faithful delta)

#print axioms pageTower
#print axioms zero_later_from_coordinates
#print axioms named_cycle_from_empty_target
end ActualAdamsProductCycleBridge
