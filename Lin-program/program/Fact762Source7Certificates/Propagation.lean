import Fact762Source7Certificates.Finite

namespace Fact762Source7Certificates
open Fact762IncomingCertificates

/-- The full page, including unnamed linear combinations, has at most the
two elements in the F2 span of the named class. -/
def Spanned (p : PageTower) (named : (q : Nat) → p.Carrier q) (q : Nat) : Prop :=
  ∀ x : p.Carrier q, x = p.zero q ∨ x = named q

theorem span_next (p : PageTower) (named : (q : Nat) → p.Carrier q) (q : Nat)
    (hq : Spanned p named q) (cycle : p.isCycle q (named q))
    (meaning : p.next q ⟨named q,cycle⟩ = named (q+1)) : Spanned p named (q+1) := by
  intro y
  obtain ⟨x,rfl⟩ := p.nextSurjective q y
  rcases hq x.val with h | h
  · left
    have he : x = ⟨p.zero q,p.zeroCycle q⟩ := Subtype.ext h
    rw [he,p.nextZero]
  · right
    have he : x = ⟨named q,cycle⟩ := Subtype.ext h
    rw [he,meaning]

theorem span_through_seven (p : PageTower) (named : (q : Nat) → p.Carrier q)
    (base : Spanned p named 3)
    (cycle : ∀ q, 3 ≤ q → q < 7 → p.isCycle q (named q))
    (meaning : ∀ q (lo : 3 ≤ q) (hi : q < 7),
      p.next q ⟨named q,cycle q lo hi⟩ = named (q+1)) : Spanned p named 7 := by
  have h4 := span_next p named 3 base (cycle 3 (by omega) (by omega)) (meaning 3 (by omega) (by omega))
  have h5 := span_next p named 4 h4 (cycle 4 (by omega) (by omega)) (meaning 4 (by omega) (by omega))
  have h6 := span_next p named 5 h5 (cycle 5 (by omega) (by omega)) (meaning 5 (by omega) (by omega))
  exact span_next p named 6 h6 (cycle 6 (by omega) (by omega)) (meaning 6 (by omega) (by omega))

theorem named_zero_implies_all_zero (p : PageTower) (named : (q : Nat) → p.Carrier q)
    (span : Spanned p named q) {Y : Type} (zy : Y) (d : p.Carrier q → Y)
    (zero : d (p.zero q) = zy) (hpref : d (named q) = zy) : ∀ x, d x = zy := by
  intro x
  rcases span x with h | h
  · rw [h,zero]
  · rw [h,hpref]

theorem page7_all_values_from_named_prefix (p : PageTower)
    (named : (q : Nat) → p.Carrier q) (base : Spanned p named 3)
    (cycle : ∀ q, 3 ≤ q → q < 7 → p.isCycle q (named q))
    (meaning : ∀ q (lo : 3 ≤ q) (hi : q < 7),
      p.next q ⟨named q,cycle q lo hi⟩ = named (q+1))
    {Y : Type} (zy : Y) (d7 : p.Carrier 7 → Y)
    (zero : d7 (p.zero 7) = zy)
    (row2632_prefix : d7 (named 7) = zy) : ∀ x, d7 x = zy :=
  named_zero_implies_all_zero p named (span_through_seven p named base cycle meaning)
    zy d7 zero row2632_prefix

#print axioms span_through_seven
#print axioms page7_all_values_from_named_prefix
end Fact762Source7Certificates
