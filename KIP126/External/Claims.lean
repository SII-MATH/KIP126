import KIP126.External.SourceInventory

/-!
# Claim-level inventory for external inputs

`SourceInventory` records the finite catalogue of papers and machine archives.
This module records the finer-grained claims which may cross the formalisation
boundary.  A claim row names its intended owning Lean declaration and Blueprint
target, classifies the trust boundary, supplies an exact `SourceRef`, and lists
other claim rows used to assemble a composite input.

The owner names are stable declaration names from the formalisation plan in the
Blueprint.  Some owners live in later, currently unimplemented layers; the
ledger makes those obligations enumerable now without postulating their
propositions or proofs.
-/

namespace KIP126.External

/-! ## Claim identifiers and classifications -/

/-- Stable identifiers for the external and evidence-bearing claim families
named by the Blueprint.

The list contains primitive literature results, composite literature packages,
the machine catalogues, and the finite evidence families consumed by the final
argument.  Composite rows have explicit dependencies and are not silently
promoted to new primitive roots. -/
inductive ExternalRootId
  | adamsOneLine
  | mapFiltrationFactorization
  | browderCriterion
  | mahowaldTangoraDifferentials
  | theta5Existence
  | bjmInduction
  | mayLowPageSurvival
  | hhrNonexistence
  | xuTheta5Order
  | iwxTheta5Filtration
  | lowKervaireExistence
  | syntheticFoundation
  | lambdaQuotientRing
  | higherLambdaQuotientAlgebra
  | symmetricMonoidalDeformation
  | lambdaInversion
  | nuCofiberCriterion
  | syntheticRigidity
  | lambdaBockstein
  | syntheticEinfNu
  | syntheticEinfQuotient
  | syntheticLift
  | syntheticTriangleLift
  | syntheticLambdaComplete
  | maySmashBoundary
  | mossConvergence
  | todaProductIdentities
  | bjmBxCriterion
  | theta5OrderData
  | totalDifferentialIdentity
  | tmfDetection
  | br21TmfDifferential
  | linMachineRelease
  | linSpectrumCatalogue
  | linE2PageCatalogue
  | linMapCatalogue
  | linD2Catalogue
  | linPropagatedOutputs
  | appendixTables
  | manualDifferentials
  | normalizedHopfDetection
  | etaEssRegression
  | leibnizNegativeRegression
  | chuaRuleCounterexample
  | mahowaldCofiberRegression
  | synthetic14StemRegression
  | stem38CrossingRegression
  | hopfCrossingExclusion
  | pageCrossingRegression
  | theta5OrderTorsion
  | theta5SquareTmf
  | todaCandidateProducts
  | twoExtensionIndeterminacy
  | hopfLiftObstructions
  | stem122ProductExhaustion
  | cnuIncomingExclusion
  deriving DecidableEq, Repr, Inhabited

namespace ExternalRootId

/-- Canonical key for reports and generated manifests. -/
def code : ExternalRootId → String
  | .adamsOneLine => "adams_one_line"
  | .mapFiltrationFactorization => "map_filtration_factorization"
  | .browderCriterion => "browder_criterion"
  | .mahowaldTangoraDifferentials => "mahowald_tangora_differentials"
  | .theta5Existence => "theta5_existence"
  | .bjmInduction => "bjm_induction"
  | .mayLowPageSurvival => "may_low_page_survival"
  | .hhrNonexistence => "hhr_nonexistence"
  | .xuTheta5Order => "xu_theta5_order"
  | .iwxTheta5Filtration => "iwx_theta5_filtration"
  | .lowKervaireExistence => "low_kervaire_existence"
  | .syntheticFoundation => "synthetic_foundation"
  | .lambdaQuotientRing => "lambda_quotient_ring"
  | .higherLambdaQuotientAlgebra => "higher_lambda_quotient_algebra"
  | .symmetricMonoidalDeformation => "symmetric_monoidal_deformation"
  | .lambdaInversion => "lambda_inversion"
  | .nuCofiberCriterion => "nu_cofiber_criterion"
  | .syntheticRigidity => "synthetic_rigidity"
  | .lambdaBockstein => "lambda_bockstein"
  | .syntheticEinfNu => "synthetic_einf_nu"
  | .syntheticEinfQuotient => "synthetic_einf_quotient"
  | .syntheticLift => "synthetic_lift"
  | .syntheticTriangleLift => "synthetic_triangle_lift"
  | .syntheticLambdaComplete => "synthetic_lambda_complete"
  | .maySmashBoundary => "may_smash_boundary"
  | .mossConvergence => "moss_convergence"
  | .todaProductIdentities => "toda_product_identities"
  | .bjmBxCriterion => "bjm_bx_criterion"
  | .theta5OrderData => "theta5_order_data"
  | .totalDifferentialIdentity => "total_differential_identity"
  | .tmfDetection => "tmf_detection"
  | .br21TmfDifferential => "br21_tmf_differential"
  | .linMachineRelease => "lin_machine_release"
  | .linSpectrumCatalogue => "lin_spectrum_catalogue"
  | .linE2PageCatalogue => "lin_e2_page_catalogue"
  | .linMapCatalogue => "lin_map_catalogue"
  | .linD2Catalogue => "lin_d2_catalogue"
  | .linPropagatedOutputs => "lin_propagated_outputs"
  | .appendixTables => "appendix_tables"
  | .manualDifferentials => "manual_differentials"
  | .normalizedHopfDetection => "normalized_hopf_detection"
  | .etaEssRegression => "eta_ess_regression"
  | .leibnizNegativeRegression => "leibniz_negative_regression"
  | .chuaRuleCounterexample => "chua_rule_counterexample"
  | .mahowaldCofiberRegression => "mahowald_cofiber_regression"
  | .synthetic14StemRegression => "synthetic_14_stem_regression"
  | .stem38CrossingRegression => "stem_38_crossing_regression"
  | .hopfCrossingExclusion => "hopf_crossing_exclusion"
  | .pageCrossingRegression => "page_crossing_regression"
  | .theta5OrderTorsion => "theta5_order_torsion"
  | .theta5SquareTmf => "theta5_square_tmf"
  | .todaCandidateProducts => "toda_candidate_products"
  | .twoExtensionIndeterminacy => "two_extension_indeterminacy"
  | .hopfLiftObstructions => "hopf_lift_obstructions"
  | .stem122ProductExhaustion => "stem_122_product_exhaustion"
  | .cnuIncomingExclusion => "cnu_incoming_exclusion"

