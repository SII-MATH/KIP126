import KIP126.Challenge2

/-! A compatible tower from finite nonempty actual solution fibers.
Finiteness is required for the strict representative fibers themselves.
No initial solution is prescribed, and no untruncated recovery is asserted. -/

namespace KIP126.Interface.Challenge

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

/-- Finite nonempty permanent-label solution fibers admit some coherent
choice under the actual adjacent restrictions. -/
theorem nonempty_coherentPageExtensionSolutions_of_finite
    (P : NormalizedPageFamily H N F f)
    (I : PageExtensionRestrictionFiltration P) (J : PageExtensionRestrictionLabels P I)
    (n s t : ℤ) (hn : (normalizedExponent H f : ℤ) ≤ n)
    (x : permanentCycles H X (s, t)) (y : permanentCycles H Y (s + n, t + n))
    (hfinite : ∀ (q : ℕ) (hkq : P.lambdaExponent n < q),
      Finite (P.PermanentFiniteSolutions q n s t hn hkq x y))
    (hne : ∀ (q : ℕ) (hkq : P.lambdaExponent n < q),
      Nonempty (P.PermanentFiniteSolutions q n s t hn hkq x y)) :
    Nonempty (CoherentPageExtensionSolutions P I J n s t hn x y) := by
  sorry

/-- Finiteness of the actual source homotopy groups suffices for finiteness
of strict solution fibers; the target groups need not be finite. -/
theorem nonempty_coherentPageExtensionSolutions_of_finite_source
    (P : NormalizedPageFamily H N F f)
    (I : PageExtensionRestrictionFiltration P) (J : PageExtensionRestrictionLabels P I)
    (n s t : ℤ) (hn : (normalizedExponent H f : ℤ) ≤ n)
    (x : permanentCycles H X (s, t)) (y : permanentCycles H Y (s + n, t + n))
    (hfinite : ∀ (q : ℕ), P.lambdaExponent n < q →
      Finite (syntheticHomotopy (XModLambdaN (normalizedSource H N f) q) (P.degree s t)))
    (hne : ∀ (q : ℕ) (hkq : P.lambdaExponent n < q),
      Nonempty (P.PermanentFiniteSolutions q n s t hn hkq x y)) :
    Nonempty (CoherentPageExtensionSolutions P I J n s t hn x y) := by sorry

/-- The actual λ quotient has finite homotopy when the relevant finite
segment of the classical E₂ diagonal is finite and the specified first-quotient
comparison is supplied. This does not prove that comparison or finite type. -/
theorem finite_normalizedSourceHomotopy_of_firstQuotientComparison
    (P : NormalizedPageFamily H N F f) (Q : FirstQuotientHomotopyComparison H N X)
    (q : ℕ) (hq : 0 < q) (s t : ℤ)
    (hfinite : ∀ j : ℕ, j < q → Finite (Ambient H X (s + j, t + j))) :
    Finite (syntheticHomotopy (XModLambdaN (normalizedSource H N f) q) (P.degree s t)) := by sorry

/-- A first-quotient comparison, finite classical E₂ diagonal, and nonempty
actual solution fibers suffice for some coherent tower. No recovery of an
untruncated solution is asserted. -/
theorem nonempty_coherentPageExtensionSolutions_of_finite_e2
    (P : NormalizedPageFamily H N F f)
    (I : PageExtensionRestrictionFiltration P) (J : PageExtensionRestrictionLabels P I)
    (Q : FirstQuotientHomotopyComparison H N X)
    (n s t : ℤ) (hn : (normalizedExponent H f : ℤ) ≤ n)
    (x : permanentCycles H X (s, t)) (y : permanentCycles H Y (s + n, t + n))
    (hfinite : ∀ j : ℕ, Finite (Ambient H X (s + j, t + j)))
    (hne : ∀ (q : ℕ) (hkq : P.lambdaExponent n < q),
      Nonempty (P.PermanentFiniteSolutions q n s t hn hkq x y)) :
    Nonempty (CoherentPageExtensionSolutions P I J n s t hn x y) := by sorry

end KIP126.Interface.Challenge
