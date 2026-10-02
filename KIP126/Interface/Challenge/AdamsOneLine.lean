import KIP126.Challenge2
import KIP126.Def.ClassicalAdams.SphereClasses.Products.Data
import KIP126.Def.SpectralSequence.Computation.Predicates
import KIP126.Interface.Axiom.StandardMilnor
import KIP126.Interface.Axiom.StandardSphere.Sequence.Data

/-!
am12 on the actual internal Adams tower and its specified Milnor classes.
Sources: MainPaper/main.tex:140–147 (Adams one-line and Hopf differentials),
MainPaper/main.tex:157–159 (May's three products and squares with j ≤ 3).
The sentence at line 146 prints `j ≥ 3` for Hopf survival; that direction
contradicts the nonzero d₂ for j ≥ 4 on the following line. The corrected
range here is j ≤ 3, including h₀. May's primary text is not present in the
source catalogue, so its exact scope is recorded from the cited MainPaper
passage, not claimed to have been checked against an unavailable original.
These are proof obligations, not consequences of the old h₄-only wrapper.
-/

namespace KIP126.Interface.Challenge

open KIP126.Classical.Adams KIP126.Core.SpectralSequence

/-- Adams's E₂ one-line at powers of two: the specified hⱼ is nonzero and
is the unique nonzero element in its bidegree. -/
theorem adamsOneLine_at_power (j : ℕ) :
    Sphere.Internal.hi standardFoundation.hf2 standardMilnorCooperations j ≠ 0 ∧
      ∀ x : sphereAdamsData.Page 2 (1, ((2 ^ j : ℕ) : ℤ)),
        x = 0 ∨ x = Sphere.Internal.hi standardFoundation.hf2 standardMilnorCooperations j := by
  sorry

/-- Adams's E₂ one-line vanishes at every other internal degree, including
negative degrees. -/
theorem adamsOneLine_other_degree (t : ℤ)
    (ht : ∀ j : ℕ, t ≠ ((2 ^ j : ℕ) : ℤ)) :
    ∀ x : sphereAdamsData.Page 2 (1, t), x = 0 := by
  sorry

/-- Hopf invariant one survival, with the corrected natural-number range. -/
theorem adamsHi_nonzeroSurvival_iff (j : ℕ) :
    NonzeroSurvival sphereAdamsData (1, ((2 ^ j : ℕ) : ℤ))
      (Sphere.Internal.hi standardFoundation.hf2 standardMilnorCooperations j) ↔ j ≤ 3 := by
  sorry

/-- For every j ≥ 4, the actual internal d₂ on hⱼ equals the specified
nonzero cobar product h₀ hⱼ₋₁². The target degree is retained explicitly. -/
theorem adamsOneLine_d2 (j : ℕ) (hj : 4 ≤ j) :
    HasNonzeroDifferential sphereAdamsData 2
      (1, ((2 ^ j : ℕ) : ℤ)) (3, ((1 + 2 ^ (j - 1 + 1) : ℕ) : ℤ))
      (Sphere.Internal.hi standardFoundation.hf2 standardMilnorCooperations j)
      (Sphere.Internal.h0HiSquare standardFoundation.hf2 standardMilnorCooperations (j - 1)) := by
  sorry

/-- May's three low-dimensional products survive nontrivially to E∞.
This does not assert survival of the other products listed only on E₃. -/
theorem may_lowDimensionalProducts_permanent :
    NonzeroSurvival sphereAdamsData (2, ((2 ^ 0 + 2 ^ 2 : ℕ) : ℤ))
      (Sphere.Internal.hiProduct standardFoundation.hf2 standardMilnorCooperations 0 2) ∧
    NonzeroSurvival sphereAdamsData (2, ((2 ^ 0 + 2 ^ 3 : ℕ) : ℤ))
      (Sphere.Internal.hiProduct standardFoundation.hf2 standardMilnorCooperations 0 3) ∧
    NonzeroSurvival sphereAdamsData (2, ((2 ^ 2 + 2 ^ 4 : ℕ) : ℤ))
      (Sphere.Internal.hiProduct standardFoundation.hf2 standardMilnorCooperations 2 4) := by
  sorry

/-- May's low-index squares are nonzero permanent classes, for precisely
the range attributed to May in the paper: j = 0, 1, 2, 3. -/
theorem may_lowDimensionalSquares_permanent (j : ℕ) (hj : j ≤ 3) :
    NonzeroSurvival sphereAdamsData (2, ((2 ^ (j + 1) : ℕ) : ℤ))
      (Sphere.Internal.hiSquare standardFoundation.hf2 standardMilnorCooperations j) := by
  sorry

/-- The same six explicit obligations, bundled for the shared stage witness. -/
theorem adamsOneLine : KIP126.Challenge2.AdamsOneLineInterface := by
  sorry

end KIP126.Interface.Challenge