def ofCode : String → Option ExternalRootId
  | "adams_one_line" => some .adamsOneLine
  | "map_filtration_factorization" => some .mapFiltrationFactorization
  | "browder_criterion" => some .browderCriterion
  | "mahowald_tangora_differentials" => some .mahowaldTangoraDifferentials
  | "theta5_existence" => some .theta5Existence
  | "bjm_induction" => some .bjmInduction
  | "may_low_page_survival" => some .mayLowPageSurvival
  | "hhr_nonexistence" => some .hhrNonexistence
  | "xu_theta5_order" => some .xuTheta5Order
  | "iwx_theta5_filtration" => some .iwxTheta5Filtration
  | "low_kervaire_existence" => some .lowKervaireExistence
  | "synthetic_foundation" => some .syntheticFoundation
  | "lambda_quotient_ring" => some .lambdaQuotientRing
  | "higher_lambda_quotient_algebra" => some .higherLambdaQuotientAlgebra
  | "symmetric_monoidal_deformation" => some .symmetricMonoidalDeformation
  | "lambda_inversion" => some .lambdaInversion
  | "nu_cofiber_criterion" => some .nuCofiberCriterion
  | "synthetic_rigidity" => some .syntheticRigidity
  | "lambda_bockstein" => some .lambdaBockstein
  | "synthetic_einf_nu" => some .syntheticEinfNu
  | "synthetic_einf_quotient" => some .syntheticEinfQuotient
  | "synthetic_lift" => some .syntheticLift
  | "synthetic_triangle_lift" => some .syntheticTriangleLift
  | "synthetic_lambda_complete" => some .syntheticLambdaComplete
  | "may_smash_boundary" => some .maySmashBoundary
  | "moss_convergence" => some .mossConvergence
  | "toda_product_identities" => some .todaProductIdentities
  | "bjm_bx_criterion" => some .bjmBxCriterion
  | "theta5_order_data" => some .theta5OrderData
  | "total_differential_identity" => some .totalDifferentialIdentity
  | "tmf_detection" => some .tmfDetection
  | "br21_tmf_differential" => some .br21TmfDifferential
  | "lin_machine_release" => some .linMachineRelease
  | "lin_spectrum_catalogue" => some .linSpectrumCatalogue
  | "lin_e2_page_catalogue" => some .linE2PageCatalogue
  | "lin_map_catalogue" => some .linMapCatalogue
  | "lin_d2_catalogue" => some .linD2Catalogue
  | "lin_propagated_outputs" => some .linPropagatedOutputs
  | "appendix_tables" => some .appendixTables
  | "manual_differentials" => some .manualDifferentials
  | "normalized_hopf_detection" => some .normalizedHopfDetection
  | "eta_ess_regression" => some .etaEssRegression
  | "leibniz_negative_regression" => some .leibnizNegativeRegression
  | "chua_rule_counterexample" => some .chuaRuleCounterexample
  | "mahowald_cofiber_regression" => some .mahowaldCofiberRegression
  | "synthetic_14_stem_regression" => some .synthetic14StemRegression
  | "stem_38_crossing_regression" => some .stem38CrossingRegression
  | "hopf_crossing_exclusion" => some .hopfCrossingExclusion
  | "page_crossing_regression" => some .pageCrossingRegression
  | "theta5_order_torsion" => some .theta5OrderTorsion
  | "theta5_square_tmf" => some .theta5SquareTmf
  | "toda_candidate_products" => some .todaCandidateProducts
  | "two_extension_indeterminacy" => some .twoExtensionIndeterminacy
  | "hopf_lift_obstructions" => some .hopfLiftObstructions
  | "stem_122_product_exhaustion" => some .stem122ProductExhaustion
  | "cnu_incoming_exclusion" => some .cnuIncomingExclusion
  | _ => none

/-- All claim identifiers in stable report order. -/
def all : List ExternalRootId :=
  [ .adamsOneLine
  , .mapFiltrationFactorization
  , .browderCriterion
  , .mahowaldTangoraDifferentials
  , .theta5Existence
  , .bjmInduction
  , .mayLowPageSurvival
  , .hhrNonexistence
  , .xuTheta5Order
  , .iwxTheta5Filtration
  , .lowKervaireExistence
  , .syntheticFoundation
  , .lambdaQuotientRing
  , .higherLambdaQuotientAlgebra
  , .symmetricMonoidalDeformation
  , .lambdaInversion
  , .nuCofiberCriterion
  , .syntheticRigidity
  , .lambdaBockstein
  , .syntheticEinfNu
  , .syntheticEinfQuotient
  , .syntheticLift
  , .syntheticTriangleLift
  , .syntheticLambdaComplete
  , .maySmashBoundary
  , .mossConvergence
  , .todaProductIdentities
  , .bjmBxCriterion
  , .theta5OrderData
  , .totalDifferentialIdentity
  , .tmfDetection
  , .br21TmfDifferential
  , .linMachineRelease
  , .linSpectrumCatalogue
  , .linE2PageCatalogue
  , .linMapCatalogue
  , .linD2Catalogue
  , .linPropagatedOutputs
  , .appendixTables
  , .manualDifferentials
  , .normalizedHopfDetection
  , .etaEssRegression
  , .leibnizNegativeRegression
  , .chuaRuleCounterexample
  , .mahowaldCofiberRegression
  , .synthetic14StemRegression
  , .stem38CrossingRegression
  , .hopfCrossingExclusion
  , .pageCrossingRegression
  , .theta5OrderTorsion
  , .theta5SquareTmf
  , .todaCandidateProducts
  , .twoExtensionIndeterminacy
  , .hopfLiftObstructions
  , .stem122ProductExhaustion
  , .cnuIncomingExclusion
  ]

theorem all_nodup : all.Nodup := by
  decide

theorem all_length : all.length = 56 := by
  decide

theorem codes_nodup : (all.map code).Nodup := by
  decide

theorem mem_all (root : ExternalRootId) : root ∈ all := by
  cases root <;> simp [all]

theorem code_injective : Function.Injective code := by
  intro root₁ root₂ h
  cases root₁ <;> cases root₂ <;> simp [code] at h ⊢

theorem code_ne_empty (root : ExternalRootId) : code root ≠ "" := by
  cases root <;> simp [code]

@[simp] theorem ofCode_code (root : ExternalRootId) :
    ofCode (code root) = some root := by
  cases root <;> rfl

theorem code_of_ofCode {key : String} {root : ExternalRootId}
    (h : ofCode key = some root) : code root = key := by
  simp only [ofCode] at h
  split at h <;> cases h <;> rfl

theorem ofCode_eq_some_iff {key : String} {root : ExternalRootId} :
    ofCode key = some root ↔ key = code root := by
  constructor
  · intro h
    exact (code_of_ofCode h).symm
  · rintro rfl
    exact ofCode_code root

theorem ofCode_eq_none_iff (key : String) :
    ofCode key = none ↔ key ∉ all.map code := by
  constructor
  · intro hNone hMem
    obtain ⟨root, -, hCode⟩ := List.mem_map.mp hMem
    rw [← hCode] at hNone
    simp at hNone
  · intro hUnknown
    cases hDecode : ofCode key with
    | none => rfl
    | some root =>
        exfalso
        apply hUnknown
        apply List.mem_map.mpr
        exact ⟨root, mem_all root, code_of_ofCode hDecode⟩

end ExternalRootId

/-- Trust classification of one claim-level ledger row. -/
inductive ExternalClaimClass
  | literatureResult
  | machineEvidence
  | tableEvidence
  | transcribedEvidence
  | compositeResult
  deriving DecidableEq, Repr, Inhabited

namespace ExternalClaimClass

def code : ExternalClaimClass → String
  | .literatureResult => "literature_result"
  | .machineEvidence => "machine_evidence"
  | .tableEvidence => "table_evidence"
  | .transcribedEvidence => "transcribed_evidence"
  | .compositeResult => "composite_result"

def ofCode : String → Option ExternalClaimClass
  | "literature_result" => some .literatureResult
  | "machine_evidence" => some .machineEvidence
  | "table_evidence" => some .tableEvidence
  | "transcribed_evidence" => some .transcribedEvidence
  | "composite_result" => some .compositeResult
  | _ => none

