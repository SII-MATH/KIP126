/-!
# Provenance for external inputs

This module contains the small, domain-independent kernel used to attach an
auditable source to a proposition supplied from outside the formalisation.

`ExternalResult` and `ExternalEvidence` are ordinary structures.  In
particular, this file does **not** install an untracked global assumption or
instance which turns an external input into a theorem.  A downstream theorem
must receive the corresponding structure explicitly and use its
`proof`/`evidence` field.

The identifiers in `SourceId` are deliberately closed over the sources which
are currently part of the KIP126 inventory.  Adding a source therefore
requires an explicit catalogue change instead of silently introducing a
misspelled string.  `SourceId.code` is the stable snake-case key shared with
the machine-readable inventory.
-/

namespace KIP126.External

/-! ## Source identifiers and kinds -/

/-- Stable identifiers for the sources currently admitted to the KIP126
inventory.

The spelling of each constructor is Lean-facing; use `SourceId.code` when a
stable key is needed for JSON or other external tooling. -/
inductive SourceId
  | aimPaper
  | browder
  | mahowaldTangora
  | bjmTheta5
  | bjmInduction
  | mayThesis
  | may01
  | hhr
  | xu
  | iwx
  | pst
  | bhs
  | bhsMot
  | burklundXu
  | moss
  | br21
  | tmf
  | lwxMachine
  deriving DecidableEq, Repr, Inhabited

namespace SourceId

/-- The canonical machine-readable key for a source. -/
def code : SourceId → String
  | .aimPaper => "aim_paper"
  | .browder => "browder"
  | .mahowaldTangora => "mahowald_tangora"
  | .bjmTheta5 => "bjm_theta5"
  | .bjmInduction => "bjm_induction"
  | .mayThesis => "may_thesis"
  | .may01 => "may01"
  | .hhr => "hhr"
  | .xu => "xu"
  | .iwx => "iwx"
  | .pst => "pst"
  | .bhs => "bhs"
  | .bhsMot => "bhs_mot"
  | .burklundXu => "burklund_xu"
  | .moss => "moss"
  | .br21 => "br21"
  | .tmf => "tmf"
  | .lwxMachine => "lwx_machine"

/-- Decode a stable machine-readable key back to its source identifier.

Unknown keys are rejected instead of being assigned a fallback source.  This
is the Lean-side inverse used when tooling crosses the JSON/Lean boundary. -/
def ofCode : String → Option SourceId
  | "aim_paper" => some .aimPaper
  | "browder" => some .browder
  | "mahowald_tangora" => some .mahowaldTangora
  | "bjm_theta5" => some .bjmTheta5
  | "bjm_induction" => some .bjmInduction
  | "may_thesis" => some .mayThesis
  | "may01" => some .may01
  | "hhr" => some .hhr
  | "xu" => some .xu
  | "iwx" => some .iwx
  | "pst" => some .pst
  | "bhs" => some .bhs
  | "bhs_mot" => some .bhsMot
  | "burklund_xu" => some .burklundXu
  | "moss" => some .moss
  | "br21" => some .br21
  | "tmf" => some .tmf
  | "lwx_machine" => some .lwxMachine
  | _ => none

/-- All source identifiers, in the canonical Lean catalogue order. -/
def all : List SourceId :=
  [ .aimPaper
  , .browder
  , .mahowaldTangora
  , .bjmTheta5
  , .bjmInduction
  , .mayThesis
  , .may01
  , .hhr
  , .xu
  , .iwx
  , .pst
  , .bhs
  , .bhsMot
  , .burklundXu
  , .moss
  , .br21
  , .tmf
  , .lwxMachine
  ]

/-- The catalogue has no duplicate source identifiers. -/
theorem all_nodup : all.Nodup := by
  decide

theorem all_length : all.length = 18 := by
  decide

/-- Every constructor is represented in `all`. -/
theorem mem_all (source : SourceId) : source ∈ all := by
  cases source <;> simp [all]

