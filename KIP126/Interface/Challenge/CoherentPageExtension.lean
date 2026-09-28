import KIP126.Challenge2

/-! Compatible finite solution towers from an initial solution and actual
surjective restrictions. This makes no untruncated ESS recovery claim. -/

namespace KIP126.Interface.Challenge

open KIP126.Core.SpectralSequence
open CategoryTheory KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology
open KIP126.Synthetic.Context KIP126.Synthetic.SpectralSequence
open KIP126.Synthetic.PageExtension KIP126.Classical.Adams.PageRepresentatives KIP126.Challenge2

universe u v w
variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  {Syn : Type w} [SyntheticCategory.{w, v} Syn]
  [HasFunctorialCofiber (C := Syn)]
  {H : Mod2EilenbergMacLane (C := C)} {N : NuFunctorData C Syn}
  {F : SyntheticAdamsFamily Syn} {X Y : C} {f : X ⟶ Y}

/-- For the actual permanent-label restriction, lifting every strict
solution is equivalent to lifting every homogeneous displacement, provided
one later solution is specified. The two label diagrams are retained. -/
theorem restrictPermanentFiniteSolution_surjective_iff_differences_surjective
    (P : NormalizedPageFamily H N F f)
    (I : PageExtensionRestrictionFiltration P) (J : PageExtensionRestrictionLabels P I)
    (i j : ℕ) (hij : i ≤ j) (n s t : ℤ)
    (hn : (normalizedExponent H f : ℤ) ≤ n)
    (hki : P.lambdaExponent n < i) (hkj : P.lambdaExponent n < j)
    (x : permanentCycles H X (s, t)) (y : permanentCycles H Y (s + n, t + n))
    (a : P.PermanentFiniteSolutions j n s t hn hkj x y) :
    Function.Surjective (restrictPermanentFiniteSolution I J i j hij n s t hn hki hkj x y) ↔
      Function.Surjective (FilteredComplex.Solutions.restrictDifferences
        (I.complexMap i j (lt_of_le_of_lt (Nat.zero_le _) hki)
          (lt_of_le_of_lt (Nat.zero_le _) hkj) hij (P.degree s t))
        (ModuleCat.of ℤ (ULift.{v} ℤ)) n s 1) := by
  sorry

/-- The coherent tower can be chosen to extend the given solution at the
first admissible quotient length `q = lambdaExponent n + 1`. -/
theorem exists_coherentPageExtensionSolutions_of_surjective
    (P : NormalizedPageFamily H N F f)
    (I : PageExtensionRestrictionFiltration P) (J : PageExtensionRestrictionLabels P I)
    (n s t : ℤ) (hn : (normalizedExponent H f : ℤ) ≤ n)
    (x : permanentCycles H X (s, t)) (y : permanentCycles H Y (s + n, t + n))
    (a₀ : P.PermanentFiniteSolutions (P.lambdaExponent n + 1) n s t hn
      (Nat.lt_succ_self _) x y)
    (hsurj : ∀ (q : ℕ) (hkq : P.lambdaExponent n < q),
      Function.Surjective (restrictPermanentFiniteSolution I J q (q + 1) (Nat.le_succ q)
        n s t hn hkq (lt_trans hkq (Nat.lt_succ_self q)) x y)) :
    ∃ a : CoherentPageExtensionSolutions P I J n s t hn x y,
      a.solution (P.lambdaExponent n + 1) (Nat.lt_succ_self _) = a₀ := by
  sorry

theorem nonempty_coherentPageExtensionSolutions_of_surjective
    (P : NormalizedPageFamily H N F f)
    (I : PageExtensionRestrictionFiltration P) (J : PageExtensionRestrictionLabels P I)
    (n s t : ℤ) (hn : (normalizedExponent H f : ℤ) ≤ n)
    (x : permanentCycles H X (s, t)) (y : permanentCycles H Y (s + n, t + n))
    (a₀ : P.PermanentFiniteSolutions (P.lambdaExponent n + 1) n s t hn
      (Nat.lt_succ_self _) x y)
    (hsurj : ∀ (q : ℕ) (hkq : P.lambdaExponent n < q),
      Function.Surjective (restrictPermanentFiniteSolution I J q (q + 1) (Nat.le_succ q)
        n s t hn hkq (lt_trans hkq (Nat.lt_succ_self q)) x y)) :
    Nonempty (CoherentPageExtensionSolutions P I J n s t hn x y) := by
  sorry

/-- Nonempty finite fibers and surjective actual homogeneous restrictions
produce a coherent tower extending the specified initial solution. -/
theorem exists_coherentPageExtensionSolutions_of_differences_surjective
    (P : NormalizedPageFamily H N F f)
    (I : PageExtensionRestrictionFiltration P) (J : PageExtensionRestrictionLabels P I)
    (n s t : ℤ) (hn : (normalizedExponent H f : ℤ) ≤ n)
    (x : permanentCycles H X (s, t)) (y : permanentCycles H Y (s + n, t + n))
    (a₀ : P.PermanentFiniteSolutions (P.lambdaExponent n + 1) n s t hn
      (Nat.lt_succ_self _) x y)
    (hne : ∀ (q : ℕ) (hkq : P.lambdaExponent n < q),
      Nonempty (P.PermanentFiniteSolutions q n s t hn hkq x y))
    (hsurj : ∀ (q : ℕ) (hkq : P.lambdaExponent n < q),
      Function.Surjective (FilteredComplex.Solutions.restrictDifferences
        (I.complexMap q (q + 1) (lt_of_le_of_lt (Nat.zero_le _) hkq)
          (lt_of_le_of_lt (Nat.zero_le _) (lt_trans hkq (Nat.lt_succ_self q)))
          (Nat.le_succ q) (P.degree s t))
        (ModuleCat.of ℤ (ULift.{v} ℤ)) n s 1)) :
    ∃ a : CoherentPageExtensionSolutions P I J n s t hn x y,
      a.solution (P.lambdaExponent n + 1) (Nat.lt_succ_self _) = a₀ := by
  sorry

end KIP126.Interface.Challenge
