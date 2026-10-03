import KIP126.Interface.Challenge.Challenge2
import KIP126.Def.References.Literature.Claims

/-! Explicit, source-bearing inputs for the two E∞ formulas. These wrappers
require the formula data; source locators alone never construct comparisons.
The special fiber (q=1) and λ/ρ compatibility are separate obligations and
are not attributed wholesale to Corollary A.11. -/

namespace KIP126.Synthetic

open KIP126.External KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology
open KIP126.Synthetic.Context KIP126.Synthetic.SpectralSequence

universe u v w
variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  {Syn : Type w} [SyntheticCategory.{w, v} Syn]
  [HasFunctorialCofiber (C := Syn)]
  {H : Mod2EilenbergMacLane (C := C)} {N : NuFunctorData C Syn}
  {F : SyntheticAdamsFamily Syn}

def cataloguedNuEInftyFormula (comparison : Challenge2.NuEInftyFormula H N F) :
    CataloguedExternalResult (Nonempty (Challenge2.NuEInftyFormula H N F)) :=
  { root := .syntheticEinfNu
    value :=
      { proof := ⟨comparison⟩
        ref := (externalClaimLedger.lookup .syntheticEinfNu).ref }
    ref_eq := rfl
    class_supported := by trivial }

def cataloguedFiniteEInftyFormula (comparison : Challenge2.FiniteEInftyFormula H N F) :
    CataloguedExternalResult (Nonempty (Challenge2.FiniteEInftyFormula H N F)) :=
  { root := .syntheticEinfQuotient
    value :=
      { proof := ⟨comparison⟩
        ref := (externalClaimLedger.lookup .syntheticEinfQuotient).ref }
    ref_eq := rfl
    class_supported := by trivial }

end KIP126.Synthetic