/-- The stable keys are pairwise distinct. -/
theorem codes_nodup : (all.map code).Nodup := by
  decide

/-- The canonical key distinguishes source identifiers. -/
theorem code_injective : Function.Injective code := by
  intro source₁ source₂ h
  cases source₁ <;> cases source₂ <;> simp [code] at h ⊢

/-- Every current source has a non-empty canonical key. -/
theorem code_ne_empty (source : SourceId) : code source ≠ "" := by
  cases source <;> simp [code]

/-- Encoding and then decoding preserves every admitted source identifier. -/
@[simp] theorem ofCode_code (source : SourceId) : ofCode (code source) = some source := by
  cases source <;> rfl

/-- A successfully decoded key re-encodes to exactly that key. -/
theorem code_of_ofCode {key : String} {source : SourceId}
    (h : ofCode key = some source) : code source = key := by
  simp only [ofCode] at h
  split at h <;> cases h <;> rfl

/-- Characterization of successful decoding by the canonical encoder. -/
theorem ofCode_eq_some_iff {key : String} {source : SourceId} :
    ofCode key = some source ↔ key = code source := by
  constructor
  · intro h
    exact (code_of_ofCode h).symm
  · rintro rfl
    exact ofCode_code source

/-- Unknown keys are exactly those absent from the closed code catalogue. -/
theorem ofCode_eq_none_iff (key : String) :
    ofCode key = none ↔ key ∉ all.map code := by
  constructor
  · intro hNone hMem
    obtain ⟨source, -, rfl⟩ := List.mem_map.mp hMem
    simp at hNone
  · intro hNot
    cases hDecode : ofCode key with
    | none => rfl
    | some source =>
        exfalso
        apply hNot
        apply List.mem_map.mpr
        exact ⟨source, mem_all source, code_of_ofCode hDecode⟩

@[simp] theorem code_aimPaper : code .aimPaper = "aim_paper" := rfl
@[simp] theorem code_browder : code .browder = "browder" := rfl
@[simp] theorem code_lwxMachine : code .lwxMachine = "lwx_machine" := rfl

end SourceId

/-- Broad provenance classes used by the source inventory. -/
inductive SourceKind
  | paper
  | literature
  | machine
  | governance
  deriving DecidableEq, Repr, Inhabited

namespace SourceKind

/-- Stable machine-readable key for a source kind. -/
def code : SourceKind → String
  | .paper => "paper"
  | .literature => "literature"
  | .machine => "machine"
  | .governance => "governance"

def ofCode : String → Option SourceKind
  | "paper" => some .paper
  | "literature" => some .literature
  | "machine" => some .machine
  | "governance" => some .governance
  | _ => none

/-- All source kinds. -/
def all : List SourceKind := [.paper, .literature, .machine, .governance]

theorem all_nodup : all.Nodup := by
  decide

theorem all_length : all.length = 4 := by
  decide

theorem mem_all (kind : SourceKind) : kind ∈ all := by
  cases kind <;> simp [all]

theorem codes_nodup : (all.map code).Nodup := by
  decide

theorem code_ne_empty (kind : SourceKind) : code kind ≠ "" := by
  cases kind <;> simp [code]

theorem code_injective : Function.Injective code := by
  intro kind₁ kind₂ h
  cases kind₁ <;> cases kind₂ <;> simp [code] at h ⊢

@[simp] theorem ofCode_code (kind : SourceKind) : ofCode (code kind) = some kind := by
  cases kind <;> rfl

theorem code_of_ofCode {key : String} {kind : SourceKind}
    (h : ofCode key = some kind) : code kind = key := by
  simp only [ofCode] at h
  split at h <;> cases h <;> rfl

theorem ofCode_eq_some_iff {key : String} {kind : SourceKind} :
    ofCode key = some kind ↔ key = code kind := by
  constructor
  · intro h
    exact (code_of_ofCode h).symm
  · rintro rfl
    exact ofCode_code kind

