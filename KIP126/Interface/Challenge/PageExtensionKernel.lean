import KIP126.Challenge2

namespace KIP126.Interface.Challenge

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
  (P : NormalizedPageFamily H N F f)
  (R : KIP126.Challenge2.SyntheticEInftyPresentation H N F) (S : EInftyWeightShift F)
  (T : ∀ X : C, FiniteLambdaQuotientTower (N.functor.obj X))
  (K : KIP126.Challenge2.SyntheticEInftyMapCompatibility H N F R S T)
  (J : PageExtensionTargetComparison P R S T)

include K J

theorem finiteLambdaTarget_eq_zero_iff (q k : ℕ) (hkq : k < q) (s t : ℤ)
    (z : cycles H Y (q - k : ℕ) (s, t)) :
    ((F.functor.map (P.targetTower.lambdaInclusion k q hkq)).eInftyMap
      (s, t, t - k)).hom (P.finiteTarget q k hkq s t z) = 0 ↔
        z.val ∈ boundaries H Y (1 + k) (s, t) := by
  sorry

theorem infiniteLambdaTarget_eq_zero_iff (k : ℕ) (s t : ℤ)
    (z : permanentCycles H Y (s, t)) :
    ((F.functor.map (lambdaPow k (N.functor.obj Y))).eInftyMap
      (s, t, t - k)).hom (P.infiniteTarget k s t z) = 0 ↔
        z.val ∈ boundaries H Y (1 + k) (s, t) := by
  sorry

theorem finitePageExtensionBoundaryKernel {r : ℕ} {n s t : ℤ}
    {x : Ambient H X (s, t)} {y : Ambient H Y (s + n, t + n)}
    (W : FiniteExtensionWitness P r n s t x y) : W.ClassicalBoundaryKernel := by
  sorry

theorem infinitePageExtensionBoundaryKernel {n s t : ℤ}
    {x : Ambient H X (s, t)} {y : Ambient H Y (s + n, t + n)}
    (W : InfiniteExtensionWitness P n s t x y) : W.ClassicalBoundaryKernel := by
  sorry

end KIP126.Interface.Challenge
