import KIP126.Def.Comparison.Interfaces

/-! am12：几何输入只给出相应维数的存在性。Browder 给出的存在指数必须
先由二次幂的单射性识别为原指数，才能得到同一标准类的非零永久存活。 -/

namespace KIP126.Interface.Solution

open KIP126.Classical.Adams KIP126.Core.SpectralSequence

theorem lowDimensionalSquarePermanence {Manifold : Type}
    (dimension : Manifold → ℕ) (kervaireOne : Manifold → Prop)
    (geometry : KIP126.Foundation.GeometryInterface dimension kervaireOne)
    (browder : KIP126.Comparison.BrowderInterface dimension kervaireOne) :
    KIP126.Comparison.LowDimensionalSquarePermanence := by
  have pow_ge_two (a : ℕ) : 2 ≤ 2 ^ (a + 1) := by
    rw [pow_succ]
    have hpositive : 0 < (2 : ℕ) ^ a := pow_pos (by decide) a
    omega
  have survives (j : ℕ) (hj : 1 ≤ j) (hj5 : j ≤ 5) :
      NonzeroSurvival sphereAdamsData (2, ((2 ^ (j + 1) : ℕ) : ℤ))
        (KIP126.Comparison.standardHiSquare j) := by
    obtain ⟨k, _hk, hdegree, hsurvives⟩ :=
      (browder (2 ^ (j + 1) - 2)).mp (geometry.low_dimensions j hj hj5)
    have hpowers : (2 : ℕ) ^ (j + 1) = 2 ^ (k + 1) := by
      have := pow_ge_two j
      have := pow_ge_two k
      omega
    have hexponents : j + 1 = k + 1 :=
      Nat.pow_right_injective (by decide : 2 ≤ (2 : ℕ)) hpowers
    have hindex : k = j := by omega
    subst k
    exact hsurvives
  exact ⟨survives 4 (by decide) (by decide), survives 5 (by decide) (by decide)⟩

end KIP126.Interface.Solution
