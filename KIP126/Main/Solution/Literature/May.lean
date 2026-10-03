import KIP126.Main.Axiom.Literature.May

namespace KIP126.Stable
open KIP126.External KIP126.Literature.Route KIP126.Synthetic.Context
universe u v
variable {Syn : Type u} [SyntheticCategory.{u, v} Syn]

/-- Locate the caller's signed May source evidence. This constructor proves
neither source applicability nor an unsigned homotopy boundary identity. -/
def cataloguedMaySmashBoundary (B : MayContext Syn) (proof : MaySourceResults Syn B) :
    CataloguedExternalResult (MaySourceResults Syn B) :=
  { root := .maySmashBoundary
    value :=
      { proof := proof
        ref := (externalClaimLedger.lookup .maySmashBoundary).ref }
    ref_eq := rfl
    class_supported := by trivial }

/-- Extract exactly the already supplied signed source theorem. -/
theorem MayLiteratureInput.interface {B : MayContext Syn}
    (input : MayLiteratureInput B) : MaySourceResults Syn B :=
  input.smash_boundary.value.proof

end KIP126.Stable
