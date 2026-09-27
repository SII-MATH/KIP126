import KIP126.Challenge2

/-! am6/am7：同一实际 ESS 的代表元解、page extension 与有限商限制。
限制命题显式保留收敛滤过和经典标签的比较条件，不声称限制满射。 -/

namespace KIP126.Interface.Challenge

set_option maxHeartbeats 2000000
set_option backward.isDefEq.respectTransparency false

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

theorem finitePageExtension_iff_solutions (P : NormalizedPageFamily H N F f)
    (r : ℕ) (hr : 2 ≤ r) (n s t : ℤ)
    (hn : (normalizedExponent H f : ℤ) ≤ n) (hk : P.lambdaExponent n < r - 1)
    (x : cycles H X (r - 1 : ℕ) (s, t))
    (y : cycles H Y (r - 1 - P.lambdaExponent n : ℕ) (s + n, t + n)) :
    FinitePageExtension P r n s t x.val y.val ↔
      Nonempty (P.FiniteSolutions (r - 1) (by omega) n s t hn hk x y) := by
  sorry

theorem infinitePageExtension_iff_solutions (P : NormalizedPageFamily H N F f)
    (n s t : ℤ) (hn : (normalizedExponent H f : ℤ) ≤ n)
    (x : permanentCycles H X (s, t))
    (y : permanentCycles H Y (s + n, t + n)) :
    InfinitePageExtension P n s t x.val y.val ↔
      Nonempty (P.InfiniteSolutions n s t hn x y) := by
  sorry

theorem finitePageExtension_restrict (P : NormalizedPageFamily H N F f)
    (I : PageExtensionRestrictionFiltration P) (J : PageExtensionRestrictionLabels P I)
    (i j : ℕ) (hi : 0 < i) (hj : 0 < j) (hij : i ≤ j) (n s t : ℤ)
    (hn : (normalizedExponent H f : ℤ) ≤ n)
    (hki : P.lambdaExponent n < i) (hkj : P.lambdaExponent n < j)
    (xi : cycles H X i (s, t)) (xj : cycles H X j (s, t)) (hx : xi.val = xj.val)
    (yi : cycles H Y (i - P.lambdaExponent n : ℕ) (s + n, t + n))
    (yj : cycles H Y (j - P.lambdaExponent n : ℕ) (s + n, t + n)) (hy : yi.val = yj.val)
    (h : FinitePageExtension P (j + 1) n s t xj.val yj.val) :
    FinitePageExtension P (i + 1) n s t xi.val yi.val := by
  sorry

end KIP126.Interface.Challenge
