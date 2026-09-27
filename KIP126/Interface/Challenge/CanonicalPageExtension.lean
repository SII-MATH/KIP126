import KIP126.Interface.Solution.PageExtensionKernel
import KIP126.Def.ClassicalAdams.PageRepresentatives.Quotient.Top.Equivalence.Proofs
import KIP126.Def.Synthetic.PageExtension.Ambiguity.Proofs

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
  (R : SyntheticEInftyPresentation H N F) (S : EInftyWeightShift F)
  (T : ∀ X : C, FiniteLambdaQuotientTower (N.functor.obj X))

/-- The constructed target comparisons satisfy the representative diagrams
by construction; this does not assume the diagrams as an extra hypothesis. -/
theorem canonicalPageExtensionTargets_comparison (hT : P.targetTower = T Y) :
    PageExtensionTargetComparison (canonicalPageExtensionTargets P R S) R S T := by sorry

variable (K : SyntheticEInftyMapCompatibility H N F R S T) (hT : P.targetTower = T Y)

include K hT

/-- For the constructed target comparisons the boundary-kernel theorem
needs only the E∞ map laws and the shared target tower. -/
theorem canonicalFinitePageExtensionBoundaryKernel {r : ℕ} {n s t : ℤ}
    {x : Ambient H X (s, t)} {y : Ambient H Y (s + n, t + n)}
    (W : FiniteExtensionWitness (canonicalPageExtensionTargets P R S) r n s t x y) :
    W.ClassicalBoundaryKernel := by sorry

theorem canonicalInfinitePageExtensionBoundaryKernel {n s t : ℤ}
    {x : Ambient H X (s, t)} {y : Ambient H Y (s + n, t + n)}
    (W : InfiniteExtensionWitness (canonicalPageExtensionTargets P R S) n s t x y) :
    W.ClassicalBoundaryKernel := by sorry

/-- Only the shorter-image comparison remains as an explicit ambiguity
input; the ordinary boundary contribution has been derived above. -/
theorem canonicalFinitePageExtensionTargetCoset {r : ℕ} {n s t : ℤ}
    {x : Ambient H X (s, t)} {y : Ambient H Y (s + n, t + n)}
    (W : FiniteExtensionWitness (canonicalPageExtensionTargets P R S) r n s t x y)
    (hS : W.ShorterImagesCompatible) :
    W.targetCoset = {z | W.targetCycle - z ∈ W.ordinaryBoundaries ⊔ W.shorterImages} := by sorry

theorem canonicalInfinitePageExtensionTargetCoset {n s t : ℤ}
    {x : Ambient H X (s, t)} {y : Ambient H Y (s + n, t + n)}
    (W : InfiniteExtensionWitness (canonicalPageExtensionTargets P R S) n s t x y)
    (hS : W.ShorterImagesCompatible) :
    W.targetCoset = {z | W.targetCycle - z ∈ W.ordinaryBoundaries ⊔ W.shorterImages} := by sorry

end KIP126.Interface.Challenge