def all : List ExternalClaimClass :=
  [.literatureResult, .machineEvidence, .tableEvidence,
    .transcribedEvidence, .compositeResult]

def SupportsResult : ExternalClaimClass → Prop
  | .literatureResult | .compositeResult => True
  | _ => False

def SupportsEvidence : ExternalClaimClass → Prop
  | .machineEvidence | .tableEvidence | .transcribedEvidence => True
  | _ => False

theorem all_nodup : all.Nodup := by
  decide

theorem all_length : all.length = 5 := by
  decide

theorem mem_all (classification : ExternalClaimClass) : classification ∈ all := by
  cases classification <;> simp [all]

theorem codes_nodup : (all.map code).Nodup := by
  decide

theorem code_ne_empty (classification : ExternalClaimClass) :
    code classification ≠ "" := by
  cases classification <;> simp [code]

theorem code_injective : Function.Injective code := by
  intro classification₁ classification₂ h
  cases classification₁ <;> cases classification₂ <;> simp [code] at h ⊢

@[simp] theorem ofCode_code (classification : ExternalClaimClass) :
    ofCode (code classification) = some classification := by
  cases classification <;> rfl

theorem code_of_ofCode {key : String} {classification : ExternalClaimClass}
    (h : ofCode key = some classification) : code classification = key := by
  simp only [ofCode] at h
  split at h <;> cases h <;> rfl

theorem ofCode_eq_some_iff {key : String} {classification : ExternalClaimClass} :
    ofCode key = some classification ↔ key = code classification := by
  constructor
  · intro h
    exact (code_of_ofCode h).symm
  · rintro rfl
    exact ofCode_code classification

theorem ofCode_eq_none_iff (key : String) :
    ofCode key = none ↔ key ∉ all.map code := by
  constructor
  · intro hNone hMem
    obtain ⟨classification, -, rfl⟩ := List.mem_map.mp hMem
    simp at hNone
  · intro hNot
    cases hDecode : ofCode key with
    | none => rfl
    | some classification =>
        exfalso
        apply hNot
        apply List.mem_map.mpr
        exact ⟨classification, mem_all classification, code_of_ofCode hDecode⟩

end ExternalClaimClass

namespace ExternalRootId

/-- A topological rank for the checked-in dependency graph.  The first root
is assigned a high rank because its two literature prerequisites occur later
in the presentation order; all other roots use their position in `all`. -/
def dependencyRank : ExternalRootId → Nat
  | .adamsOneLine => 100
  | .mapFiltrationFactorization => 1
  | .browderCriterion => 2
  | .mahowaldTangoraDifferentials => 3
  | .theta5Existence => 4
  | .bjmInduction => 5
  | .mayLowPageSurvival => 6
  | .hhrNonexistence => 7
  | .xuTheta5Order => 8
  | .iwxTheta5Filtration => 9
  | .lowKervaireExistence => 10
  | .syntheticFoundation => 11
  | .lambdaQuotientRing => 12
  | .higherLambdaQuotientAlgebra => 13
  | .symmetricMonoidalDeformation => 14
  | .lambdaInversion => 15
  | .nuCofiberCriterion => 16
  | .syntheticRigidity => 17
  | .lambdaBockstein => 18
  | .syntheticEinfNu => 19
  | .syntheticEinfQuotient => 20
  | .syntheticLift => 21
  | .syntheticTriangleLift => 22
  | .syntheticLambdaComplete => 23
  | .maySmashBoundary => 24
  | .mossConvergence => 25
  | .todaProductIdentities => 26
  | .bjmBxCriterion => 27
  | .theta5OrderData => 28
  | .totalDifferentialIdentity => 29
  | .tmfDetection => 30
  | .br21TmfDifferential => 31
  | .linMachineRelease => 32
  | .linSpectrumCatalogue => 33
  | .linE2PageCatalogue => 34
  | .linMapCatalogue => 35
  | .linD2Catalogue => 36
  | .linPropagatedOutputs => 37
  | .appendixTables => 38
  | .manualDifferentials => 39
  | .normalizedHopfDetection => 40
  | .etaEssRegression => 41
  | .leibnizNegativeRegression => 42
  | .chuaRuleCounterexample => 43
  | .mahowaldCofiberRegression => 44
  | .synthetic14StemRegression => 45
  | .stem38CrossingRegression => 46
  | .hopfCrossingExclusion => 47
  | .pageCrossingRegression => 48
  | .theta5OrderTorsion => 49
  | .theta5SquareTmf => 50
  | .todaCandidateProducts => 51
  | .twoExtensionIndeterminacy => 52
  | .hopfLiftObstructions => 53
  | .stem122ProductExhaustion => 54
  | .cnuIncomingExclusion => 55

end ExternalRootId

/-! ## Claim records and the complete ledger -/

/-- One claim-level provenance record.

`owner` is the intended fully-qualified owning Lean declaration.  `target` is
the stable Blueprint label (or, for primitive subclaims, a stable source target
key).  Dependencies distinguish a composite input from a primitive root. -/
structure ExternalClaimRecord where
  id : ExternalRootId
  classification : ExternalClaimClass
  owner : Lean.Name
  target : String
  dependencies : List ExternalRootId
  ref : SourceRef
  deriving DecidableEq, Repr, Inhabited

namespace ExternalClaimRecord

/-- Closed non-Blueprint targets used for source-level roots whose downstream
declaration has not yet been introduced.  Keeping these targets enumerated
prevents a misspelled `source:` key from passing row validity. -/
def sourceTargets : List String :=
  [ "source:bjm-theta5-existence"
  , "source:br21-tmf-differential"
  , "source:higher-lambda-quotient-algebra-tower"
  , "source:iwx-theta5-filtration"
  , "source:mahowald-tangora-differentials"
  , "source:may-low-page-survival"
  , "source:symmetric-monoidal-deformation-construction"
  , "source:tmf-detection"
  , "source:xu-theta5-order"
  ]

theorem sourceTargets_nodup : sourceTargets.Nodup := by
  decide

theorem sourceTargets_length : sourceTargets.length = 9 := by
  decide

/-! A classification is part of the trust boundary, so it is checked against
the source family rather than treated as an unchecked annotation. -/
def ClassificationConsistent (record : ExternalClaimRecord) : Prop :=
  match record.classification with
  | .literatureResult => record.ref.source ≠ .lwxMachine
  | .machineEvidence => record.ref.source = .lwxMachine
  | .tableEvidence => record.ref.source = .aimPaper
  | .transcribedEvidence => record.ref.source = .aimPaper
  | .compositeResult => record.dependencies ≠ []

private def charsPrefix : List Char → List Char → Bool
  | [], _ => true
  | _ :: _, [] => false
  | head :: tail, otherHead :: otherTail =>
      if head == otherHead then charsPrefix tail otherTail else false

def stringHasPrefix (prefixText value : String) : Bool :=
  charsPrefix prefixText.toList value.toList

private def nameHasProjectHead : Lean.Name → Bool
  | .str .anonymous "KIP126" => true
  | .str parent _ => nameHasProjectHead parent
  | _ => false

/-- Structural exporter safety for a future-facing owner name.  Numeric name
components render as decimal digits; string components are checked before the
name formatter adds separators or escaping brackets. -/
def nameProjectionSafe : Lean.Name → Bool
  | .anonymous => true
  | .str parent value => nameProjectionSafe parent && SourceEntry.projectionFieldSafe value
  | .num parent _ => nameProjectionSafe parent

