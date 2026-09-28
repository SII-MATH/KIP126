import KIP126.Def.Kervaire.Theta5.Synthetic.Predicates
import KIP126.Main.Axiom.Literature.Claims

/-!
# Original BX finite criterion on the actual objects

The caller supplies a proof and the comparison on the specified model; a source
citation never produces a proof. This module adds no axiom or default instance.
The predicate uses the standard internal h₆² and ηθ₅² modulo λ^r. The paper's
λ shift and arbitrary-choice extension remain Main deductions.
-/
namespace KIP126.Kervaire
open KIP126.External KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology
open KIP126.Synthetic.Context KIP126.Comparison.ClassicalSynthetic
open KIP126.Classical.Adams SyntheticTheta5
universe u v w
variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  {Syn : Type w} [SyntheticCategory.{w, v} Syn]
  [HasFunctorialCofiber (C := Syn)]

/-- Source metadata for an explicitly supplied proof of the original criterion.
A valid use must establish that the comparison, η and distinguished θ₅ are the
ones to which the cited source applies. The wrapper does not certify that step. -/
def cataloguedBJMOriginalCriterion (H : Mod2EilenbergMacLane (C := C))
    (M : MilnorCooperations H) (N : NuFunctorData C Syn)
    (cofib : FunctorialCofiberCoherence Syn)
    (comparison : FirstQuotientHomotopyComparison H N SphereSpectrum)
    (η : Eta Syn) (θ : Theta Syn)
    (proof : BJMOriginalCriterion H M
      (sphereFirstQuotientComparison H N cofib comparison) η θ) :
    CataloguedExternalResult (BJMOriginalCriterion H M
      (sphereFirstQuotientComparison H N cofib comparison) η θ) :=
  { root := .bjmBxCriterion
    value := { proof := proof, ref := (externalClaimLedger.lookup .bjmBxCriterion).ref }
    ref_eq := rfl
    class_supported := by trivial }

end KIP126.Kervaire