theorem ofCode_eq_none_iff (key : String) :
    ofCode key = none ↔ key ∉ all.map code := by
  constructor
  · intro hNone hMem
    obtain ⟨kind, -, rfl⟩ := List.mem_map.mp hMem
    simp at hNone
  · intro hNot
    cases hDecode : ofCode key with
    | none => rfl
    | some kind =>
        exfalso
        apply hNot
        apply List.mem_map.mpr
        exact ⟨kind, mem_all kind, code_of_ofCode hDecode⟩

end SourceKind

/-! ## Locations and artifacts -/

/-- A human-auditable location inside a source.

`description` should identify a theorem, page, equation, table row, or other
stable anchor.  `artifact` optionally names the local artifact containing the
location (for example `aimpaper/main.tex`).  The description remains explanatory
metadata; file existence and cryptographic hashes are checked by the external
inventory validator, not by Lean. -/
structure Locator where
  description : String
  artifact : Option String := none
  deriving DecidableEq, Repr, Inhabited

namespace Locator

/-- A locator is structurally usable when its description and optional
artifact path are non-empty.  This intentionally does not claim that the
location exists; that is a filesystem-level check. -/
def Valid (locator : Locator) : Prop :=
  locator.description ≠ "" ∧
    match locator.artifact with
    | none => True
    | some path => path ≠ ""

/-- Lower-case spelling convenient for callers that treat validity as a
predicate. -/
abbrev valid (locator : Locator) : Prop := Valid locator

theorem valid_of_description (description : String) (h : description ≠ "") :
    (⟨description, none⟩ : Locator).Valid := by
  exact ⟨h, by simp⟩

theorem valid_of_artifact (description path : String)
    (hDescription : description ≠ "") (hPath : path ≠ "") :
    (⟨description, some path⟩ : Locator).Valid := by
  exact ⟨hDescription, hPath⟩

theorem invalid_of_empty_description (locator : Locator)
    (h : locator.description = "") : ¬locator.Valid := by
  intro hValid
  exact hValid.1 h

end Locator

/-- A local or remote artifact used to substantiate an external claim.

The hash is represented as text because the inventory may use different hash
algorithms in future versions; `sha256` is the current convention.  This
record only checks that the path and hash are supplied.  It does not assert
that the hash matches a file. -/
structure ArtifactRef where
  path : String
  sha256 : String
  version : Option String := none
  deriving DecidableEq, Repr, Inhabited

namespace ArtifactRef

/-- Structural validity of an artifact reference. -/
def Valid (artifact : ArtifactRef) : Prop :=
  artifact.path ≠ "" ∧ artifact.sha256 ≠ ""

/-- Syntactic SHA-256 check used when an artifact is copied from the
filesystem ledger into a checked evidence record.  The accepted spelling is
the same lower-case hexadecimal convention as `source-inventory.json`.
Matching the digest to a file is still an external check. -/
def IsSha256 (hash : String) : Prop :=
  hash.length = 64 ∧
    hash.toList.all (fun char => "0123456789abcdef".toList.contains char) = true

/-- Stronger validity for the inventory's SHA-256 convention. -/
def ValidSha256 (artifact : ArtifactRef) : Prop :=
  artifact.path ≠ "" ∧ IsSha256 artifact.sha256

abbrev valid (artifact : ArtifactRef) : Prop := Valid artifact

theorem valid_of_nonempty (path sha256 : String)
    (hPath : path ≠ "") (hSha256 : sha256 ≠ "") :
    (⟨path, sha256, none⟩ : ArtifactRef).Valid := by
  exact ⟨hPath, hSha256⟩

theorem validSha256_of (path hash : String) (hPath : path ≠ "")
    (hHash : IsSha256 hash) :
    (⟨path, hash, none⟩ : ArtifactRef).ValidSha256 := by
  exact ⟨hPath, hHash⟩

theorem validSha256_implies_valid (artifact : ArtifactRef)
    (h : artifact.ValidSha256) : artifact.Valid := by
  exact ⟨h.1, by
    intro hEmpty
    have hLength := h.2.1
    simp [hEmpty] at hLength⟩