/-- Owner names are intentionally future-facing, but remain in the project
namespace and use exporter-safe characters so an arbitrary unrelated name or
row-injection suffix cannot silently enter the ledger. -/
def OwnerConsistent (record : ExternalClaimRecord) : Prop :=
  record.owner ≠ Lean.Name.anonymous ∧
    nameHasProjectHead record.owner = true ∧
    nameProjectionSafe record.owner = true

/-- Targets use the stable Blueprint/source-key prefixes reserved by the
claim ledger and use exporter-safe characters.  Existence of a Blueprint label
is checked by the external checker because later domain chapters are allowed
to be unimplemented. -/
def TargetConsistent (record : ExternalClaimRecord) : Prop :=
  SourceEntry.projectionFieldSafe record.target = true ∧
    (stringHasPrefix "thm:" record.target = true ∨
      stringHasPrefix "def:" record.target = true ∨
      stringHasPrefix "prop:" record.target = true ∨
      stringHasPrefix "evidence:" record.target = true ∨
      record.target ∈ sourceTargets)

/-- An independently attached evidence artifact must name the same path as the
canonical claim locator.  Its digest remains a filesystem-ledger concern. -/
def ArtifactCompatible (record : ExternalClaimRecord)
    (artifact : Option ArtifactRef) : Prop :=
  match artifact with
  | none => True
  | some value => record.ref.locator.artifact = some value.path

/-- Structural validity required of every checked-in claim row. -/
def Valid (record : ExternalClaimRecord) : Prop :=
  record.OwnerConsistent ∧
    record.target ≠ "" ∧
    SourceEntry.projectionFieldSafe record.ref.locator.description = true ∧
    record.TargetConsistent ∧
    record.ClassificationConsistent ∧
    record.dependencies.Nodup ∧
    record.id ∉ record.dependencies ∧
    record.ref.Valid ∧
    SourceInventory.locatorPathValid record.ref

abbrev valid (record : ExternalClaimRecord) : Prop := Valid record

/-- Resolve the document-level source row of a claim. -/
def sourceEntry (record : ExternalClaimRecord) : SourceEntry :=
  SourceInventory.resolve record.ref

theorem sourceEntry_source (record : ExternalClaimRecord) :
    record.sourceEntry.source = record.ref.source :=
  SourceInventory.resolve_source record.ref

theorem sourceEntry_valid (record : ExternalClaimRecord) :
    record.sourceEntry.Valid :=
  SourceInventory.resolve_valid record.ref

theorem ref_inventoryValid_of_valid (record : ExternalClaimRecord)
    (h : record.Valid) : record.ref.InventoryValid := by
  rcases h with ⟨_, _, _, _, _, _, _, hRef, hPath⟩
  exact ⟨hRef, hPath⟩

end ExternalClaimRecord

/-- A complete claim ledger supplies one valid row for every enumerated root. -/
structure ExternalClaimLedger where
  lookup : ExternalRootId → ExternalClaimRecord
  id_eq : ∀ root, (lookup root).id = root
  valid : ∀ root, (lookup root).Valid

namespace ExternalClaimLedger

def entries (ledger : ExternalClaimLedger) : List ExternalClaimRecord :=
  ExternalRootId.all.map ledger.lookup

def owners (ledger : ExternalClaimLedger) : List Lean.Name :=
  ledger.entries.map ExternalClaimRecord.owner

def targets (ledger : ExternalClaimLedger) : List String :=
  ledger.entries.map ExternalClaimRecord.target

def refs (ledger : ExternalClaimLedger) : List SourceRef :=
  ledger.entries.map ExternalClaimRecord.ref

theorem lookup_id (ledger : ExternalClaimLedger) (root : ExternalRootId) :
    (ledger.lookup root).id = root := ledger.id_eq root

theorem lookup_valid (ledger : ExternalClaimLedger) (root : ExternalRootId) :
    (ledger.lookup root).Valid := ledger.valid root

theorem entries_ids (ledger : ExternalClaimLedger) :
    ledger.entries.map ExternalClaimRecord.id = ExternalRootId.all := by
  simp [entries, ExternalRootId.all, ledger.lookup_id]

theorem entries_nodup (ledger : ExternalClaimLedger) :
    (ledger.entries.map ExternalClaimRecord.id).Nodup := by
  rw [ledger.entries_ids]
  exact ExternalRootId.all_nodup

theorem lookup_mem_entries (ledger : ExternalClaimLedger) (root : ExternalRootId) :
    ledger.lookup root ∈ ledger.entries := by
  apply List.mem_map.mpr
  exact ⟨root, ExternalRootId.mem_all root, rfl⟩

/-- Every dependency denotes another valid row because dependency IDs inhabit
the same closed root type as ledger keys. -/
theorem dependency_valid (ledger : ExternalClaimLedger) (root dependency : ExternalRootId)
    (_hDependency : dependency ∈ (ledger.lookup root).dependencies) :
    (ledger.lookup dependency).Valid :=
  ledger.lookup_valid dependency

/-- Every direct dependency has strictly smaller rank.  A rank witness is a
finite, kernel-checkable certificate that the dependency relation is acyclic. -/
def DependenciesRanked (ledger : ExternalClaimLedger)
    (rank : ExternalRootId → Nat) : Prop :=
  ∀ root dependency,
    dependency ∈ (ledger.lookup root).dependencies →
      rank dependency < rank root

def DependencyAcyclic (ledger : ExternalClaimLedger) : Prop :=
  ∃ rank, ledger.DependenciesRanked rank

/-- The direct dependency relation, oriented from a dependency to the row that
uses it. -/
def Dependency (ledger : ExternalClaimLedger)
    (dependency owner : ExternalRootId) : Prop :=
  dependency ∈ (ledger.lookup owner).dependencies

/-- Standard path-based absence of directed dependency cycles. -/
def NoDependencyCycle (ledger : ExternalClaimLedger) : Prop :=
  ∀ root, ¬Relation.TransGen ledger.Dependency root root

theorem noDependencyCycle_of_ranked (ledger : ExternalClaimLedger)
    (rank : ExternalRootId → Nat) (hRanked : ledger.DependenciesRanked rank) :
    ledger.NoDependencyCycle := by
  intro root hCycle
  have rank_strictly_increases {dependency owner : ExternalRootId}
      (hPath : Relation.TransGen ledger.Dependency dependency owner) :
      rank dependency < rank owner := by
    induction hPath with
    | single hDependency => exact hRanked _ _ hDependency
    | tail _ hDependency ih =>
        exact Nat.lt_trans ih (hRanked _ _ hDependency)
  exact Nat.lt_irrefl _ (rank_strictly_increases hCycle)

end ExternalClaimLedger

private def sourceRef (source : SourceId) (description : String)
    (artifact : Option String := none) : SourceRef :=
  { source := source, locator := { description := description, artifact := artifact } }

private def claim (id : ExternalRootId) (classification : ExternalClaimClass)
    (owner : Lean.Name) (target : String) (source : SourceId) (description : String)
    (artifact : Option String := none)
    (dependencies : List ExternalRootId := []) : ExternalClaimRecord :=
  { id, classification, owner, target, dependencies
    ref := sourceRef source description artifact }

