import MilnorCertificates.HomogeneousCoordinates

namespace MilnorCertificates

/-- Degree additivity for arbitrary homogeneous dual functions, without
requiring a polynomial-list representation. -/
theorem homogeneousDual_mul (rank d e : Nat) (f g : RankDual rank)
    (hf : HomogeneousDual rank d f) (hg : HomogeneousDual rank e g) :
    HomogeneousDual rank (d+e) (f*g) := by
  intro m hm
  rw [rankDual_mul_apply]
  unfold dualMul
  apply List.sum_eq_zero
  intro z hz
  obtain ⟨a,ha,rfl⟩ := List.mem_map.mp hz
  have h := coproduct_homogeneous rank m.val m.property a ha
  rw [extendRank_apply rank f a.1 h.1,extendRank_apply rank g a.2 h.2.1]
  by_cases hleft : weight a.1 = d
  · have hright : weight a.2 ≠ e := by omega
    rw [hg ⟨a.2,h.2.1⟩ hright,mul_zero]
  · rw [hf ⟨a.1,h.1⟩ hleft,zero_mul]

/-- A degree bound forces finite monomial support by exhaustive basis
completeness. This selects the finite graded part of the full dual ring. -/
def DegreeBounded (rank bound : Nat) (f : RankDual rank) : Prop :=
  ∀ m : RankMonomial rank, bound < weight m.val → f m = 0

def FiniteGradedSupport (rank : Nat) (f : RankDual rank) : Prop :=
  ∃ bound, DegreeBounded rank bound f

theorem degreeBounded_mul (rank d e : Nat) (f g : RankDual rank)
    (hf : DegreeBounded rank d f) (hg : DegreeBounded rank e g) :
    DegreeBounded rank (d+e) (f*g) := by
  intro m hm
  rw [rankDual_mul_apply]
  unfold dualMul
  apply List.sum_eq_zero
  intro z hz
  obtain ⟨a,ha,rfl⟩ := List.mem_map.mp hz
  have h := coproduct_homogeneous rank m.val m.property a ha
  rw [extendRank_apply rank f a.1 h.1,extendRank_apply rank g a.2 h.2.1]
  by_cases hleft : d < weight a.1
  · rw [hf ⟨a.1,h.1⟩ hleft,zero_mul]
  · have hright : e < weight a.2 := by omega
    rw [hg ⟨a.2,h.2.1⟩ hright,mul_zero]

theorem degreeBounded_add (rank d e : Nat) (f g : RankDual rank)
    (hf : DegreeBounded rank d f) (hg : DegreeBounded rank e g) :
    DegreeBounded rank (max d e) (f+g) := by
  intro m hm
  rw [rankDual_add_apply,hf m (by omega),hg m (by omega),add_zero]

theorem degreeBounded_neg (rank d : Nat) (f : RankDual rank) (hf : DegreeBounded rank d f) :
    DegreeBounded rank d (-f) := by
  intro m hm
  change -(f m) = 0
  rw [hf m hm,neg_zero]

theorem degreeBounded_one (rank : Nat) : DegreeBounded rank 0 (1 : RankDual rank) := by
  intro m hm
  change counit rank m.val = 0
  have hne : m.val ≠ unitMonomial rank := by
    intro h
    rw [h,unitMonomial_weight] at hm
    omega
  simp [counit,boolScalar,hne]

def finiteGradedSubring (rank : Nat) : Subring (RankDual rank) where
  carrier := {f | FiniteGradedSupport rank f}
  zero_mem' := ⟨0,fun m _ => rankDual_zero_apply rank m⟩
  one_mem' := ⟨0,degreeBounded_one rank⟩
  add_mem' := by
    rintro f g ⟨d,hd⟩ ⟨e,he⟩
    exact ⟨max d e,degreeBounded_add rank d e f g hd he⟩
  neg_mem' := by
    rintro f ⟨d,hd⟩
    exact ⟨d,degreeBounded_neg rank d f hd⟩
  mul_mem' := by
    rintro f g ⟨d,hd⟩ ⟨e,he⟩
    exact ⟨d+e,degreeBounded_mul rank d e f g hd he⟩

