import KIP126.Challenge2.Route.Literature.Classical

namespace KIP126.Literature.Route
open KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology KIP126.Classical.Adams
open KIP126.Synthetic.Context KIP126.Kervaire KIP126.Kervaire.Route
universe u v w
variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  {Syn : Type w} [SyntheticCategory.{w, v} Syn] [HasFunctorialCofiber (C := Syn)]
  {H : Mod2EilenbergMacLane (C := C)} {M : MilnorCooperations H} (D : Model H M Syn)

/-- BX Proposition 7.19 and its proof, at ONE common source choice.
All three clauses use that same θ₅ and the η fixed in `ClassicalInputs`.
The original finite formula uses ηθ₅² modulo λ^r. The total-boundary formula
and the untruncated iff are explicitly in the proof of BX Proposition 7.19.
The LWX normalization to ληθ₅² modulo λ^(r+1), and extension to arbitrary
choices, remain paper deductions; they are deliberately absent here. -/
def BXDistinguishedInput (η : BiHom 1 2 (S00 : Syn)) : Prop :=
  ∃ θ : BiHom 62 64 (S00 : Syn),
    BJMOriginalCriterion H M D.sphereFirstQuotient η θ ∧
    BJMSourceTotalBoundaryIdentity H M D.sphereFirstQuotient η θ ∧
    BJMUntruncatedCriterion H M η θ
end KIP126.Literature.Route
