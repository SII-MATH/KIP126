import OutgoingCycleCertificates.Basic
import Mathlib.Logic.Equiv.Defs

namespace OutgoingCycleFiltrationCertificates
open PermanentCycleCertificates OutgoingCycleCertificates

/-- Z n represents the paper's Z_(n+1) inside a fixed initial E2 group.
The setoid is the boundary-coset relation on this full cycle subset. -/
structure Filtration (E2 : Type) where
  Z : Nat → E2 → Prop
  initial : ∀ x, Z 0 x
  decreasing : ∀ n x, Z (n+1) x → Z n x
  zero : E2
  zero_mem : ∀ n, Z n zero
  boundary : (n : Nat) → Setoid {x : E2 // Z n x}
  initial_boundary : ∀ x y : {x : E2 // Z 0 x},
    (boundary 0).r x y ↔ x.val = y.val

def Filtration.ZInfinity (f : Filtration E2) (x : E2) : Prop := ∀ n, f.Z n x

def Filtration.Boundary (f : Filtration E2) (n : Nat) (x : E2) : Prop :=
  ∃ h : f.Z n x, (f.boundary n).r ⟨x,h⟩ ⟨f.zero,f.zero_mem n⟩

/-- Every actual page is identified with the entire cycle/boundary quotient.
Only the next local zero criterion and quotient-transition square are assumed;
the global ZInfinity/AlwaysCycle equivalence is proved below. -/
structure Realization (f : Filtration E2) (s : System) where
  quotient : ∀ n, Quotient (f.boundary n) ≃ s.Page n
  quotient_zero : ∀ n,
    quotient n (Quotient.mk _ ⟨f.zero,f.zero_mem n⟩) = s.zero n
  outgoing_zero_iff : ∀ n x (h : f.Z n x),
    s.outgoing n (quotient n (Quotient.mk _ ⟨x,h⟩)) = s.zeroOutgoing n ↔ f.Z (n+1) x
  advance_compatible : ∀ n x (h : f.Z (n+1) x),
    s.advance n (quotient n (Quotient.mk _ ⟨x,f.decreasing n x h⟩)) =
      quotient (n+1) (Quotient.mk _ ⟨x,h⟩)

def Realization.image {f : Filtration E2} {s : System} (r : Realization f s)
    (n : Nat) (x : E2) (h : f.Z n x) : s.Page n :=
  r.quotient n (Quotient.mk _ ⟨x,h⟩)

def Realization.initial {f : Filtration E2} {s : System} (r : Realization f s)
    (x : E2) : s.Page 0 := r.image 0 x (f.initial x)

theorem Realization.image_surjective {f : Filtration E2} {s : System}
    (r : Realization f s) (n : Nat) :
    ∀ y : s.Page n, ∃ x, ∃ h : f.Z n x, r.image n x h = y := by
  intro y
  obtain ⟨q,hq⟩ := (r.quotient n).surjective y
  induction q using Quotient.inductionOn with
  | h x => exact ⟨x.val,x.property,hq⟩

theorem Realization.image_eq_iff {f : Filtration E2} {s : System}
    (r : Realization f s) (n : Nat) (x y : E2) (hx : f.Z n x) (hy : f.Z n y) :
    r.image n x hx = r.image n y hy ↔ (f.boundary n).r ⟨x,hx⟩ ⟨y,hy⟩ := by
  constructor
  · intro h
    exact Quotient.exact ((r.quotient n).injective h)
  · intro h
    exact congrArg (r.quotient n) (Quotient.sound h)

theorem Realization.image_zero_iff_boundary {f : Filtration E2} {s : System}
    (r : Realization f s) (n : Nat) (x : E2) (hx : f.Z n x) :
    r.image n x hx = s.zero n ↔ f.Boundary n x := by
  rw [← r.quotient_zero n]
  change r.image n x hx = r.image n f.zero (f.zero_mem n) ↔ _
  rw [r.image_eq_iff]
  constructor
  · intro h; exact ⟨hx,h⟩
  · rintro ⟨h,hr⟩; exact hr

theorem Realization.initial_injective {f : Filtration E2} {s : System}
    (r : Realization f s) : Function.Injective r.initial := by
  intro x y h
  exact (f.initial_boundary _ _).mp ((r.image_eq_iff 0 x y (f.initial x) (f.initial y)).mp h)

/-- A cycle's quotient image equals its recursively advanced initial image.
Membership supplies all earlier cycles by decreasingness. -/
theorem Realization.image_eq_at {f : Filtration E2} {s : System}
    (r : Realization f s) (x : E2) (n : Nat) (hx : f.Z n x) :
    r.image n x hx = s.at (r.initial x) n := by
  induction n with
  | zero => rfl
  | succ n ih =>
    change r.image (n+1) x hx = s.advance n (s.at (r.initial x) n)
    rw [← ih (f.decreasing n x hx)]
    exact (r.advance_compatible n x hx).symm

theorem Realization.intersection_iff_alwaysCycle {f : Filtration E2} {s : System}
    (r : Realization f s) (x : E2) :
    f.ZInfinity x ↔ AlwaysCycle s (r.initial x) := by
  constructor
  · intro hx n
    have h := (r.outgoing_zero_iff n x (hx n)).mpr (hx (n+1))
    change s.outgoing n (r.image n x (hx n)) = s.zeroOutgoing n at h
    rw [r.image_eq_at] at h
    exact h
  · intro hx n
    induction n with
    | zero => exact f.initial x
    | succ n ih =>
      apply (r.outgoing_zero_iff n x ih).mp
      change s.outgoing n (r.image n x ih) = s.zeroOutgoing n
      rw [r.image_eq_at]
      exact hx n

#print axioms Realization.image_zero_iff_boundary
#print axioms Realization.image_eq_at
#print axioms Realization.intersection_iff_alwaysCycle
end OutgoingCycleFiltrationCertificates
