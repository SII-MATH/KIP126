import Fact762IncomingCertificates.Data

namespace Fact762IncomingCertificates

/-- At one fixed bidegree, every next-page class comes from a current cycle.
This mathematical transition premise is not inferred from a staircase list. -/
structure PageTower where
  Carrier : Nat → Type
  zero : (q : Nat) → Carrier q
  isCycle : (q : Nat) → Carrier q → Prop
  zeroCycle : ∀ q, isCycle q (zero q)
  next : (q : Nat) → {x : Carrier q // isCycle q x} → Carrier (q+1)
  nextZero : ∀ q, next q ⟨zero q,zeroCycle q⟩ = zero (q+1)
  nextSurjective : ∀ q, Function.Surjective (next q)

def PageTower.ZeroAt (p : PageTower) (q : Nat) : Prop :=
  ∀ x : p.Carrier q, x = p.zero q

theorem PageTower.zero_next (p : PageTower) (q : Nat) (hz : p.ZeroAt q) :
    p.ZeroAt (q+1) := by
  intro y
  obtain ⟨x,rfl⟩ := p.nextSurjective q y
  have hx : x = ⟨p.zero q,p.zeroCycle q⟩ := Subtype.ext (hz x.val)
  rw [hx,p.nextZero]

theorem PageTower.zero_later (p : PageTower) {q r : Nat}
    (hq : p.ZeroAt q) (le : q ≤ r) : p.ZeroAt r := by
  induction r, le using Nat.le_induction with
  | base => exact hq
  | succ r _ ih => exact p.zero_next r ih

/-- A faithful full coordinate map transports a proved zero finite quotient.
No existence or injectivity of this coordinate map is inferred from data. -/
theorem zero_from_coordinates {X Y : Type} (f : X → Y)
    (faithful : Function.Injective f) (zx : X) (zy : Y)
    (preserves : f zx = zy) (allZero : ∀ y, y = zy) : ∀ x, x = zx := by
  intro x
  apply faithful
  exact (allZero (f x)).trans preserves.symm

theorem no_preimage_from_zero {X Y : Type} (zx : X) (zy : Y)
    (allZero : ∀ x, x = zx) (d : X → Y) (zeroPreserving : d zx = zy)
    (target : Y) (nonzero : target ≠ zy) : ¬ ∃ x, d x = target := by
  rintro ⟨x,hx⟩
  rw [allZero x,zeroPreserving] at hx
  exact nonzero hx.symm

#print axioms PageTower.zero_later
#print axioms no_preimage_from_zero
end Fact762IncomingCertificates
