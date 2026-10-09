import PermanentCycleCertificates.System

namespace PermanentCycleCertificates

structure BigradedPages where
  group : Nat → Int → Int → Type

def incomingSpace (e : BigradedPages) (s t : Int) (n : Nat) : Type :=
  e.group (n + 2) (s - (n + 2 : Nat)) (t - (n + 2 : Nat) + 1)

def outgoingSpace (e : BigradedPages) (s t : Int) (n : Nat) : Type :=
  e.group (n + 2) (s + (n + 2 : Nat)) (t + (n + 2 : Nat) - 1)

/-- Nonnegative Adams filtration bounds incoming pages, not outgoing pages. -/
theorem incoming_vanishes (e : BigradedPages) (s t : Int) (n : Nat)
    (negative : ∀ r a b, a < 0 → Subsingleton (e.group r a b))
    (bound : s < (n + 2 : Nat)) : Subsingleton (incomingSpace e s t n) := by
  apply negative
  omega

theorem incoming_page_bound (s : Nat) (r : Nat)
    (nonnegative_source : 0 ≤ (s : Int) - (r : Int)) : r ≤ s := by omega

/-- An explicit all-page vanishing region a > A*(b-a)+B supplies an outgoing
cutoff. A finite database range is not such a region theorem. -/
theorem outgoing_vanishes_above_line (e : BigradedPages) (s t A B : Int) (n : Nat)
    (vanishing : ∀ r a b, A * (b - a) + B < a → Subsingleton (e.group r a b))
    (bound : A * (t - s - 1) + B < s + (n + 2 : Nat)) :
    Subsingleton (outgoingSpace e s t n) := by
  apply vanishing
  have stem : t + (n + 2 : Nat) - 1 - (s + (n + 2 : Nat)) = t - s - 1 := by omega
  simpa only [stem] using bound

structure AdamsSpaceMeaning (system : System) (e : BigradedPages) (s t : Int) where
  incoming : ∀ n, system.Incoming n → incomingSpace e s t n
  outgoing : ∀ n, system.Outgoing n → outgoingSpace e s t n
  incoming_injective : ∀ n, Function.Injective (incoming n)
  outgoing_injective : ∀ n, Function.Injective (outgoing n)

theorem subsingleton_of_injective {α β : Type} (e : α → β) (injective : Function.Injective e)
    (h : Subsingleton β) : Subsingleton α := ⟨fun x y => injective (h.allEq _ _)⟩

theorem tail_from_adams_vanishing (system : System) (e : BigradedPages) (s t A B : Int)
    (meaning : AdamsSpaceMeaning system e s t) (cutoff : Nat)
    (negative : ∀ r a b, a < 0 → Subsingleton (e.group r a b))
    (line : ∀ r a b, A * (b - a) + B < a → Subsingleton (e.group r a b))
    (incoming_cutoff : s < (cutoff + 2 : Nat))
    (outgoing_cutoff : A * (t - s - 1) + B < s + (cutoff + 2 : Nat)) :
    TailVanishing system cutoff where
  incoming n hn := subsingleton_of_injective (meaning.incoming n) (meaning.incoming_injective n)
    (incoming_vanishes e s t n negative (by omega))
  outgoing n hn := subsingleton_of_injective (meaning.outgoing n) (meaning.outgoing_injective n)
    (outgoing_vanishes_above_line e s t A B n line (by omega))

theorem fact762_incoming_bound (r : Nat) (h : 0 ≤ (14 : Int) - r) : r ≤ 14 := by omega
theorem fact763_incoming_bound (r : Nat) (h : 0 ≤ (10 : Int) - r) : r ≤ 10 := by omega
theorem fact721_first_incoming_bound (r : Nat) (h : 0 ≤ (11 : Int) - r) : r ≤ 11 := by omega
theorem fact721_second_incoming_bound (r : Nat) (h : 0 ≤ (12 : Int) - r) : r ≤ 12 := by omega

/-- There is no analogous upper bound from outgoing nonnegative filtration. -/
theorem outgoing_nonnegative (s r : Nat) : 0 ≤ (s : Int) + r := by omega

#print axioms tail_from_adams_vanishing
end PermanentCycleCertificates
