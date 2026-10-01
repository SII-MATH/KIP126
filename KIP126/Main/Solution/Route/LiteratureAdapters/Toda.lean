import KIP126.Def.Kervaire.Inputs.Literature.Data
import KIP126.Main.Solution.Route.LiteratureAdapters.May

/-! Internal source adaptation. Toda 1962, Theorem 3.6, and IWX v3
`thm:Toda-symmetric`/`cor:2-symmetric` motivate the argument, but the latter
is explicitly C-motivic and contains tau*eta. Neither is accepted as an
unconditional synthetic lambda^2*eta statement. The proofs below must
construct the symmetric Toda argument with this model's tensor/triangle
conventions and identify the low class using BHS. They may not use any
Section 7 high-stem conclusion or the final theorem. -/
namespace KIP126.Main.Solution.Route.LiteratureAdapters
open CategoryTheory KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology
open KIP126.Classical.Adams KIP126.Synthetic.Context KIP126.Kervaire.Route
open KIP126.Literature.Route
universe u v w
variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  {Syn : Type w} [SyntheticCategory.{w, v} Syn] [HasFunctorialCofiber (C := Syn)]
  {H : Mod2EilenbergMacLane (C := C)} {M : MilnorCooperations H}
  (D : Model H M Syn) (η : BiHom 1 2 (S00 : Syn)) (G : TmfLabels H)

/-- Low-dimensional source transport: the actual bracket uses suspension
(1,0), giving eta^2 in degree (2,4). Its proof includes the low Massey
calculation/convergence; BHS ring relations alone are not claimed to be
this theorem. No high-stem input occurs. -/
theorem synthetic_eta_squared (A : Inputs D η G) :
    TripleToda A.toda.h0 η A.toda.h0
      (sphereProduct (m := 1) (n := 2) (k := 1) (l := 2) η η) := by
  sorry

/-- The sole high-degree symmetric Toda specialization required by LWX.
This is internal proof debt, not an accepted literature field. It retains
membership and the condition 2*theta=0, with no zero-indeterminacy claim.
The operation used by the classical symmetric-bracket argument has degree
(1,0), so its identification is lambda^2*eta, not eta. -/
theorem synthetic_symmetric_two (A : Inputs D η G)
    (θ : BiHom 62 64 (S00 : Syn)) (hθ : θ + θ = 0) :
    TripleToda syntheticTwo θ syntheticTwo (lambdaMultiply 2 (sphereProduct η θ)) := by
  sorry
end KIP126.Main.Solution.Route.LiteratureAdapters
