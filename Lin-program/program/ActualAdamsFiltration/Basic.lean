import OutgoingCycleFiltrationCertificates.Strong

namespace ActualAdamsFiltration
open PermanentCycleCertificates OutgoingCycleFiltrationCertificates

/-- A complete next page has a representative among the current cycles. -/
def CycleSurjective (s : System) : Prop :=
  ∀ n y, ∃ x, s.outgoing n x = s.zeroOutgoing n ∧ s.advance n x = y

def Cycles (s : System) (n : Nat) (x : s.Page 0) : Prop :=
  ∀ k, k < n → s.outgoing k (s.at x k) = s.zeroOutgoing k

theorem cycles_succ (s : System) (n : Nat) (x : s.Page 0) :
    Cycles s (n+1) x ↔ Cycles s n x ∧ s.outgoing n (s.at x n) = s.zeroOutgoing n := by
  constructor
  · intro h
    exact ⟨fun k hk => h k (by omega), h n (by omega)⟩
  · rintro ⟨h,hn⟩ k hk
    by_cases he : k = n
    · subst k; exact hn
    · exact h k (by omega)

theorem at_zero (s : System) (laws : DifferentialLaws s) (n : Nat) :
    s.at (s.zero 0) n = s.zero n := by
  induction n with
  | zero => rfl
  | succ n ih =>
    change s.advance n (s.at (s.zero 0) n) = s.zero (n+1)
    rw [ih, laws.advance_zero]

def filtration (s : System) (laws : DifferentialLaws s) : Filtration (s.Page 0) where
  Z := Cycles s
  initial := by intro x k hk; omega
  decreasing := by intro n x h k hk; exact h k (by omega)
  zero := s.zero 0
  zero_mem := by intro n k hk; rw [at_zero s laws]; exact laws.zero_outgoing k
  boundary := fun n => {
    r := fun x y => s.at x.val n = s.at y.val n
    iseqv := ⟨fun _ => rfl, fun h => h.symm, fun h k => h.trans k⟩ }
  initial_boundary := by intro x y; rfl

theorem representative (s : System) (complete : CycleSurjective s) (n : Nat) :
    ∀ y : s.Page n, ∃ x, ∃ _ : Cycles s n x, s.at x n = y := by
  induction n with
  | zero => intro y; exact ⟨y,by intro k hk; omega,rfl⟩
  | succ n ih =>
    intro y
    obtain ⟨z,hz,hy⟩ := complete n y
    obtain ⟨x,hx,hxx⟩ := ih z
    refine ⟨x,(cycles_succ s n x).mpr ⟨hx,?_⟩,?_⟩
    · rw [hxx]; exact hz
    · change s.advance n (s.at x n) = y
      rw [hxx]; exact hy

def quotientMap (s : System) (laws : DifferentialLaws s) (n : Nat) :
    Quotient ((filtration s laws).boundary n) → s.Page n :=
  Quotient.lift (fun x => s.at x.val n) (fun _ _ h => h)

theorem quotientMap_injective (s : System) (laws : DifferentialLaws s) (n : Nat) :
    Function.Injective (quotientMap s laws n) := by
  intro a b
  induction a using Quotient.inductionOn with
  | h x =>
    induction b using Quotient.inductionOn with
    | h y => intro h; exact Quotient.sound h

theorem quotientMap_surjective (s : System) (laws : DifferentialLaws s)
    (complete : CycleSurjective s) (n : Nat) :
    Function.Surjective (quotientMap s laws n) := by
  intro y
  obtain ⟨x,hx,h⟩ := representative s complete n y
  exact ⟨Quotient.mk _ ⟨x,hx⟩,h⟩

noncomputable def realization (s : System) (laws : DifferentialLaws s)
    (complete : CycleSurjective s) : Realization (filtration s laws) s where
  quotient := fun n => Equiv.ofBijective (quotientMap s laws n)
    ⟨quotientMap_injective s laws n,quotientMap_surjective s laws complete n⟩
  quotient_zero := at_zero s laws
  outgoing_zero_iff := by
    intro n x hx
    change s.outgoing n (s.at x n) = s.zeroOutgoing n ↔ Cycles s (n+1) x
    exact ⟨fun h => (cycles_succ s n x).mpr ⟨hx,h⟩,
      fun h => ((cycles_succ s n x).mp h).2⟩
  advance_compatible := by intro n x hx; rfl

theorem realization_initial (s : System) (laws : DifferentialLaws s)
    (complete : CycleSurjective s) (x : s.Page 0) :
    (realization s laws complete).initial x = x := rfl

theorem boundary_iff_zero (s : System) (laws : DifferentialLaws s)
    (n : Nat) (x : s.Page 0) :
    (filtration s laws).Boundary n x ↔ Cycles s n x ∧ s.at x n = s.zero n := by
  constructor
  · rintro ⟨hx,h⟩
    exact ⟨hx,h.trans (at_zero s laws n)⟩
  · rintro ⟨hx,h⟩
    exact ⟨hx,h.trans (at_zero s laws n).symm⟩

theorem permanent_iff (s : System) (laws : DifferentialLaws s)
    (complete : CycleSurjective s) (x : s.Page 0) :
    s.Permanent x ↔ (filtration s laws).ZInfinity x ∧
      ¬ (filtration s laws).BInfinity x :=
  (realization s laws complete).permanent_iff_ZInfinity_not_BInfinity laws x

#print axioms representative
#print axioms realization
#print axioms boundary_iff_zero
#print axioms permanent_iff
end ActualAdamsFiltration
