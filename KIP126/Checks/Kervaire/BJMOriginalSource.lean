import KIP126.Def.References.Literature.BJMOriginal
import Lean.Elab.Command

open KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology
open KIP126.Synthetic.Context KIP126.Comparison.ClassicalSynthetic
open KIP126.Kervaire KIP126.Kervaire.SyntheticTheta5 KIP126.Classical.Adams
universe u v w
variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  {Syn : Type w} [SyntheticCategory.{w, v} Syn]
  [HasFunctorialCofiber (C := Syn)]
  (H : Mod2EilenbergMacLane (C := C)) (M : MilnorCooperations H)
  (N : NuFunctorData C Syn) (cofib : FunctorialCofiberCoherence Syn)
  (comparison : FirstQuotientHomotopyComparison H N SphereSpectrum)
  (η : Eta Syn) (θ : Theta Syn)
  (h : BJMOriginalCriterion H M (sphereFirstQuotientComparison H N cofib comparison) η θ)

-- The cited row is the original BX claim, and the proof concerns exactly the
-- comparison obtained from the same nu and cofiber data supplied to the wrapper.
example : (cataloguedBJMOriginalCriterion H M N cofib comparison η θ h).root =
    KIP126.External.ExternalRootId.bjmBxCriterion := rfl

example : BJMOriginalCriterion H M
    (sphereFirstQuotientComparison H N cofib comparison) η θ :=
  (cataloguedBJMOriginalCriterion H M N cofib comparison η θ h).value.proof

open Lean Elab Command in
run_cmd do
  for a in ← liftCoreM (collectAxioms ``KIP126.Kervaire.cataloguedBJMOriginalCriterion) do
    unless [``propext, ``Classical.choice, ``Quot.sound].contains a do
      throwError "source wrapper must not manufacture an external fact: {a}"