private def lookupClaim : ExternalRootId → ExternalClaimRecord
  | .adamsOneLine =>
      claim .adamsOneLine .compositeResult `KIP126.Classical.adamsOneLineDifferentials
        "thm:external-adams-one-line" .aimPaper
        "AIM paper, lines 140--150; cited Adams, Mahowald--Tangora, and May inputs"
        (some "aimpaper/main.tex")
        [.mahowaldTangoraDifferentials, .mayLowPageSurvival]
  | .mapFiltrationFactorization =>
      claim .mapFiltrationFactorization .literatureResult
        `KIP126.Classical.mapFiltrationFactorization
        "thm:external-map-filtration-factorization" .aimPaper
        "AIM paper, lines 273--275, citation to Ravenel Theorem 2.2.14"
        (some "aimpaper/main.tex")
  | .browderCriterion =>
      claim .browderCriterion .literatureResult `KIP126.Kervaire.BrowderCriterion
        "thm:external-browder-criterion" .browder
        "Browder, section 7, Theorem 7.1; physical PDF page 23"
        (some "reference/Browder/paper.pdf")
  | .mahowaldTangoraDifferentials =>
      claim .mahowaldTangoraDifferentials .literatureResult
        `KIP126.Kervaire.MahowaldTangoraDifferentials
        "source:mahowald-tangora-differentials" .mahowaldTangora
        "Primary text unavailable; AIM paper lines 159--160 cite Mahowald--Tangora for d_3(h_2 h_5), d_4(h_3 h_5), and h_4^2 survival"
  | .theta5Existence =>
      claim .theta5Existence .literatureResult `KIP126.Kervaire.Theta5Existence
        "source:bjm-theta5-existence" .bjmTheta5
        "Primary text unavailable; AIM paper line 159 cites BJMtheta5 for h_5^2 survival and the dimension-62 theta_5 input"
  | .bjmInduction =>
      claim .bjmInduction .literatureResult `KIP126.Kervaire.BJMInduction
        "thm:external-bjm-induction" .bjmInduction
        "Primary text unavailable; AIM paper line 162 cites BJMinduction for the order-two theta_j to theta_{j+1} induction"
  | .mayLowPageSurvival =>
      claim .mayLowPageSurvival .literatureResult `KIP126.Classical.MayLowPageSurvival
        "source:may-low-page-survival" .mayThesis
        "Primary text unavailable; AIM paper line 159 cites Maythesis for the low-page survivors and h_j^2 survival for j <= 3"
  | .hhrNonexistence =>
      claim .hhrNonexistence .literatureResult `KIP126.Kervaire.HHRNonexistence
        "thm:external-hhr-nonexistence" .hhr
        "Hill--Hopkins--Ravenel, Kervaire invariant one nonexistence theorem"
        (some "reference/HHR/paper.pdf")
  | .xuTheta5Order =>
      claim .xuTheta5Order .literatureResult `KIP126.Kervaire.XuTheta5Order
        "source:xu-theta5-order" .xu
        "Xu, Corollary 1.3, an order-two theta_5 representative"
        (some "reference/Xu/paper.pdf")
  | .iwxTheta5Filtration =>
      claim .iwxTheta5Filtration .literatureResult `KIP126.Kervaire.IWXTheta5Filtration
        "source:iwx-theta5-filtration" .iwx
        "Isaksen--Wang--Xu, stem-62 group order and choice-filtration tables"
        (some "reference/IWX/paper.pdf")
  | .lowKervaireExistence =>
      claim .lowKervaireExistence .compositeResult `KIP126.Kervaire.LowKervaireExistence
        "thm:external-low-kervaire-existence" .aimPaper
        "AIM paper, lines 151--162, assembled prior low-dimensional existence input"
        (some "aimpaper/main.tex")
        [.mahowaldTangoraDifferentials, .theta5Existence, .bjmInduction,
          .mayLowPageSurvival]
  | .syntheticFoundation =>
      claim .syntheticFoundation .literatureResult `KIP126.Synthetic.SyntheticFoundation
        "thm:external-synthetic-foundation" .pst
        "Pstragowski, synthetic category construction and synthetic analogue functor"
        (some "reference/Pst/paper.pdf")
  | .lambdaQuotientRing =>
      claim .lambdaQuotientRing .literatureResult `KIP126.Synthetic.LambdaQuotientRing
        "thm:external-lambda-quotient-ring" .pst
        "Pstragowski, Corollary 4.45, lambda-quotient ring structure"
        (some "reference/Pst/paper.pdf")
  | .higherLambdaQuotientAlgebra =>
      claim .higherLambdaQuotientAlgebra .literatureResult
        `KIP126.Synthetic.HigherLambdaQuotientAlgebra
        "source:higher-lambda-quotient-algebra-tower" .burklundXu
        "Burklund--Xu, Construction 7.7, direct tower of commutative algebras on the higher lambda-power quotients"
        (some "reference/BurklundXu/paper.pdf")
  | .symmetricMonoidalDeformation =>
      claim .symmetricMonoidalDeformation .literatureResult
        `KIP126.Synthetic.SymmetricMonoidalDeformationConstruction
        "source:symmetric-monoidal-deformation-construction" .bhsMot
        "Burklund--Hahn--Senger, Appendix C, symmetric monoidal filtered-to-synthetic deformation construction underlying the Burklund--Xu tower"
        (some "reference/BHSmot/paper.pdf")
  | .lambdaInversion =>
      claim .lambdaInversion .literatureResult `KIP126.Synthetic.LambdaInversion
        "thm:external-lambda-inversion" .pst
        "Pstragowski, lambda-inversion comparison with classical spectra"
        (some "reference/Pst/paper.pdf")
  | .nuCofiberCriterion =>
      claim .nuCofiberCriterion .literatureResult `KIP126.Synthetic.NuCofiberCriterion
        "thm:external-nu-cofiber-criterion" .pst
        "Pstragowski, Lemma 4.23, cofiber criterion for the synthetic analogue functor"
        (some "reference/Pst/paper.pdf")
  | .syntheticRigidity =>
      claim .syntheticRigidity .literatureResult `KIP126.Synthetic.SyntheticRigidity
        "thm:external-synthetic-rigidity" .bhs
        "Burklund--Hahn--Senger, Theorem A.8, synthetic Adams rigidity"
        (some "reference/BHS/paper.pdf")
  | .lambdaBockstein =>
      claim .lambdaBockstein .literatureResult `KIP126.Synthetic.LambdaBockstein
        "thm:external-lambda-bockstein" .bhs
        "Burklund--Hahn--Senger, Theorem A.1, lambda-Bockstein comparison"
        (some "reference/BHS/paper.pdf")
  | .syntheticEinfNu =>
      claim .syntheticEinfNu .literatureResult `KIP126.Synthetic.SyntheticEinfNu
        "thm:external-synthetic-einfty-nu" .bhs
        "Burklund--Hahn--Senger, Corollary A.9, E_infinity of nu X"
        (some "reference/BHS/paper.pdf")
  | .syntheticEinfQuotient =>
      claim .syntheticEinfQuotient .literatureResult `KIP126.Synthetic.SyntheticEinfQuotient
        "thm:external-synthetic-einfty-quotient" .bhs
        "Burklund--Hahn--Senger, Corollary A.11, E_infinity of a finite lambda quotient"
        (some "reference/BHS/paper.pdf")
  | .syntheticLift =>
      claim .syntheticLift .literatureResult `KIP126.Synthetic.SyntheticLiftComparison
        "thm:external-synthetic-lift" .bhs
        "Burklund--Hahn--Senger, Lemma 9.15, synthetic lift of a filtered map"
        (some "reference/BHS/paper.pdf")
  | .syntheticTriangleLift =>
      claim .syntheticTriangleLift .literatureResult
        `KIP126.Synthetic.SyntheticTriangleLiftComparison
        "thm:external-synthetic-triangle-lift" .bhs
        "Burklund--Hahn--Senger, proof of Lemma 9.15, lift of a distinguished triangle"
        (some "reference/BHS/paper.pdf")
  | .syntheticLambdaComplete =>
      claim .syntheticLambdaComplete .literatureResult
        `KIP126.Synthetic.SyntheticLambdaComplete
        "thm:external-synthetic-lambda-complete" .bhs
        "Burklund--Hahn--Senger, Proposition A.13, lambda-adic completeness"
        (some "reference/BHS/paper.pdf")
  | .maySmashBoundary =>
      claim .maySmashBoundary .literatureResult `KIP126.Stable.MaySmashBoundary
        "thm:external-may-smash-boundary" .may01
        "Primary text unavailable; AIM paper lines 1755--1778 cite May01 Lemma 4.6 and TC3 for the smash-boundary diagram"
  | .mossConvergence =>
      claim .mossConvergence .literatureResult `KIP126.Stable.MossConvergence
        "thm:moss-convergence-adapter" .moss
        "Primary text unavailable; AIM paper lines 2542--2543 cite Moss Theorem 1.2 for the no-crossing Toda-bracket criterion"
  | .todaProductIdentities =>
      claim .todaProductIdentities .compositeResult `KIP126.Stable.TodaProductIdentities
        "thm:toda-product-identities" .aimPaper
        "AIM paper, lines 2493--2567, load-bearing Toda product and shuffle identities"
        (some "aimpaper/main.tex") [.mossConvergence]
  | .bjmBxCriterion =>
      claim .bjmBxCriterion .literatureResult `KIP126.Kervaire.BJM_BXCriterion
        "thm:external-bjm-bx-criterion" .burklundXu
        "Burklund--Xu, Proposition 7.19, synthetic BJM criterion"
        (some "reference/BurklundXu/paper.pdf") [.bjmInduction]
  | .theta5OrderData =>
      claim .theta5OrderData .compositeResult `KIP126.Kervaire.Theta5OrderData
        "thm:external-theta5-order-data" .aimPaper
        "AIM paper, Remarks 7.4--7.5, Xu/IWX order and choice-filtration synthesis"
        (some "aimpaper/main.tex") [.xuTheta5Order, .iwxTheta5Filtration]
  | .totalDifferentialIdentity =>
      claim .totalDifferentialIdentity .literatureResult
        `KIP126.Kervaire.TotalDifferentialIdentity
        "thm:external-total-differential-identity" .burklundXu
        "Burklund--Xu Proposition 7.19 construction, total differential identity for an order-two choice"
        (some "reference/BurklundXu/paper.pdf")
  | .tmfDetection =>
      claim .tmfDetection .literatureResult `KIP126.Kervaire.TmfDetection
        "source:tmf-detection" .tmf
        "Behrens--Mahowald--Quigley, tmf Hurewicz detection and nonimage input"
        (some "reference/tmf/paper.pdf")
  | .br21TmfDifferential =>
      claim .br21TmfDifferential .literatureResult `KIP126.Kervaire.Br21TmfDifferential
        "source:br21-tmf-differential" .br21
        "Primary text unavailable; AIM paper lines 2790--2791 record Bruner--Rognes' manual tmf differential d_3(v_2^16)=beta^5 g"
  | .linMachineRelease =>
      claim .linMachineRelease .machineEvidence `KIP126.External.LinMachineRelease
        "prop:lin-computation-provenance" .lwxMachine
        "Zenodo record 14875701, version v126.3.cw49"
        (some "reference/LWXMachine/zenodo-record.json")
  | .linSpectrumCatalogue =>
      claim .linSpectrumCatalogue .machineEvidence `KIP126.External.LinSpectrumCatalogue
        "def:lin-spectrum-catalogue" .lwxMachine
        "LWX machine release, the 49-CW-spectrum catalogue"
        (some "reference/LWXMachine/zenodo-record.json") [.linMachineRelease]
  | .linE2PageCatalogue =>
      claim .linE2PageCatalogue .machineEvidence `KIP126.External.LinE2PageCatalogue
        "def:lin-e2-page-catalogue" .lwxMachine
        "LWX machine paper section 2.1 and the E_2-page data for all retained spectra"
        (some "reference/LWXMachine/paper.pdf") [.linMachineRelease, .linSpectrumCatalogue]
  | .linMapCatalogue =>
      claim .linMapCatalogue .machineEvidence `KIP126.External.LinMapCatalogue
        "def:lin-map-catalogue" .lwxMachine
        "LWX machine paper section 2.2, the 180-map catalogue"
        (some "reference/LWXMachine/paper.pdf") [.linMachineRelease, .linSpectrumCatalogue]
  | .linD2Catalogue =>
      claim .linD2Catalogue .machineEvidence `KIP126.External.LinD2Catalogue
        "def:lin-d2-catalogue" .lwxMachine
        "LWX machine paper section 2.3, initial d_2 catalogue"
        (some "reference/LWXMachine/paper.pdf") [.linMachineRelease, .linE2PageCatalogue]
  | .linPropagatedOutputs =>
      claim .linPropagatedOutputs .machineEvidence `KIP126.External.LinPropagatedOutputs
        "def:lin-propagated-output-record" .lwxMachine
        "LWX machine release, propagated differential, extension, and disproof outputs"
        (some "reference/LWXMachine/zenodo-record.json")
        [.linMachineRelease, .linMapCatalogue, .linD2Catalogue]
  | .appendixTables =>
      claim .appendixTables .tableEvidence `KIP126.External.AppendixEvidence
        "def:appendix-evidence-record" .aimPaper
        "AIM Appendix, all twelve tables, nine zero bands, and every nonempty row"
        (some "aimpaper/main.tex")
        [.linE2PageCatalogue, .linPropagatedOutputs]
  | .manualDifferentials =>
      claim .manualDifferentials .transcribedEvidence `KIP126.External.ManualDifferentials
        "prop:appendix-manual-inputs" .aimPaper
        "AIM paper, lines 2785--2792, the three separately supplied differentials"
        (some "aimpaper/main.tex") [.linMachineRelease, .br21TmfDifferential]
  | .normalizedHopfDetection =>
      claim .normalizedHopfDetection .transcribedEvidence
        `KIP126.Kervaire.NormalizedHopfDetection
        "evidence:normalized-hopf-detection" .aimPaper
        "AIM Example 5.5(2), normalized detection of the Hopf map by h_2"
        (some "aimpaper/main.tex")
  | .etaEssRegression =>
      claim .etaEssRegression .tableEvidence `KIP126.Classical.Regression.etaEss
        "prop:eta-ess-regression" .aimPaper
        "AIM Example 2.11, eta-extension spectral-sequence regression in stem 46"
        (some "aimpaper/main.tex") [.iwxTheta5Filtration]
  | .leibnizNegativeRegression =>
      claim .leibnizNegativeRegression .tableEvidence
        `KIP126.Classical.Regression.leibnizNegative
        "prop:leibniz-negative-regression" .aimPaper
        "AIM negative Generalized Leibniz example, lines 1694--1720"
        (some "aimpaper/main.tex") [.appendixTables]
  | .chuaRuleCounterexample =>
      claim .chuaRuleCounterexample .transcribedEvidence
        `KIP126.Classical.Regression.chuaRuleCounterexample
        "prop:chua-rule-counterexample" .aimPaper
        "AIM Remark on the maximal-extension rule, lines 1733--1753"
        (some "aimpaper/main.tex")
  | .mahowaldCofiberRegression =>
      claim .mahowaldCofiberRegression .tableEvidence
        `KIP126.Classical.Regression.mahowaldCofiber
        "prop:mahowald-cofiber-regression" .aimPaper
        "AIM Mahowald-trick cofiber regression, lines 1930--1977"
        (some "aimpaper/main.tex") [.linD2Catalogue]
  | .synthetic14StemRegression =>
      claim .synthetic14StemRegression .tableEvidence
        `KIP126.Synthetic.Regression.stem14
        "prop:synthetic-14-stem-regression" .aimPaper
        "AIM synthetic 14-stem E_infinity regression, lines 878--910"
        (some "aimpaper/main.tex") [.syntheticRigidity, .appendixTables]
  | .stem38CrossingRegression =>
      claim .stem38CrossingRegression .tableEvidence
        `KIP126.Synthetic.Regression.stem38Crossing
        "prop:stem38-crossing-regression" .aimPaper
        "AIM classical crossing-differential example in stem 38"
        (some "aimpaper/main.tex") [.appendixTables]
  | .hopfCrossingExclusion =>
      claim .hopfCrossingExclusion .tableEvidence
        `KIP126.Classical.HopfCrossingObstructionExclusion
        "evidence:hopf-crossing-obstruction-exclusion" .aimPaper
        "AIM finite Ext-product exclusion for the Hopf page-extension example"
        (some "aimpaper/main.tex") [.appendixTables]
  | .pageCrossingRegression =>
      claim .pageCrossingRegression .tableEvidence
        `KIP126.Classical.Regression.pageCrossing
        "prop:page-crossing-regression" .aimPaper
        "AIM Example 5.7, page-crossing regressions"
        (some "aimpaper/main.tex") [.hopfCrossingExclusion]
  | .theta5OrderTorsion =>
      claim .theta5OrderTorsion .tableEvidence `KIP126.Kervaire.Theta5OrderTorsion
        "evidence:theta5-order-torsion" .aimPaper
        "AIM Remarks 7.4--7.5 and Appendix tables, finite theta_5 torsion exclusions"
        (some "aimpaper/main.tex") [.theta5OrderData, .appendixTables]
  | .theta5SquareTmf =>
      claim .theta5SquareTmf .tableEvidence `KIP126.Kervaire.Theta5SquareTmfEvidence
        "evidence:theta5-square-tmf" .aimPaper
        "AIM exhaustive theta_5-square and tmf analysis, lines 2323--2354"
        (some "aimpaper/main.tex") [.tmfDetection, .appendixTables]
  | .todaCandidateProducts =>
      claim .todaCandidateProducts .tableEvidence `KIP126.Kervaire.TodaCandidateProducts
        "evidence:near126-core" .aimPaper
        "AIM Section 7 finite Toda candidate-product ledger"
        (some "aimpaper/main.tex") [.appendixTables, .todaProductIdentities]
  | .twoExtensionIndeterminacy =>
      claim .twoExtensionIndeterminacy .tableEvidence
        `KIP126.Kervaire.TwoExtensionIndeterminacy
        "evidence:h02x1259" .aimPaper
        "AIM stem-125 two-extension representatives and indeterminacy products"
        (some "aimpaper/main.tex") [.appendixTables, .mossConvergence]
  | .hopfLiftObstructions =>
      claim .hopfLiftObstructions .tableEvidence `KIP126.Kervaire.HopfLiftObstructions
        "evidence:near126-indeterminacy" .aimPaper
        "AIM finite Hopf-lift obstruction ledger"
        (some "aimpaper/main.tex") [.appendixTables, .normalizedHopfDetection]
  | .stem122ProductExhaustion =>
      claim .stem122ProductExhaustion .tableEvidence
        `KIP126.Kervaire.Stem122ProductExhaustion
        "evidence:stem122-product-exhaustion" .aimPaper
        "AIM stem-122 candidate and product exhaustion, lines 2707--2728"
        (some "aimpaper/main.tex") [.appendixTables]
  | .cnuIncomingExclusion =>
      claim .cnuIncomingExclusion .tableEvidence `KIP126.Kervaire.CnuIncomingExclusion
        "evidence:cnu126-short-incoming-exclusion" .aimPaper
        "AIM Cnu126 finite short-incoming-differential exclusion"
        (some "aimpaper/main.tex") [.appendixTables]

