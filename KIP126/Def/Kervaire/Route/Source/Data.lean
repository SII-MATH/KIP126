import KIP126.Def.Synthetic.Source.Realization
import KIP126.Def.Synthetic.Source.RecoveryMonoidal
import KIP126.Def.Synthetic.Source.RecoveryShift
import KIP126.Def.Synthetic.Source.ShiftExactness
import KIP126.Def.Synthetic.Source.SpherePairing
import KIP126.Def.Comparison.ClassicalSynthetic.RealizationWeights
import KIP126.Def.Comparison.ClassicalSynthetic.RealizationTower.Route
import KIP126.Def.Comparison.ClassicalSynthetic.RealizationTower.FirstQuotient
import KIP126.Def.Kervaire.Inputs.Literature.AdamsApplicability
import KIP126.Def.Kervaire.Inputs.Literature.StandardClassicalSource
import KIP126.Def.Kervaire.Route.Source.QuotientTower

/-! Source identification of ONE common route model. The classical and
tmf witnesses below are objects and bindings, not the assertion that their
literature results hold. Those results are supplied separately to the
source-to-route assembler. There is no Lin result or Section 7 proposition
in this record. Construction of the record is a model-comparison task.

The realization tensor comparison is constrained by the actual spectral
Yoneda pairing and adjunction mate. Normalized-map choice independence
and the compatible nu triangle are internal adapters, not fields here.
-/
namespace KIP126.Kervaire.Route
open CategoryTheory KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology
open KIP126.Classical.Adams KIP126.Synthetic.Context
open KIP126.Comparison.ClassicalSynthetic KIP126.Literature.Route
noncomputable section
variable {Syn : Type 1} [SyntheticCategory.{1,0} Syn]
  [HasFunctorialCofiber (C := Syn)] [SymmetricCategory Syn]
  (D : StandardRouteModel Syn) (η : BiHom 1 2 (S00 : Syn))
  (G : TmfLabels standardFoundation.hf2)

/-- Canonical zero/recursive-lambda recovery for the actual fixed-weight
object. Its two shifts use the SAME existing biShift_comp. -/
def sourceWeightBases : RealizationTower.WeightBases D := fun X a w =>
  (realizationWeights D.nu D.recovery D.shiftCoherence).doubleShift
    D.nu D.recovery (X.obj D.auxiliary) a (-w)

structure SourceModel where
  synthetic : KIP126.Synthetic.Source.Binding
    StableHomotopy.Source.standardRealization D.nu D.recovery
  preferredShift : KIP126.Synthetic.Source.PreferredShiftBinding synthetic
  exactShift : KIP126.Synthetic.Source.SourceShiftExactBinding synthetic D.shiftCommShift
  finiteQuotientBoundaries : FiniteQuotientBoundaryBinding D.toModelData
  classicalSource : ClassicalSourceData standardFoundation.hf2
  classical : ClassicalSourceBinding D η classicalSource
  geometry : StandardClassicalSourceGeometry classicalSource
  tmfSource : TmfSourceData standardFoundation.hf2
  tmf : TmfBinding D G tmfSource
  /-- Actual E-nilpotent completeness and strong convergence on the
  selected sphere/Cnu/tmf/shift closure, not merely an E-infinity iso. -/
  adams : BHSAdamsApplicability D
  realizationMonoidal : D.recovery.realization.Monoidal
  recoveryMonoidal : KIP126.Synthetic.Source.RecoveryMonoidalBinding
    StableHomotopy.Source.standardRealization synthetic realizationMonoidal
  recoveryShift : KIP126.Synthetic.Source.RecoveryShiftBinding
    D.nu D.recovery synthetic realizationMonoidal D.realizationShift
  realizationAdditive : D.recovery.realization.Additive
  coefficient : RealizationCoefficientCompatible D.nu D.recovery
    standardFoundation.hf2 realizationMonoidal
  /-- The label map is fixed by actual realization of representatives
  through the same presentation and the same coefficient/unit map. -/
  e2 : letI := realizationMonoidal; letI := realizationAdditive
    RealizationTower.NuE2Binding D (sourceWeightBases D)
  firstQuotient : letI := realizationMonoidal; letI := realizationAdditive
    RealizationTower.FirstQuotientBinding D (sourceWeightBases D) e2

end
end KIP126.Kervaire.Route