abbrev FiniteGradedDual (rank : Nat) := finiteGradedSubring rank

theorem degreeBounded_support_finite (rank bound : Nat) (f : RankDual rank)
    (hf : DegreeBounded rank bound f) : {m : RankMonomial rank | f m ≠ 0}.Finite := by
  have hfin : {m : RankMonomial rank | m.val ∈ (basis rank bound).toFinset}.Finite := by
    exact ((basis rank bound).toFinset.finite_toSet.preimage (f := fun m : RankMonomial rank => m.val) Subtype.val_injective.injOn)
  apply hfin.subset
  intro m hm
  change m.val ∈ (basis rank bound).toFinset
  apply List.mem_toFinset.mpr
  apply basis_complete rank bound m.val m.property
  by_contra h
  exact hm (hf m (by omega))

theorem homogeneous_finiteGraded (rank degree : Nat) (f : RankDual rank)
    (hf : HomogeneousDual rank degree f) : f ∈ finiteGradedSubring rank := by
  exact ⟨degree,fun m hm => hf m (by omega)⟩

/-- Degree projection uses the already proved finite homogeneous coordinates. -/
def homogeneousPart (rank degree : Nat) (f : RankDual rank) : RankDual rank :=
  reconstructHomogeneous rank degree (extractHomogeneous rank degree f)

theorem homogeneousPart_apply (rank degree : Nat) (f : RankDual rank) (m : RankMonomial rank) :
    homogeneousPart rank degree f m = if weight m.val = degree then f m else 0 := by
  by_cases h : weight m.val = degree <;> simp [homogeneousPart,reconstructHomogeneous,extractHomogeneous,h]

theorem homogeneousPart_isHomogeneous (rank degree : Nat) (f : RankDual rank) :
    HomogeneousDual rank degree (homogeneousPart rank degree f) := reconstruct_homogeneous _ _ _

theorem rankDual_finset_sum_apply {α : Type*} (s : Finset α) (f : α → RankDual rank)
    (m : RankMonomial rank) : (∑ a ∈ s, f a) m = ∑ a ∈ s, f a m := by
  classical
  induction s using Finset.induction_on with
  | empty => rfl
  | @insert a s ha ih => simp only [Finset.sum_insert ha,rankDual_add_apply,ih]

/-- Every bounded-support dual function is the finite sum of its homogeneous
parts, with equality of the entire function, not just enumerated coefficients. -/
theorem finite_homogeneous_decomposition (rank bound : Nat) (f : RankDual rank)
    (hf : DegreeBounded rank bound f) :
    f = ∑ d ∈ Finset.range (bound+1), homogeneousPart rank d f := by
  classical
  funext m
  rw [rankDual_finset_sum_apply]
  simp only [homogeneousPart_apply]
  by_cases h : weight m.val ≤ bound
  · simp [Finset.sum_ite_eq,show weight m.val < bound+1 by omega]
  · rw [hf m (by omega)]
    apply Eq.symm
    apply Finset.sum_eq_zero
    intro d hd
    have hn : weight m.val ≠ d := by have := Finset.mem_range.mp hd; omega
    simp [hn]

theorem polynomialRankFunctional_bounded (rank : Nat) (p : Polynomial) :
    FiniteGradedSupport rank (polynomialRankFunctional rank p) := by
  refine ⟨(p.map weight).sum,?_⟩
  intro m hm
  have hn : m.val ∉ p := by
    intro hmem
    have hle : weight m.val ≤ (p.map weight).sum := List.single_le_sum (fun n hn => Nat.zero_le n) (weight m.val) (List.mem_map.mpr ⟨m.val,hmem,rfl⟩)
    omega
  have hc : coefficient p m.val = false := by
    cases he : coefficient p m.val
    · rfl
    · exact False.elim (hn (coefficient_true_mem p m.val he))
  change boolScalar (coefficient p m.val) = 0
  rw [hc]
  rfl

#print axioms finiteGradedSubring
#print axioms finite_homogeneous_decomposition
#print axioms polynomialRankFunctional_bounded
end MilnorCertificates
