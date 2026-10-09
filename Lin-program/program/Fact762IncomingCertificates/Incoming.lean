import Fact762IncomingCertificates.ZeroPropagation

namespace Fact762IncomingCertificates
open LinearCertificates

def AllowedPage (q : Nat) : Prop := q = 6 ∨ q = 12
def ProvedZeroSourcePage (q : Nat) : Prop := q = 5 ∨ q = 8 ∨ q = 9 ∨ q = 10 ∨ q = 11 ∨ q = 13 ∨ q = 14
def VanishesAt {X Y : Type} (d : X → Y) (zy : Y) : Prop := ∀ x, d x = zy

/-- One full incoming source and the same target degree on every page.
The source filtration is integer-valued so the negative tail is explicit. -/
structure IncomingSystem where
  Source : Nat → Type
  Target : Nat → Type
  zeroSource : (q : Nat) → Source q
  zeroTarget : (q : Nat) → Target q
  differential : (q : Nat) → Source q → Target q
  target : (q : Nat) → Target q
  preservesZero : ∀ q, differential q (zeroSource q) = zeroTarget q

def IncomingSystem.HitAt (p : IncomingSystem) (q : Nat) : Prop :=
  ∃ x, p.differential q x = p.target q

theorem IncomingSystem.no_hit_of_source_zero (p : IncomingSystem) (q : Nat)
    (nonzero : p.target q ≠ p.zeroTarget q)
    (hz : ∀ x : p.Source q, x = p.zeroSource q) : ¬ p.HitAt q :=
  no_preimage_from_zero _ _ hz _ (p.preservesZero q) _ nonzero

theorem IncomingSystem.no_hit_of_all_values (p : IncomingSystem) (q : Nat)
    (nonzero : p.target q ≠ p.zeroTarget q)
    (hz : VanishesAt (p.differential q) (p.zeroTarget q)) : ¬ p.HitAt q := by
  rintro ⟨x,hx⟩
  exact nonzero ((hz x).symm.trans hx).symm

/-- The missing pages4 and7 remain explicit all-vector obligations.
This theorem is a precise assembly interface, not a proof those obligations hold. -/
theorem only_six_or_twelve (p : IncomingSystem)
    (two : ¬ p.HitAt 2) (three : ¬ p.HitAt 3)
    (four : VanishesAt (p.differential 4) (p.zeroTarget 4))
    (seven : VanishesAt (p.differential 7) (p.zeroTarget 7))
    (zeroSources : ∀ q, ProvedZeroSourcePage q → ∀ x : p.Source q, x = p.zeroSource q)
    (negativeFiltration : ∀ q : Nat, (14 : Int) - (q : Int) < 0 → ∀ x : p.Source q, x = p.zeroSource q)
    (q : Nat) (page : 2 ≤ q) (nonzero : p.target q ≠ p.zeroTarget q)
    (hit : p.HitAt q) : AllowedPage q := by
  by_cases tail : 14 < q
  · have hz := negativeFiltration q (by omega)
    exact False.elim (p.no_hit_of_source_zero q nonzero hz hit)
  by_cases a : q = 6 ∨ q = 12
  · exact a
  have cases : q = 2 ∨ q = 3 ∨ q = 4 ∨ q = 7 ∨ ProvedZeroSourcePage q := by
    unfold ProvedZeroSourcePage
    omega
  rcases cases with h | h | h | h | h
  · subst q; exact False.elim (two hit)
  · subst q; exact False.elim (three hit)
  · subst q; exact False.elim (p.no_hit_of_all_values 4 nonzero four hit)
  · subst q; exact False.elim (p.no_hit_of_all_values 7 nonzero seven hit)
  · exact False.elim (p.no_hit_of_source_zero q nonzero (zeroSources q h) hit)

theorem later_source_no_hit (p : IncomingSystem) (q r : Nat) (tower : PageTower)
    (nonzero : p.target r ≠ p.zeroTarget r)
    (baseZero : tower.ZeroAt q) (later : q ≤ r)
    (toSource : tower.Carrier r → p.Source r) (covers : Function.Surjective toSource)
    (zeroMeaning : toSource (tower.zero r) = p.zeroSource r) : ¬ p.HitAt r := by
  apply p.no_hit_of_source_zero r nonzero
  intro x
  obtain ⟨y,rfl⟩ := covers x
  rw [tower.zero_later baseZero later y,zeroMeaning]

#print axioms only_six_or_twelve
#print axioms later_source_no_hit
end Fact762IncomingCertificates
