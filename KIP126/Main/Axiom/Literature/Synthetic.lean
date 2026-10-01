import KIP126.Def.Kervaire.Inputs.Literature.Data
import KIP126.Def.Kervaire.Inputs.Literature.SourceMay

/-! Separate literature leaves on one explicitly identified source model.
No axiom below accepts `Inputs`, `ModelBindings`, a source-model existence,
normalized-triangle compatibility, or any new LWX deduction. BHS A.1 and
tau-surj use SM.adams' actual completeness/strong-convergence conditions.
The data-bearing leaves retain existence, and are chosen once by the
internal assembler. May uses constructed source suspension conventions.
-/
namespace KIP126.Main.Axiom.Literature
open CategoryTheory KIP126.StableHomotopy KIP126.Classical.Adams
open KIP126.Synthetic.Context KIP126.Kervaire.Route KIP126.Literature.Route
variable {Syn : Type 1} [SyntheticCategory.{1,0} Syn]
  [HasFunctorialCofiber (C := Syn)] [SymmetricCategory Syn]
  (D : StandardRouteModel Syn) (η : BiHom 1 2 (S00 : Syn))
  (G : TmfLabels standardFoundation.hf2)


/-- Pstragowski Lemma 4.23, on the specified nu and actual triangles. -/
axiom nu_cofiber (SM : SourceModel D η G) : KIP126.Synthetic.NuCofiberCriterion standardFoundation.hf2 D.nu

/-- BHS Lemma 9.15: full lambda divisibility, not a selected triangle. -/
axiom full_lift (SM : SourceModel D η G) : KIP126.Synthetic.SyntheticLiftComparison standardFoundation.hf2 D.nu

/-- BHS A.1(1), with the selected complete/strongly convergent scope. -/
axiom finite_lift (SM : SourceModel D η G) : FiniteLiftCriterion D

/-- BHS A.1(1c): there exists an appropriate lift of the differential. -/
axiom bockstein (SM : SourceModel D η G) : BocksteinDifferential D

/-- BHS A.1(2): permanent-cycle lifting, including zero/boundary labels. -/
axiom permanent_lift (SM : SourceModel D η G) : PermanentLiftCriterion D

/-- BHS A.8, for the actual coefficient tower and canonical E2 map. -/
axiom differentials (SM : SourceModel D η G) : DifferentialRigidity D

/-- BHS A.9/A.11, retaining finite windows, labels and lambda/rho maps. -/
axiom eInfty (SM : SourceModel D η G) : Nonempty (EInftyInput D)

/-- BHS cor:tau-surj, with the same completed strongly convergent scope. -/
axiom filtration_lambda (SM : SourceModel D η G) : FiltrationLambda D

/-- BHS A.8's complementary E2 weight-zero region. -/
axiom e2_weight_vanishing (SM : SourceModel D η G) : E2WeightVanishing D

/-- BHS A.1(2a,b),(3a,b), using the constructed realization coordinates. -/
axiom realization_detection (SM : SourceModel D η G) : RealizationDetection D (sourceRealizationCoordinates D)

/-- BX Proposition 7.19 and its proof at one common theta5. The synthetic
eta is separately identified; the LWX normalization is not included. -/
axiom bx (SM : SourceModel D η G) (hη : EtaChoice standardMilnorCooperations D.toModelData η) :
  BXDistinguishedInput D η

/-- BHS low synthetic ring, prop:syn-toda-range (0),(9). No Toda
membership or high-stem indeterminacy assertion is accepted here. -/
axiom low_ring (SM : SourceModel D η G) (hη : EtaChoice standardMilnorCooperations D.toModelData η) :
  Nonempty (TodaInputs D η)

/-- May TC3 and Lemma4.6 with the actual source tensor/suspension maps
and the original boundary sign. Positive-boundary transport is internal. -/
axiom may_tc3 (SM : SourceModel D η G) (T U : HoCofiberSequence (C := Syn)) :
  Nonempty (MayPushpullData Syn (sourceMayTensor D η G SM) T U)

/-- BHSmot Appendices B/C and BX cnstr:bock-maps: commutative algebra
structures on the positive finite lambda quotients, with the actual unit.
Compatibility with D's preselected rho fillers and its sphere action is
proved internally, as are the cobar and filtered-detection comparisons. -/
axiom quotient_algebras (SM : SourceModel D η G) : Nonempty (QuotientAlgebraStructures D)

end KIP126.Main.Axiom.Literature