/- The checked-in, complete claim-level provenance ledger. -/
set_option maxRecDepth 100000 in
def externalClaimLedger : ExternalClaimLedger :=
  { lookup := lookupClaim
    id_eq := by
      intro root
      cases root <;> rfl
    valid := by
      intro root
      cases root <;>
        dsimp [lookupClaim, claim, sourceRef, ExternalClaimRecord.Valid,
          ExternalClaimRecord.ClassificationConsistent,
          ExternalClaimRecord.OwnerConsistent,
          ExternalClaimRecord.TargetConsistent,
          ExternalClaimRecord.stringHasPrefix,
          ExternalClaimRecord.charsPrefix,
          ExternalClaimRecord.nameHasProjectHead,
          SourceRef.Valid, Locator.Valid, SourceInventory.locatorPathValid,
          SourceInventory.locatorPathValidWith, SourceInventory.resolve,
          SourceInventory.resolveWith, SourceInventory.inventory,
          SourceEntry.isSafeRelativePath, SourceEntry.charsSafeRelativeAux,
          SourceEntry.pathComponentSafe, SourceEntry.projectionFieldSafe,
          SourceEntry.schemaCharSafe, SourceEntry.projectionLineSeparator,
          ExternalClaimRecord.nameProjectionSafe,
          SourceEntry.pathHasDirectoryPrefix] <;>
        decide }