end ArtifactRef

/-! ## Source references and explicit external inputs -/

/-- A source together with a precise locator and an optional audit note. -/
structure SourceRef where
  source : SourceId
  locator : Locator
  note : Option String := none
  deriving DecidableEq, Repr, Inhabited

namespace SourceRef

/-- Structural validity of a source reference. -/
def Valid (ref : SourceRef) : Prop := ref.locator.Valid

abbrev valid (ref : SourceRef) : Prop := Valid ref

/-- Convenience constructor for the common case of a textual locator without
an artifact path. -/
def ofDescription (source : SourceId) (description : String)
    (note : Option String := none) : SourceRef :=
  { source := source, locator := { description := description }, note := note }

theorem valid_of_locator (source : SourceId) (locator : Locator)
    (h : locator.Valid) (note : Option String := none) :
    (⟨source, locator, note⟩ : SourceRef).Valid := h

end SourceRef

/-- A proposition imported as a named result from the literature or another
accepted external interface. -/
structure ExternalResult (P : Prop) where
  proof : P
  ref : SourceRef

namespace ExternalResult

/-- Reuse a result's proposition while changing it by an internal implication.
This is ordinary Lean transport, not a theorem-producing shortcut. -/
def map {P Q : Prop} (h : P → Q) (result : ExternalResult P) :
    ExternalResult Q :=
  { proof := h result.proof, ref := result.ref }

@[simp] theorem map_proof {P Q : Prop} (h : P → Q)
    (result : ExternalResult P) :
    (map h result).proof = h result.proof := rfl

/-- Mapping by the identity implication leaves an external result unchanged. -/
@[simp] theorem map_id {P : Prop} (result : ExternalResult P) :
    map (fun proof => proof) result = result := by
  cases result
  rfl

/-- Consecutive internal implications compose without changing provenance. -/
@[simp] theorem map_comp {P Q R : Prop} (g : Q → R) (f : P → Q)
    (result : ExternalResult P) :
    map g (map f result) = map (fun proof => g (f proof)) result := by
  rfl

/-- Structural validity of the attached source reference. -/
def Valid {P : Prop} (result : ExternalResult P) : Prop := result.ref.Valid

abbrev valid {P : Prop} (result : ExternalResult P) : Prop := Valid result

/-- Logical transport preserves structural provenance validity exactly. -/
@[simp] theorem map_valid {P Q : Prop} (h : P → Q)
    (result : ExternalResult P) :
    (map h result).Valid ↔ result.Valid := Iff.rfl

theorem valid_of_ref {P : Prop} (proof : P) (ref : SourceRef)
    (h : ref.Valid) : (⟨proof, ref⟩ : ExternalResult P).Valid := h

end ExternalResult

/-- Metadata common to computational and table evidence.

`ExternalEvidence` keeps `method` and `artifact` as direct fields for a small,
stable API; this structure is a reusable view for callers that want to pass
the metadata around independently. -/
structure EvidenceMetadata where
  method : String
  artifact : Option ArtifactRef := none
  deriving DecidableEq, Repr, Inhabited

namespace EvidenceMetadata

def Valid (metadata : EvidenceMetadata) : Prop :=
  metadata.method ≠ "" ∧
    match metadata.artifact with
    | none => True
    | some artifact => artifact.Valid

abbrev valid (metadata : EvidenceMetadata) : Prop := Valid metadata

end EvidenceMetadata

/-- A proposition supported by an explicit computational, tabular, or finite
calculation evidence record. -/
structure ExternalEvidence (P : Prop) where
  evidence : P
  ref : SourceRef
  method : String
  artifact : Option ArtifactRef := none

namespace ExternalEvidence

/-- View the direct metadata fields as a reusable metadata structure. -/
def metadata {P : Prop} (evidence : ExternalEvidence P) : EvidenceMetadata :=
  { method := evidence.method, artifact := evidence.artifact }

