import KIP126.Challenge2
import KIP126.Main.Axiom.Literature.Claims

/-! Source-bearing input for the finite lifting/differential part of BHS
Theorem A.1 (1a)--(1c). The input retains both E-nilpotent completeness and
strong convergence of the same actual Adams tower. It uses the specified
first-quotient comparison and actual quotient/Bockstein maps. Neither the
full spectral-sequence comparison nor the existence of this input is proved
by attaching its source locator. -/

namespace KIP126.Synthetic

open CategoryTheory CategoryTheory.Limits
open KIP126.External KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology
open KIP126.Synthetic.Context

universe u v w

variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)] [HasProductsOfShape ℕ C]
  {Syn : Type w} [SyntheticCategory.{w, v} Syn]
  [HasFunctorialCofiber (C := Syn)]
  {H : Mod2EilenbergMacLane (C := C)} {N : NuFunctorData C Syn}

/-- Record BHS A.1's finite statement for the explicitly supplied comparison
and property witness. The source identifies the claim; it supplies no proof. -/
def cataloguedFiniteLambdaBockstein (coh : BiShiftCoherence Syn)
    (cofib : FunctorialCofiberCoherence Syn) (X : C)
    (Q : Challenge2.FirstQuotientHomotopyComparison H N X)
    (input : Challenge2.FiniteLambdaBocksteinInterface H N coh cofib X Q) :
    CataloguedExternalResult (Challenge2.FiniteLambdaBocksteinInterface H N coh cofib X Q) :=
  { root := .lambdaBockstein
    value :=
      { proof := input
        ref := (externalClaimLedger.lookup .lambdaBockstein).ref }
    ref_eq := rfl
    class_supported := by trivial }

end KIP126.Synthetic
