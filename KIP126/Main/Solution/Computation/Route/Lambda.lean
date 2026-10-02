import KIP126.Main.Solution.Computation.Route.Consequences

/-! The exact lambda conditions consumed by Remark 7.4/7.5. These are
internal conclusions, never extra C/A/Model fields. In degree (125,130)
only ONE-STEP injectivity is required; all-power torsion freeness there
would discard a still-unresolved h6-square differential branch. -/
namespace KIP126.Computation.Route
open KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology KIP126.Classical.Adams
open KIP126.Core.SpectralSequence KIP126.Synthetic.Context KIP126.Kervaire.Route
universe u v w
variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  {Syn : Type w} [SyntheticCategory.{w, v} Syn] [HasFunctorialCofiber (C := Syn)]
  {H : Mod2EilenbergMacLane (C := C)} {M : MilnorCooperations H}

/-- Every actual page differential at this source vanishes, including the
possibility that the whole source page is zero. No continuation is asserted. -/
def NoOutgoingAt (D : Model H M Syn) (s t : ℤ) : Prop :=
  ∀ r : ℤ, 2 ≤ r → ∀ x : (sequence D .sphere).Page r (s,t),
    (sequence D .sphere).d r (s,t) x = 0

/-- Injectivity of multiplication by one lambda on the ACTUAL homotopy group. -/
def LambdaInjectiveAt (Syn : Type w) [SyntheticCategory.{w, v} Syn]
    (m wgt : ℤ) : Prop :=
  Function.Injective (fun a : BiHom m wgt (S00 : Syn) => lambdaMultiply 1 a)

/-- All finite powers are injective from this starting weight. This is
strictly stronger than `LambdaInjectiveAt` at that weight alone. -/
def LambdaPowersInjectiveAt (Syn : Type w) [SyntheticCategory.{w, v} Syn]
    (m wgt : ℤ) : Prop :=
  ∀ k : ℕ, Function.Injective (fun a : BiHom m wgt (S00 : Syn) => lambdaMultiply k a)
end KIP126.Computation.Route
