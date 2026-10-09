import GeneralizedLeibnizAudit.RepresentativeSquare

namespace FilteredRepresentativeCrossing
open GeneralizedLeibnizAudit

structure Filtration (A : Type*) [AddCommGroup A] where
  group : Nat → AddSubgroup A
  decreasing : Antitone group

/-- A nonzero leading class at this filtration, including every representative. -/
def ExactAt {A : Type*} [AddCommGroup A] (F : Filtration A) (p : Nat) (x : A) : Prop :=
  x ∈ F.group p ∧ x ∉ F.group (p+1)

/-- Absence of leading images of any higher-source correction in [low, high).
This is a statement about actual filtered groups, not a finite row inventory. -/
def NoCrossing {A B : Type*} [AddCommGroup A] [AddCommGroup B]
    (f : A →+ B) (H : AddSubgroup A) (G : Filtration B) (low high : Nat) : Prop :=
  ∀ x ∈ H, ∀ p, low ≤ p → p < high → ¬ ExactAt G p (f x)

theorem noCrossing_of_higher {A B : Type*} [AddCommGroup A] [AddCommGroup B]
    (f : A →+ B) (H : AddSubgroup A) (G : Filtration B) (low high : Nat)
    (higher : HigherMapsInto f H (G.group high)) : NoCrossing f H G low high := by
  intro x hx p hp hph exactAt
  exact exactAt.2 (G.decreasing (by omega : p+1 ≤ high) (higher x hx))

/-- If corrections already land at the lower bound, every missing leading
image forces them one step deeper. No eventual convergence is used. -/
theorem higher_of_noCrossing {A B : Type*} [AddCommGroup A] [AddCommGroup B]
    (f : A →+ B) (H : AddSubgroup A) (G : Filtration B) (low high : Nat)
    (order : low ≤ high) (lower : HigherMapsInto f H (G.group low))
    (none : NoCrossing f H G low high) : HigherMapsInto f H (G.group high) := by
  intro x hx
  have step : ∀ p, low ≤ p → p ≤ high → f x ∈ G.group p := by
    intro p hp bound
    induction p,hp using Nat.le_induction with
    | base => exact lower x hx
    | succ p hp ih =>
      by_contra missing
      exact none x hx p hp (by omega) ⟨ih (by omega),missing⟩
  exact step high order (by omega)

theorem noCrossing_iff_higher {A B : Type*} [AddCommGroup A] [AddCommGroup B]
    (f : A →+ B) (H : AddSubgroup A) (G : Filtration B) (low high : Nat)
    (order : low ≤ high) (lower : HigherMapsInto f H (G.group low)) :
    NoCrossing f H G low high ↔ HigherMapsInto f H (G.group high) :=
  ⟨higher_of_noCrossing f H G low high order lower,
    noCrossing_of_higher f H G low high⟩

theorem noCrossing_iff_all_representatives
    {A B : Type*} [AddCommGroup A] [AddCommGroup B]
    (f : A →+ B) (H : AddSubgroup A) (G : Filtration B) (low high : Nat)
    (order : low ≤ high) (lower : HigherMapsInto f H (G.group low))
    (x : A) (y : B) (extension : Extension f H (G.group high) x y) :
    NoCrossing f H G low high ↔
      ∀ a, SameLeading H a x → SameLeading (G.group high) (f a) y :=
  (noCrossing_iff_higher f H G low high order lower).trans
    (representative_stability_iff f H (G.group high) x y extension)

/-- A representative-square transfer with absence-of-crossing hypotheses
instead of assuming all-representative stability directly. -/
theorem square_transfer {A B C D : Type*}
    [AddCommGroup A] [AddCommGroup B] [AddCommGroup C] [AddCommGroup D]
    (f : A →+ B) (p : A →+ C) (q : B →+ D) (g : C →+ D)
    (commutes : ∀ a, q (f a) = g (p a))
    (HA : AddSubgroup A) (FB : Filtration B) (FC : Filtration C) (FD : Filtration D)
    (b0 b1 c0 c1 d0 d1 : Nat)
    (bOrder : b0 ≤ b1) (cOrder : c0 ≤ c1) (dOrder : d0 ≤ d1)
    (fLower : HigherMapsInto f HA (FB.group b0))
    (pLower : HigherMapsInto p HA (FC.group c0))
    (gLower : HigherMapsInto g (FC.group c1) (FD.group d0))
    (x : A) (y : B) (z : C) (w : D)
    (first : Extension f HA (FB.group b1) x y)
    (second : Extension p HA (FC.group c1) x z)
    (third : Extension g (FC.group c1) (FD.group d1) z w)
    (firstNone : NoCrossing f HA FB b0 b1 ∨ NoCrossing p HA FC c0 c1)
    (lastNone : NoCrossing g (FC.group c1) FD d0 d1) :
    Extension q (FB.group b1) (FD.group d1) y w := by
  apply GeneralizedLeibnizAudit.square_transfer f p q g commutes HA
    (FB.group b1) (FC.group c1) (FD.group d1) x y z w first second third
  · exact firstNone.elim
      (fun h => Or.inl (higher_of_noCrossing f HA FB b0 b1 bOrder fLower h))
      (fun h => Or.inr (higher_of_noCrossing p HA FC c0 c1 cOrder pLower h))
  · exact higher_of_noCrossing g (FC.group c1) FD d0 d1 dOrder gLower lastNone

#print axioms noCrossing_of_higher
#print axioms higher_of_noCrossing
#print axioms noCrossing_iff_all_representatives
#print axioms square_transfer
end FilteredRepresentativeCrossing
