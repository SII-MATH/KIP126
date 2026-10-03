import KIP126.Main.Axiom.Literature.May

namespace KIP126.Stable
open KIP126.External KIP126.Literature.Route KIP126.Synthetic.Context
universe u v
variable {Syn : Type u} [SyntheticCategory.{u, v} Syn]

/-- Extract exactly the already supplied signed source theorem. -/
theorem Challenge.MayLiteratureInput.interface {B : MayContext Syn}
    (input : MayLiteratureInput B) : MaySourceResults Syn B := by
  sorry

end KIP126.Stable