theorem externalClaimLedger_dependency_ranked :
    ExternalClaimLedger.DependenciesRanked externalClaimLedger
      ExternalRootId.dependencyRank := by
  intro root dependency hDependency
  cases root <;> cases dependency <;>
    simp [externalClaimLedger, lookupClaim, claim,
      ExternalRootId.dependencyRank] at hDependency ⊢

theorem externalClaimLedger_dependency_acyclic :
    ExternalClaimLedger.DependencyAcyclic externalClaimLedger := by
  exact ⟨ExternalRootId.dependencyRank, externalClaimLedger_dependency_ranked⟩

theorem externalClaimLedger_no_dependency_cycle :
    ExternalClaimLedger.NoDependencyCycle externalClaimLedger :=
  ExternalClaimLedger.noDependencyCycle_of_ranked externalClaimLedger
    ExternalRootId.dependencyRank externalClaimLedger_dependency_ranked

theorem externalClaimLedger_complete :
    externalClaimLedger.entries.map ExternalClaimRecord.id = ExternalRootId.all :=
  externalClaimLedger.entries_ids

theorem externalClaimLedger_nodup :
    (externalClaimLedger.entries.map ExternalClaimRecord.id).Nodup :=
  externalClaimLedger.entries_nodup

theorem externalClaimLedger_count :
    externalClaimLedger.entries.length = 56 := by
  simp [ExternalClaimLedger.entries, ExternalRootId.all_length]

