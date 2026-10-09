import ActualAdamsUniqueBridge.Basic

namespace ActualAdamsUniqueBridge
open ManualInputObligations.Reference ActualAdamsSystemBridge

theorem quotient_zero_iff (S : AdamsSpectralSequence) (r : Nat) (d : Bidegree)
    (x : PageCycle S r d) :
    (Quotient.mk _ x : PageHomology S r d) = Quotient.mk _ (zeroCycle S r d) ↔
      PageBoundary S r d x.val := by
  constructor
  · intro h
    have rel := Quotient.exact h
    change x.val = 0 ∨ PageBoundary S r d (x.val+0) at rel
    rcases rel with h | h
    · exact Or.inl h
    · simpa using h
  · intro h
    apply Quotient.sound
    exact Or.inr (by simpa [zeroCycle] using h)

theorem quotient_dichotomy (S : AdamsSpectralSequence) (r : Nat) (d : Bidegree)
    (x : (S.element r d).carrier) (unique : IsUnique S r d x)
    (y : PageHomology S r d) :
    y = Quotient.mk _ (zeroCycle S r d) ∨ y = Quotient.mk _ ⟨x,unique.1⟩ := by
  induction y using Quotient.inductionOn with
  | h y =>
    rcases unique.2.2 y.val y.property with h | h
    · exact Or.inl ((quotient_zero_iff S r d y).mpr h)
    · exact Or.inr (Quotient.sound (Or.inr h))

noncomputable def quotientEquivBool (S : AdamsSpectralSequence) (r : Nat) (d : Bidegree)
    (x : (S.element r d).carrier) (unique : IsUnique S r d x) :
    Bool ≃ PageHomology S r d := by
  let f : Bool → PageHomology S r d := fun b =>
    if b then Quotient.mk _ ⟨x,unique.1⟩ else Quotient.mk _ (zeroCycle S r d)
  have ne : (Quotient.mk _ (⟨x,unique.1⟩ : PageCycle S r d) : PageHomology S r d) ≠
      Quotient.mk _ (zeroCycle S r d) := fun h =>
    unique.2.1 ((quotient_zero_iff S r d _).mp h)
  apply Equiv.ofBijective f
  constructor
  · intro a b h
    cases a <;> cases b
    · rfl
    · exact False.elim (ne h.symm)
    · exact False.elim (ne h)
    · rfl
  · intro y
    rcases quotient_dichotomy S r d x unique y with h | h
    · exact ⟨false,h.symm⟩
    · exact ⟨true,h.symm⟩

theorem homology_cardinality (S : AdamsSpectralSequence) (r : Nat) (d : Bidegree)
    (x : (S.element r d).carrier) (unique : IsUnique S r d x) :
    Nat.card (PageHomology S r d) = 2 := by
  rw [Nat.card_congr (quotientEquivBool S r d x unique).symm]
  simp [Nat.card_eq_fintype_card]

theorem actual_next_cardinality (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (r : Nat) (d : Bidegree) (x : (S.element r d).carrier)
    (unique : IsUnique S r d x) : Nat.card (S.element (r+1) d).carrier = 2 := by
  let e : PageHomology S r d ≃ (S.element (r+1) d).carrier :=
    ⟨(pages.nextPage r d).toNext,(pages.nextPage r d).fromNext,
      (pages.nextPage r d).leftInverse,(pages.nextPage r d).rightInverse⟩
  exact (Nat.card_congr e.symm).trans (homology_cardinality S r d x unique)

#print axioms quotient_zero_iff
#print axioms quotient_dichotomy
#print axioms quotientEquivBool
#print axioms homology_cardinality
#print axioms actual_next_cardinality
end ActualAdamsUniqueBridge
