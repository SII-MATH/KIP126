import Mathlib.Algebra.Homology.SpectralSequence.Basic

namespace KIP126.Core.SpectralSequence

structure PageLevelConvention where
  firstPage : ℕ
  admissibleFrom : ℤ
  page : ℕ → ℤ
  cycleLevel : ℕ → ℤ
  quotientExponent : ℕ → ℤ
  page_first : page firstPage = admissibleFrom
  page_succ : ∀ r, page (r + 1) = page r + 1
  cycle_succ : ∀ r, cycleLevel (r + 1) = cycleLevel r + 1
  quotient_succ : ∀ r, quotientExponent (r + 1) = quotientExponent r + 1
  cycleLevel_eq_quotientExponent : ∀ r,
    cycleLevel r = quotientExponent r

namespace PageLevelConvention

theorem page_ge (P : PageLevelConvention) {r : ℕ}
    (h : P.firstPage ≤ r) : P.admissibleFrom ≤ P.page r := by
  induction r, h using Nat.le_induction with
  | base => simp [P.page_first]
  | succ r _ ih => rw [P.page_succ]; omega

theorem cycleLevel_ge (P : PageLevelConvention) {r : ℕ}
    (h : P.firstPage ≤ r) :
    P.cycleLevel P.firstPage ≤ P.cycleLevel r := by
  induction r, h using Nat.le_induction with
  | base => rfl
  | succ r _ ih => rw [P.cycle_succ]; omega

theorem quotientExponent_ge (P : PageLevelConvention) {r : ℕ}
    (h : P.firstPage ≤ r) :
    P.quotientExponent P.firstPage ≤ P.quotientExponent r := by
  induction r, h using Nat.le_induction with
  | base => rfl
  | succ r _ ih => rw [P.quotient_succ]; omega

end PageLevelConvention

end KIP126.Core.SpectralSequence