theorem externalClaimLedger_valid (root : ExternalRootId) :
    (externalClaimLedger.lookup root).Valid :=
  externalClaimLedger.lookup_valid root

/-- A literature result mechanically tied to one canonical claim row.  The
proposition and proof still come from the explicit `ExternalResult` value. -/
structure CataloguedExternalResult (P : Prop) where
  root : ExternalRootId
  value : ExternalResult P
  ref_eq : value.ref = (externalClaimLedger.lookup root).ref
  class_supported :
    (externalClaimLedger.lookup root).classification.SupportsResult

namespace CataloguedExternalResult

theorem inventoryValid {P : Prop} (input : CataloguedExternalResult P) :
    input.value.InventoryValid := by
  have hRef := ExternalClaimRecord.ref_inventoryValid_of_valid
    (externalClaimLedger.lookup input.root) (externalClaimLedger_valid input.root)
  simpa [ExternalResult.InventoryValid, ExternalResult.Valid,
    SourceRef.InventoryValid, input.ref_eq] using hRef

end CataloguedExternalResult

/-- Computational/table evidence mechanically tied to one canonical claim
row and carrying the stronger inventory-validity certificate. -/
structure CataloguedExternalEvidence (P : Prop) where
  root : ExternalRootId
  value : ExternalEvidence P
  ref_eq : value.ref = (externalClaimLedger.lookup root).ref
  class_supported :
    (externalClaimLedger.lookup root).classification.SupportsEvidence
  inventory_valid : value.InventoryValid
  artifact_compatible :
    (externalClaimLedger.lookup root).ArtifactCompatible value.artifact

namespace CataloguedExternalEvidence

theorem artifactPath_eq_claim {P : Prop} (input : CataloguedExternalEvidence P)
    (artifact : ArtifactRef) (hArtifact : input.value.artifact = some artifact) :
    (externalClaimLedger.lookup input.root).ref.locator.artifact =
      some artifact.path := by
  simpa [ExternalClaimRecord.ArtifactCompatible, hArtifact] using
    input.artifact_compatible

end CataloguedExternalEvidence

theorem externalClaimLedger_owners_nodup :
    externalClaimLedger.owners.Nodup := by
  decide

theorem externalClaimLedger_targets_nodup :
    externalClaimLedger.targets.Nodup := by
  decide

/-- Exact source references are unique across the canonical roots, so a
catalogued wrapper's `ref_eq` cannot also select a different canonical row. -/
theorem externalClaimLedger_refs_nodup :
    externalClaimLedger.refs.Nodup := by
  decide

/-- Resolve a stable claim key without inventing a fallback record. -/
def resolveClaimCode (key : String) : Option ExternalClaimRecord :=
  (ExternalRootId.ofCode key).map externalClaimLedger.lookup

@[simp] theorem resolveClaimCode_code (root : ExternalRootId) :
    resolveClaimCode (ExternalRootId.code root) =
      some (externalClaimLedger.lookup root) := by
  simp [resolveClaimCode]

/-! ## Checker projection -/

/-- Claim fields exported to the filesystem-facing provenance checker. -/
structure ExternalClaimProjection where
  id : ExternalRootId
  source : SourceId
  artifact : Option String
  description : String
  owner : Lean.Name
  target : String
  deriving DecidableEq, Repr, Inhabited

namespace ExternalClaimProjection

def ofRecord (record : ExternalClaimRecord) : ExternalClaimProjection :=
  { id := record.id
    source := record.ref.source
    artifact := record.ref.locator.artifact
    description := record.ref.locator.description
    owner := record.owner
    target := record.target }

def encode (projection : ExternalClaimProjection) : String :=
  String.intercalate "|"
    [ ExternalRootId.code projection.id
    , SourceId.code projection.source
    , projection.artifact.getD ""
    , projection.description
    , projection.owner.toString
    , projection.target ]

end ExternalClaimProjection

def externalClaimProjection : List ExternalClaimProjection :=
  externalClaimLedger.entries.map ExternalClaimProjection.ofRecord

def externalClaimProjectionManifest : List String :=
  externalClaimProjection.map ExternalClaimProjection.encode

theorem externalClaimProjection_ids :
    externalClaimProjection.map ExternalClaimProjection.id = ExternalRootId.all := by
  change externalClaimLedger.entries.map ExternalClaimRecord.id = ExternalRootId.all
  exact externalClaimLedger_complete

theorem externalClaimProjection_count : externalClaimProjection.length = 56 := by
  simp [externalClaimProjection, externalClaimLedger_count]

/-- Every admitted document or machine archive owns at least one claim row. -/
theorem every_source_has_claim (source : SourceId) :
    ∃ root, (externalClaimLedger.lookup root).ref.source = source := by
  cases source with
  | aimPaper => exact ⟨.normalizedHopfDetection, rfl⟩
  | browder => exact ⟨.browderCriterion, rfl⟩
  | mahowaldTangora => exact ⟨.mahowaldTangoraDifferentials, rfl⟩
  | bjmTheta5 => exact ⟨.theta5Existence, rfl⟩
  | bjmInduction => exact ⟨.bjmInduction, rfl⟩
  | mayThesis => exact ⟨.mayLowPageSurvival, rfl⟩
  | may01 => exact ⟨.maySmashBoundary, rfl⟩
  | hhr => exact ⟨.hhrNonexistence, rfl⟩
  | xu => exact ⟨.xuTheta5Order, rfl⟩
  | iwx => exact ⟨.iwxTheta5Filtration, rfl⟩
  | pst => exact ⟨.syntheticFoundation, rfl⟩
  | bhs => exact ⟨.syntheticRigidity, rfl⟩
  | bhsMot => exact ⟨.symmetricMonoidalDeformation, rfl⟩
  | burklundXu => exact ⟨.bjmBxCriterion, rfl⟩
  | moss => exact ⟨.mossConvergence, rfl⟩
  | br21 => exact ⟨.br21TmfDifferential, rfl⟩
  | tmf => exact ⟨.tmfDetection, rfl⟩
  | lwxMachine => exact ⟨.linMachineRelease, rfl⟩

/-- Source coverage with the validity certificate for the selected claim row. -/
theorem every_source_has_valid_claim (source : SourceId) :
    ∃ root, (externalClaimLedger.lookup root).ref.source = source ∧
      (externalClaimLedger.lookup root).Valid := by
  obtain ⟨root, hSource⟩ := every_source_has_claim source
  exact ⟨root, hSource, externalClaimLedger_valid root⟩

/-! ## Compile-time regression checks -/

example : externalClaimLedger.entries.length = ExternalRootId.all.length := by
  simp [ExternalClaimLedger.entries]

example : (externalClaimLedger.lookup .linMachineRelease).ref.source = .lwxMachine := by
  rfl

example :
    (externalClaimLedger.lookup .theta5OrderData).dependencies =
      [.xuTheta5Order, .iwxTheta5Filtration] := by
  rfl

end KIP126.External
