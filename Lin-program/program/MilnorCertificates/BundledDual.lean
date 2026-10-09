import MilnorCertificates.Unit

namespace MilnorCertificates

abbrev RankMonomial (rank : Nat) := {m : Monomial // m.length = rank}
def RankDual (rank : Nat) := RankMonomial rank → ZMod 2

instance rankDualAddCommGroup (rank : Nat) : AddCommGroup (RankDual rank) :=
  inferInstanceAs (AddCommGroup (RankMonomial rank → ZMod 2))

@[simp] theorem rankDual_add_apply (rank : Nat) (f g : RankDual rank) (m : RankMonomial rank) :
    (f+g) m = f m + g m := rfl
@[simp] theorem rankDual_zero_apply (rank : Nat) (m : RankMonomial rank) : (0 : RankDual rank) m = 0 := rfl

def extendRank (rank : Nat) (f : RankDual rank) : DualFunction :=
  fun m => if h : m.length = rank then f ⟨m,h⟩ else 0

def rankMul (rank : Nat) (f g : RankDual rank) : RankDual rank :=
  fun m => dualMul rank (extendRank rank f) (extendRank rank g) m.val

def rankOne (rank : Nat) : RankDual rank := fun m => dualUnit rank m.val

theorem extendRank_apply (rank : Nat) (f : RankDual rank) (m : Monomial) (hm : m.length = rank) :
    extendRank rank f m = f ⟨m,hm⟩ := by simp [extendRank,hm]

theorem rankMul_assoc (rank : Nat) (f g h : RankDual rank) :
    rankMul rank (rankMul rank f g) h = rankMul rank f (rankMul rank g h) := by
  funext m
  unfold rankMul
  have hl := dualMul_congr rank (extendRank rank (rankMul rank f g))
    (dualMul rank (extendRank rank f) (extendRank rank g)) (extendRank rank h) (extendRank rank h)
    (fun n hn => by simp [extendRank,hn,rankMul]) (fun _ _ => rfl) m.val m.property
  have hr := dualMul_congr rank (extendRank rank f) (extendRank rank f)
    (extendRank rank (rankMul rank g h)) (dualMul rank (extendRank rank g) (extendRank rank h))
    (fun _ _ => rfl) (fun n hn => by simp [extendRank,hn,rankMul]) m.val m.property
  exact hl.trans ((dualMul_assoc rank _ _ _ m.val m.property).trans hr.symm)

theorem rankOne_mul (rank : Nat) (f : RankDual rank) : rankMul rank (rankOne rank) f = f := by
  funext m
  unfold rankMul
  rw [dualMul_congr rank _ (dualUnit rank) _ _ (fun n hn => by simp [extendRank,hn,rankOne])
    (fun _ _ => rfl) m.val m.property,dualMul_unit_left rank _ m.val m.property,
    extendRank_apply rank f m.val m.property]

theorem rankMul_one (rank : Nat) (f : RankDual rank) : rankMul rank f (rankOne rank) = f := by
  funext m
  unfold rankMul
  rw [dualMul_congr rank _ _ _ (dualUnit rank) (fun _ _ => rfl)
    (fun n hn => by simp [extendRank,hn,rankOne]) m.val m.property,
    dualMul_unit_right rank _ m.val m.property,extendRank_apply rank f m.val m.property]

theorem rankMul_add (rank : Nat) (f g h : RankDual rank) :
    rankMul rank f (g+h) = rankMul rank f g + rankMul rank f h := by
  funext m
  change dualMul rank _ _ m.val = dualMul rank _ _ m.val + dualMul rank _ _ m.val
  unfold dualMul
  rw [← List.sum_map_add]
  apply congrArg List.sum
  apply List.map_congr_left
  intro t ht
  have hlen := coproduct_homogeneous rank m.val m.property t ht
  simp [extendRank,hlen.1,hlen.2.1,mul_add]

theorem rankAdd_mul (rank : Nat) (f g h : RankDual rank) :
    rankMul rank (f+g) h = rankMul rank f h + rankMul rank g h := by
  funext m
  change dualMul rank _ _ m.val = dualMul rank _ _ m.val + dualMul rank _ _ m.val
  unfold dualMul
  rw [← List.sum_map_add]
  apply congrArg List.sum
  apply List.map_congr_left
  intro t ht
  have hlen := coproduct_homogeneous rank m.val m.property t ht
  simp [extendRank,hlen.1,hlen.2.1,add_mul]

instance rankDualRing (rank : Nat) : Ring (RankDual rank) where
  __ := rankDualAddCommGroup rank
  mul := rankMul rank
  one := rankOne rank
  mul_assoc := rankMul_assoc rank
  one_mul := rankOne_mul rank
  mul_one := rankMul_one rank
  left_distrib := rankMul_add rank
  right_distrib := rankAdd_mul rank
  zero_mul f := by
    funext m
    change dualMul rank (extendRank rank 0) (extendRank rank f) m.val = 0
    simp [dualMul,extendRank,rankDualAddCommGroup]
  mul_zero f := by
    funext m
    change dualMul rank (extendRank rank f) (extendRank rank 0) m.val = 0
    simp [dualMul,extendRank,rankDualAddCommGroup]

theorem rankDual_mul_apply (rank : Nat) (f g : RankDual rank) (m : RankMonomial rank) :
    (f*g) m = dualMul rank (extendRank rank f) (extendRank rank g) m.val := rfl

def polynomialRankFunctional (rank : Nat) (p : Polynomial) : RankDual rank :=
  fun m => polynomialFunctional p m.val

/-- A certificate theorem becomes equality in the bundled ring, whose
multiplication is the checked Milnor coproduct convolution. -/
theorem certified_rankDual_mul (rank : Nat) (left right output : Polynomial)
    (h : IsMilnorProductAll rank left right output) :
    polynomialRankFunctional rank left * polynomialRankFunctional rank right =
      polynomialRankFunctional rank output := by
  funext m
  rw [rankDual_mul_apply]
  have he := dualMul_congr rank
    (extendRank rank (polynomialRankFunctional rank left)) (polynomialFunctional left)
    (extendRank rank (polynomialRankFunctional rank right)) (polynomialFunctional right)
    (fun n hn => by simp [extendRank,hn,polynomialRankFunctional])
    (fun n hn => by simp [extendRank,hn,polynomialRankFunctional]) m.val m.property
  exact he.trans (certified_dualMul rank left right output h m.val m.property).symm

theorem unit_rankDual (rank : Nat) : polynomialRankFunctional rank [unitMonomial rank] = 1 := by
  funext m
  change polynomialFunctional [unitMonomial rank] m.val = dualUnit rank m.val
  rw [unitPolynomial_functional]

#print axioms rankDualRing
#print axioms certified_rankDual_mul
end MilnorCertificates
