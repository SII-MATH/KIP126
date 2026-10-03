import KIP126.Challenge2
import KIP126.Def.References.Literature.Claims

/-!
# Located May source statement

The supplied result is the signed TC3/pushpull source data on the specified
synthetic tensor suspension conventions. It does not assert the historical
unsigned `Stable.MaySmashBoundary`. Producing this input for the chosen
model remains an Interface obligation; no independent axiom is declared.
-/
namespace KIP126.Stable
open KIP126.External KIP126.Literature.Route KIP126.Synthetic.Context
universe u v
variable {Syn : Type u} [SyntheticCategory.{u, v} Syn]

/-- May (2001), TC3 and Lemma 4.6, on the SAME tensor conventions.
The historical field spelling is retained; its statement now keeps the
source sign. Extraction and catalogue construction are outside Axiom. -/
structure MayLiteratureInput (B : MayContext Syn) where
  smash_boundary : CataloguedExternalResult (MaySourceResults Syn B)
  smash_boundary_root : smash_boundary.root = .maySmashBoundary

end KIP126.Stable