/-- Reuse evidence after an internal implication. -/
def map {P Q : Prop} (h : P → Q) (evidence : ExternalEvidence P) :
    ExternalEvidence Q :=
  { evidence := h evidence.evidence
    ref := evidence.ref
    method := evidence.method
    artifact := evidence.artifact }

@[simp] theorem map_evidence {P Q : Prop} (h : P → Q)
    (evidence : ExternalEvidence P) :
    (map h evidence).evidence = h evidence.evidence := rfl

@[simp] theorem map_method {P Q : Prop} (h : P → Q)
    (evidence : ExternalEvidence P) :
    (map h evidence).method = evidence.method := rfl

@[simp] theorem map_artifact {P Q : Prop} (h : P → Q)
    (evidence : ExternalEvidence P) :
    (map h evidence).artifact = evidence.artifact := rfl

@[simp] theorem map_metadata {P Q : Prop} (h : P → Q)
    (evidence : ExternalEvidence P) :
    (map h evidence).metadata = evidence.metadata := rfl

/-- Mapping by the identity implication leaves external evidence unchanged. -/
@[simp] theorem map_id {P : Prop} (evidence : ExternalEvidence P) :
    map (fun proof => proof) evidence = evidence := by
  cases evidence
  rfl

/-- Consecutive internal implications compose without changing evidence
metadata. -/
@[simp] theorem map_comp {P Q R : Prop} (g : Q → R) (f : P → Q)
    (evidence : ExternalEvidence P) :
    map g (map f evidence) = map (fun proof => g (f proof)) evidence := by
  rfl

/-- Structural validity of an evidence record.  This predicate does not inspect
artifact existence, contents, or hashes.  Canonical exported locator/file
checks are supplied separately by the inventory bridge and JSON checker. -/
def Valid {P : Prop} (evidence : ExternalEvidence P) : Prop :=
  evidence.ref.Valid ∧ evidence.metadata.Valid

abbrev valid {P : Prop} (evidence : ExternalEvidence P) : Prop := Valid evidence

/-- Logical transport preserves structural evidence validity exactly. -/
@[simp] theorem map_valid {P Q : Prop} (h : P → Q)
    (evidence : ExternalEvidence P) :
    (map h evidence).Valid ↔ evidence.Valid := Iff.rfl

theorem valid_of_ref_and_method {P : Prop} (proof : P) (ref : SourceRef)
    (method : String) (hRef : ref.Valid) (hMethod : method ≠ "") :
    (⟨proof, ref, method, none⟩ : ExternalEvidence P).Valid := by
  refine ⟨hRef, ?_⟩
  exact ⟨hMethod, trivial⟩

theorem valid_of_ref_method_artifact {P : Prop} (proof : P) (ref : SourceRef)
    (method : String) (artifact : ArtifactRef)
    (hRef : ref.Valid) (hMethod : method ≠ "") (hArtifact : artifact.Valid) :
    (⟨proof, ref, method, some artifact⟩ : ExternalEvidence P).Valid := by
  refine ⟨hRef, hMethod, ?_⟩
  exact hArtifact

end ExternalEvidence

/-! ## Small compile-time regression examples -/

private def regressionLocator : Locator :=
  { description := "AIM paper, theorem locator"
    artifact := some "aimpaper/main.tex" }

private def regressionRef : SourceRef :=
  { source := .aimPaper, locator := regressionLocator }

example : SourceId.all.Nodup := SourceId.all_nodup

example : (SourceId.all.map SourceId.code).Nodup := SourceId.codes_nodup

example : regressionLocator.Valid := by
  exact Locator.valid_of_artifact _ _ (by decide) (by decide)

example : regressionRef.Valid := by
  exact Locator.valid_of_artifact _ _ (by decide) (by decide)

example (P : Prop) (hP : P) :
    (ExternalResult.mk hP regressionRef).proof = hP := by
  rfl

example (P : Prop) (hP : P) :
    (ExternalEvidence.mk hP regressionRef "finite regression check" none).evidence = hP := by
  rfl

end KIP126.External
