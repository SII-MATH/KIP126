import KIP126.Def.Kervaire.Route.Model.Coherent.Data
import KIP126.Def.Kervaire.Inputs.Literature.TmfSource
import KIP126.Def.ClassicalAdams.Completion.Predicates
import KIP126.Def.ClassicalAdams.Convergence.Tower.Predicates
import KIP126.Def.ClassicalAdams.StandardSphere.Route.Data

/-! The actual BHS A.1 / tau-surj scope is stated separately from A.8's
page formula. A chosen E-infinity/associated-graded isomorphism alone is
not nilpotent completeness or complete Hausdorff convergence.
No local differential, permanent element or finite filtration bound occurs
in these model-adaptation obligations. -/
namespace KIP126.Literature.Route
open CategoryTheory CategoryTheory.Limits
open KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology
open KIP126.Classical.Adams KIP126.Synthetic.Context KIP126.Kervaire.Route
universe u v w
variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  {Syn : Type w} [SyntheticCategory.{w, v} Syn] [HasFunctorialCofiber (C := Syn)]
  {H : Mod2EilenbergMacLane (C := C)} {M : MilnorCooperations H}

def SelectedClassicalScope (D : Model H M Syn) : Prop :=
  ∀ X : ClassicalObject,
    BoundedBelow (X.obj D.auxiliary) ∧ FiniteMod2Type H (X.obj D.auxiliary)

/-- Products here are actual categorical products; the residual tower's
homotopy limit is the already defined fiber-of-1-shift construction, not
the ordinary inverse limit of objects in the homotopy category. -/
structure BHSAdamsApplicability (D : Model H M Syn) where
  products : HasProductsOfShape ℕ C
  nilpotentComplete : letI := products
    ∀ X : ClassicalObject, IsENilpotentComplete H.unit (X.obj D.auxiliary)
  strongConvergence : ∀ X : ClassicalObject,
    IsAdamsTowerStronglyConvergent H.unit (X.obj D.auxiliary)

/-- Source scope transports through the explicit detector iso. Sphere,
Cnu and all finite integer shifts remain bounded below of finite mod-2
type. This does not infer tmf scope from its two local homotopy results. -/
theorem selected_scope_of_standard_tmf
    {Syn : Type w} [SyntheticCategory.{w, 0} Syn] [HasFunctorialCofiber (C := Syn)]
    (D : StandardRouteModel Syn) (G : TmfLabels standardFoundation.hf2)
    (S : TmfSourceData standardFoundation.hf2) (hS : TmfSourceResults S)
    (B : TmfBinding D G S) : SelectedClassicalScope D := by sorry

/-- This standard foundation is the actual HF2-local source. On its
selected bounded-below finite-type objects, the ordinary Adams resolution
is nilpotently complete and strongly convergent. BHS's assumptions are
therefore explicit model-adaptation targets. This theorem is independent
of the Lin records and of every new LWX rule.

Source: Bousfield, localization with respect to homology, Th.6.6, as cited
in BHS dfn:E-complete; classical finite-type Adams convergence (Ravenel
Section 2.1, Th.2.1.1 and Lemma2.1.12). Construction/transport is a proof
obligation here; the statement is not a new Main/Axiom for arbitrary D. -/
theorem bhs_applicability_of_standard_scope
    {Syn : Type w} [SyntheticCategory.{w, 0} Syn] [HasFunctorialCofiber (C := Syn)]
    (D : StandardRouteModel Syn) (h : SelectedClassicalScope D) :
    Nonempty (BHSAdamsApplicability D) := by sorry

end KIP126.Literature.Route
