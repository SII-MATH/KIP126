import Fact721SecondLater.Basic

namespace Fact721FirstD6DC2h6.PageMap
open ManualInputObligations.Reference

/-- An actual map of the two page systems, including its quotient law. -/
structure Map (S T : AdamsSpectralSequence) (sp : CertifiedAdamsPages S)
    (tp : CertifiedAdamsPages T) where
  map : ∀ r d, (S.element r d).carrier → (T.element r d).carrier
  map_zero : ∀ r d, map r d 0 = 0
  map_add : ∀ r d x y, map r d (x+y) = map r d x + map r d y
  naturality : ∀ r d x, T.differential r d (map r d x) =
    map r (AdamsTarget r d) (S.differential r d x)
  quotient : ∀ r d (x : PageCycle S r d) (y : PageCycle T r d),
    y.val = map r d x.val →
    map (r+1) d ((sp.nextPage r d).toNext (Quotient.mk _ x)) =
      (tp.nextPage r d).toNext (Quotient.mk _ y)

variable {S T : AdamsSpectralSequence} {sp : CertifiedAdamsPages S} {tp : CertifiedAdamsPages T}

def Map.cycle (F : Map S T sp tp) (r : Nat) (d : Bidegree) (x : PageCycle S r d) :
    PageCycle T r d :=
  ⟨F.map r d x.val,by rw [F.naturality,x.property,S.zero_is_zero,F.map_zero,T.zero_is_zero]⟩

theorem Map.quotient_cycle (F : Map S T sp tp) (r : Nat) (d : Bidegree) (x : PageCycle S r d) :
    F.map (r+1) d ((sp.nextPage r d).toNext (Quotient.mk _ x)) =
      (tp.nextPage r d).toNext (Quotient.mk _ (F.cycle r d x)) := F.quotient r d x _ rfl

theorem Map.surjective_next (F : Map S T sp tp) (r : Nat) (d : Bidegree)
    (onto : Function.Surjective (F.map r d))
    (cycles : ∀ x, S.differential r d x = 0) : Function.Surjective (F.map (r+1) d) := by
  intro y
  obtain ⟨q,rfl⟩ := Row2773D4Leibniz.Descent.next_surjective T tp r d y
  obtain ⟨x,hx⟩ := onto q.val
  let cycle : PageCycle S r d := ⟨x,(cycles x).trans (S.zero_is_zero _ _).symm⟩
  exact ⟨(sp.nextPage r d).toNext (Quotient.mk _ cycle),F.quotient r d cycle q hx.symm⟩

theorem Map.whole_zero (F : Map S T sp tp) (r : Nat) (d : Bidegree)
    (onto : Function.Surjective (F.map r d))
    (cycles : ∀ x, S.differential r d x = 0)
    (x : (T.element r d).carrier) : T.differential r d x = 0 := by
  obtain ⟨y,rfl⟩ := onto x
  rw [F.naturality,cycles,F.map_zero]

#print axioms Map.cycle
#print axioms Map.quotient_cycle
#print axioms Map.surjective_next
#print axioms Map.whole_zero
end Fact721FirstD6DC2h6.PageMap
