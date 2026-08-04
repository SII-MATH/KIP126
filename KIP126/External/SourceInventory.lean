import KIP126.External.Provenance

/-!
# Source inventory

This module is the typed Lean projection of `reference/source-inventory.json`.
The JSON file and `scripts/check_source_inventory.py` remain authoritative for
human-readable citation metadata, filesystem paths, acquisition state, and
cryptographic hashes.  Lean keeps the small finite index needed by source
references and proofs of catalogue completeness; it does not attempt to prove
that a downloaded file contains a particular mathematical statement.
-/

namespace KIP126.External

/-! ## Acquisition metadata -/

/-- Availability flags mirrored from one row of the machine-readable ledger. -/
structure SourceAvailability where
  metadata : Bool
  pdf : Bool
  text : Bool
  source : Bool
  deriving DecidableEq, Repr, Inhabited

namespace SourceAvailability

def none : SourceAvailability :=
  { metadata := false, pdf := false, text := false, source := false }

def all : SourceAvailability :=
  { metadata := true, pdf := true, text := true, source := true }

/-- The availability flags that identify a source of record. -/
def isSourceOfRecord (availability : SourceAvailability) : Prop :=
  availability = all

/-- A full-text row has both a PDF and an extracted text artifact.  Metadata
and source archives are independent optional capabilities. -/
def hasFullText (availability : SourceAvailability) : Prop :=
  availability.pdf = true ∧ availability.text = true

/-- A metadata-only row has metadata but no readable paper or source archive. -/
def isMetadataOnly (availability : SourceAvailability) : Prop :=
  availability.metadata = true ∧ availability.pdf = false ∧
    availability.text = false ∧ availability.source = false

def isEmpty (availability : SourceAvailability) : Prop :=
  availability = none

theorem none_isEmpty : isEmpty none := rfl

theorem all_isSourceOfRecord : isSourceOfRecord all := rfl

theorem all_hasFullText : hasFullText all := by
  simp [hasFullText, all]

end SourceAvailability

/-- Coarse status classes used by the inventory checker. -/
inductive SourceStatusClass
  | sourceOfRecord
  | fullText
  | metadataOnly
  | partialAvailability
  deriving DecidableEq, Repr, Inhabited

namespace SourceStatusClass

/-- Stable snake-case key shared with `source-inventory.json`. -/
def code : SourceStatusClass → String
  | .sourceOfRecord => "source_of_record"
  | .fullText => "full_text"
  | .metadataOnly => "metadata_only"
  | .partialAvailability => "partial"

/-- Decode the stable status key emitted by the inventory checker. -/
def ofCode : String → Option SourceStatusClass
  | "source_of_record" => some .sourceOfRecord
  | "full_text" => some .fullText
  | "metadata_only" => some .metadataOnly
  | "partial" => some .partialAvailability
  | _ => none

def all : List SourceStatusClass :=
  [.sourceOfRecord, .fullText, .metadataOnly, .partialAvailability]

theorem all_nodup : all.Nodup := by
  decide

theorem all_length : all.length = 4 := by
  decide

theorem mem_all (status : SourceStatusClass) : status ∈ all := by
  cases status <;> simp [all]

theorem codes_nodup : (all.map code).Nodup := by
  decide

theorem code_ne_empty (status : SourceStatusClass) : code status ≠ "" := by
  cases status <;> simp [code]

@[simp] theorem ofCode_code (status : SourceStatusClass) :
    ofCode (code status) = some status := by
  cases status <;> rfl

theorem code_of_ofCode {key : String} {status : SourceStatusClass}
    (h : ofCode key = some status) : code status = key := by
  simp only [ofCode] at h
  split at h <;> cases h <;> rfl

theorem ofCode_eq_some_iff {key : String} {status : SourceStatusClass} :
    ofCode key = some status ↔ key = code status := by
  constructor
  · intro h
    exact (code_of_ofCode h).symm
  · rintro rfl
    exact ofCode_code status

theorem ofCode_eq_none_iff (key : String) :
    ofCode key = none ↔ key ∉ all.map code := by
  constructor
  · intro hNone hMem
    obtain ⟨status, -, rfl⟩ := List.mem_map.mp hMem
    simp at hNone
  · intro hNot
    cases hDecode : ofCode key with
    | none => rfl
    | some status =>
        exfalso
        apply hNot
        apply List.mem_map.mpr
        exact ⟨status, mem_all status, code_of_ofCode hDecode⟩

theorem code_injective : Function.Injective code := by
  intro status₁ status₂ h
  cases status₁ <;> cases status₂ <;> simp [code] at h ⊢

/-- Canonical status classification used by the JSON checker. -/
def classify (source : SourceId) (availability : SourceAvailability) :
    SourceStatusClass :=
  if source == .aimPaper then .sourceOfRecord
  else if availability.pdf && availability.text then .fullText
  else if availability.metadata && (!availability.pdf) &&
      (!availability.text) && (!availability.source) then
    .metadataOnly
  else .partialAvailability

end SourceStatusClass

/-- The stable, typed portion of one source-inventory row.

Artifact paths and hashes intentionally stay in the external JSON ledger;
duplicating them here would create a second, silently drifting catalogue. -/
structure SourceEntry where
  source : SourceId
  kind : SourceKind
  citationKeys : List String
  directory : String
  statusFile : Option String
  statusClass : SourceStatusClass
  availability : SourceAvailability
  deriving DecidableEq, Repr, Inhabited

namespace SourceEntry

/-- Every source row has the kind prescribed by the closed source index. -/
def KindConsistent (entry : SourceEntry) : Prop :=
  match entry.source with
  | .aimPaper => entry.kind = .paper
  | .lwxMachine => entry.kind = .machine
  | _ => entry.kind = .literature

/-- The status class and availability flags agree at the typed boundary. -/
def StatusConsistent (entry : SourceEntry) : Prop :=
  entry.statusClass = SourceStatusClass.classify entry.source entry.availability ∧
    match entry.source with
    | .aimPaper => entry.availability = SourceAvailability.all
    | _ => True

/-- Non-ASCII line separators recognized by Python's `splitlines`. -/
def projectionLineSeparator (char : Char) : Bool :=
  decide (char.toNat = 0x85 ∨ char.toNat = 0x2028 ∨ char.toNat = 0x2029)

/-- Characters admitted by both the typed projection and its delimiter-based
filesystem exporter. -/
def schemaCharSafe (char : Char) : Bool :=
  decide (32 ≤ char.toNat ∧ char.toNat ≠ 127) &&
    !projectionLineSeparator char && char != '|'

/-- A field cannot inject either a row or column boundary into the exporter. -/
def projectionFieldSafe (value : String) : Bool :=
  value.toList.all schemaCharSafe

/-- Whitespace code points treated as blank by the JSON checker.  The
projection keeps ordinary spaces legal inside a path/key, but rejects values
that contain no non-whitespace character.  Control characters below `0x20`
are rejected separately by `schemaCharSafe`. -/
def schemaWhitespace (char : Char) : Bool :=
  decide (char = ' ' ∨ char.toNat = 0x85 ∨ char.toNat = 0xA0 ∨
    char.toNat = 0x1680 ∨ (0x2000 ≤ char.toNat ∧ char.toNat ≤ 0x200A) ∨
    char.toNat = 0x2028 ∨ char.toNat = 0x2029 ∨ char.toNat = 0x202F ∨
    char.toNat = 0x205F ∨ char.toNat = 0x3000)

/-- A citation key is nonblank and cannot corrupt the projection delimiters. -/
def citationKeySafe (key : String) : Bool :=
  key.toList.any (fun char => !schemaWhitespace char) &&
    key.toList.all (fun char => schemaCharSafe char && char != ',')

/-- Citation keys are schema-safe and pairwise distinct within a row. -/
def citationKeysNonempty (keys : List String) : Bool :=
  keys.all citationKeySafe

def CitationKeysValid (entry : SourceEntry) : Prop :=
  entry.citationKeys ≠ [] ∧
    citationKeysNonempty entry.citationKeys = true ∧
    entry.citationKeys.Nodup

/-- Structural checks for the Lean projection of an inventory row.

Filesystem existence, artifact hashes, and bibliographic prose remain checked
by the external validator.  The predicates here cover the invariants that can
be proved from the finite typed projection itself. -/
private def charsDirectoryPrefix : List Char → List Char → Bool
  | [], [] => false
  | [], '/' :: _ => true
  | [], _ :: _ => false
  | _ :: _, [] => false
  | head :: tail, otherHead :: otherTail =>
      if head == otherHead then charsDirectoryPrefix tail otherTail else false

def pathHasDirectoryPrefix (directory path : String) : Bool :=
  -- Keep the same boundary convention as the filesystem checker: a path is
  -- below `directory` only when the directory name is followed by `/`.
  charsDirectoryPrefix directory.toList path.toList

def pathComponentSafe (componentRev : List Char) : Bool :=
  componentRev != [] && componentRev != ['.'] && componentRev != ['.', '.']

def charsSafeRelativeAux (componentRev : List Char) : List Char → Bool
  | [] => pathComponentSafe componentRev
  | '\\' :: _ => false
  | '/' :: rest =>
      pathComponentSafe componentRev && charsSafeRelativeAux [] rest
  | char :: rest =>
      schemaCharSafe char && charsSafeRelativeAux (char :: componentRev) rest

/-- Syntactic checkout-relative path safety shared with claim locators.

This rejects absolute paths, backslashes, projection delimiters, ASCII control
characters, blank paths (using the JSON checker's Unicode whitespace policy),
empty components, and `.`/`..` components before the filesystem-facing checker
resolves a path. -/
def isSafeRelativePath (path : String) : Bool :=
  match path.toList with
  | [] => false
  | '/' :: _ => false
  | chars =>
      chars.any (fun char => !schemaWhitespace char) && charsSafeRelativeAux [] chars

def statusPathConsistent (entry : SourceEntry) : Bool :=
  match entry.statusFile with
  | none => true
  | some path =>
      isSafeRelativePath path && pathHasDirectoryPrefix entry.directory path

def Valid (entry : SourceEntry) : Prop :=
  CitationKeysValid entry ∧
    entry.directory ≠ "" ∧
    isSafeRelativePath entry.directory = true ∧
    KindConsistent entry ∧
    StatusConsistent entry ∧
    (entry.source = .aimPaper ↔ entry.statusFile = none) ∧
    (match entry.statusFile with
      | none => True
      | some path => path ≠ "") ∧
    statusPathConsistent entry = true

abbrev valid (entry : SourceEntry) : Prop := Valid entry

theorem valid_of_catalogue_row (entry : SourceEntry)
    (hKeys : entry.citationKeys ≠ []) (hDirectory : entry.directory ≠ "")
    (hDirectorySafe : isSafeRelativePath entry.directory = true)
    (hStatus : entry.source = .aimPaper ↔ entry.statusFile = none)
    (hPath : match entry.statusFile with
      | none => True
      | some path => path ≠ "")
    (hKind : entry.KindConsistent) (hStatusClass : entry.StatusConsistent)
    (hKeysValid : citationKeysNonempty entry.citationKeys = true ∧
      entry.citationKeys.Nodup)
    (hPathConsistent : entry.statusPathConsistent = true) :
    entry.Valid := by
  exact ⟨⟨hKeys, hKeysValid.1, hKeysValid.2⟩, hDirectory, hDirectorySafe, hKind,
    hStatusClass, hStatus, hPath, hPathConsistent⟩

end SourceEntry

/-! ## Complete finite catalogue -/

/-- A catalogue supplies exactly one typed row for every `SourceId`. -/
structure SourceInventory where
  lookup : SourceId → SourceEntry
  source_eq : ∀ source, (lookup source).source = source
  valid : ∀ source, (lookup source).Valid

namespace SourceInventory

theorem lookup_source (catalogue : SourceInventory) (source : SourceId) :
    (catalogue.lookup source).source = source := catalogue.source_eq source

theorem lookup_valid (catalogue : SourceInventory) (source : SourceId) :
    (catalogue.lookup source).Valid := catalogue.valid source

def entries (catalogue : SourceInventory) : List SourceEntry :=
  SourceId.all.map catalogue.lookup

theorem entries_sources (catalogue : SourceInventory) :
    (catalogue.entries.map SourceEntry.source) = SourceId.all := by
  simp [entries, SourceId.all, catalogue.lookup_source]

theorem entries_nodup (catalogue : SourceInventory) :
    (catalogue.entries.map SourceEntry.source).Nodup := by
  rw [catalogue.entries_sources]
  exact SourceId.all_nodup

theorem lookup_mem_entries (catalogue : SourceInventory) (source : SourceId) :
    catalogue.lookup source ∈ catalogue.entries := by
  apply List.mem_map.mpr
  exact ⟨source, SourceId.mem_all source, rfl⟩

/-- Directory names in catalogue order. -/
def directories (catalogue : SourceInventory) : List String :=
  catalogue.entries.map SourceEntry.directory

/-- Status-file paths in catalogue order, omitting the source-of-record row. -/
def statusFiles (catalogue : SourceInventory) : List String :=
  catalogue.entries.filterMap SourceEntry.statusFile

/-- All citation keys, flattened across the catalogue. -/
def citationKeys (catalogue : SourceInventory) : List String :=
  catalogue.entries.flatMap SourceEntry.citationKeys

/-- Global catalogue invariants which are not expressible row-by-row. -/
def GloballyValid (catalogue : SourceInventory) : Prop :=
  catalogue.directories.Nodup ∧
    catalogue.statusFiles.Nodup ∧
    catalogue.citationKeys.Nodup

private def row (source : SourceId) (kind : SourceKind)
    (citationKeys : List String) (directory : String)
    (statusFile : Option String) (statusClass : SourceStatusClass)
    (availability : SourceAvailability) : SourceEntry :=
  { source, kind, citationKeys, directory, statusFile, statusClass, availability }

private def lookupRow : SourceId → SourceEntry
  | .aimPaper =>
      row .aimPaper .paper ["LWX126"] "aimpaper" none
        .sourceOfRecord SourceAvailability.all
  | .browder =>
      row .browder .literature ["Browder"] "reference/Browder"
        (some "reference/Browder/source-status.json") .fullText
        { metadata := true, pdf := true, text := true, source := false }
  | .mahowaldTangora =>
      row .mahowaldTangora .literature ["MahowaldTangora"]
        "reference/MahowaldTangora"
        (some "reference/MahowaldTangora/source-status.json") .metadataOnly
        { metadata := true, pdf := false, text := false, source := false }
  | .bjmTheta5 =>
      row .bjmTheta5 .literature ["BJMtheta5"] "reference/BJMtheta5"
        (some "reference/BJMtheta5/source-status.json") .metadataOnly
        { metadata := true, pdf := false, text := false, source := false }
  | .bjmInduction =>
      row .bjmInduction .literature ["BJMinduction", "BarrattJonesMahowald"]
        "reference/BJMinduction"
        (some "reference/BJMinduction/source-status.json") .metadataOnly
        { metadata := true, pdf := false, text := false, source := false }
  | .mayThesis =>
      row .mayThesis .literature ["Maythesis"] "reference/Maythesis"
        (some "reference/Maythesis/source-status.json") .metadataOnly
        { metadata := true, pdf := false, text := false, source := false }
  | .may01 =>
      row .may01 .literature ["May01"] "reference/May01"
        (some "reference/May01/source-status.json") .metadataOnly
        { metadata := true, pdf := false, text := false, source := false }
  | .hhr =>
      row .hhr .literature ["HHR"] "reference/HHR"
        (some "reference/HHR/source-status.json") .fullText SourceAvailability.all
  | .xu =>
      row .xu .literature ["Xu"] "reference/Xu"
        (some "reference/Xu/source-status.json") .fullText SourceAvailability.all
  | .iwx =>
      row .iwx .literature ["IWX"] "reference/IWX"
        (some "reference/IWX/source-status.json") .fullText SourceAvailability.all
  | .pst =>
      row .pst .literature ["Pst"] "reference/Pst"
        (some "reference/Pst/source-status.json") .fullText SourceAvailability.all
  | .bhs =>
      row .bhs .literature ["BHS"] "reference/BHS"
        (some "reference/BHS/source-status.json") .fullText SourceAvailability.all
  | .bhsMot =>
      row .bhsMot .literature ["BHSmot"] "reference/BHSmot"
        (some "reference/BHSmot/source-status.json") .fullText
        { metadata := false, pdf := true, text := true, source := true }
  | .burklundXu =>
      row .burklundXu .literature ["BurklundXu"] "reference/BurklundXu"
        (some "reference/BurklundXu/source-status.json") .fullText SourceAvailability.all
  | .moss =>
      row .moss .literature ["Moss"] "reference/Moss"
        (some "reference/Moss/source-status.json") .metadataOnly
        { metadata := true, pdf := false, text := false, source := false }
  | .br21 =>
      row .br21 .literature ["BR21"] "reference/BR21"
        (some "reference/BR21/source-status.json") .metadataOnly
        { metadata := true, pdf := false, text := false, source := false }
  | .tmf =>
      row .tmf .literature ["tmf"] "reference/tmf"
        (some "reference/tmf/source-status.json") .fullText SourceAvailability.all
  | .lwxMachine =>
      row .lwxMachine .machine ["LWXMachine", "LWXZenodo", "LinProgram", "LinPlot"]
        "reference/LWXMachine"
        (some "reference/LWXMachine/source-status.json") .fullText
        { metadata := false, pdf := true, text := true, source := true }

/-- The checked-in Lean projection of the source inventory. -/
def inventory : SourceInventory :=
  { lookup := lookupRow
    source_eq := by
      intro source
      cases source <;> rfl
    valid := by
      intro source
      cases source <;>
        dsimp [lookupRow, row, SourceEntry.Valid, SourceEntry.CitationKeysValid,
          SourceEntry.citationKeysNonempty, SourceEntry.citationKeySafe,
          SourceEntry.schemaCharSafe, SourceEntry.projectionLineSeparator,
          SourceEntry.projectionFieldSafe, SourceEntry.schemaWhitespace,
          SourceEntry.KindConsistent,
          SourceEntry.StatusConsistent, SourceEntry.statusPathConsistent,
          SourceEntry.isSafeRelativePath, SourceEntry.charsSafeRelativeAux,
          SourceEntry.pathComponentSafe,
          SourceStatusClass.classify, SourceAvailability.isSourceOfRecord,
          SourceAvailability.hasFullText,
          SourceAvailability.isMetadataOnly, SourceAvailability.all] <;>
        decide }

@[simp] theorem inventory_lookup (source : SourceId) :
    (inventory.lookup source).source = source := inventory.lookup_source source

theorem inventory_complete :
    (inventory.entries.map SourceEntry.source) = SourceId.all :=
  inventory.entries_sources

theorem inventory_complete_nodup :
    (inventory.entries.map SourceEntry.source).Nodup :=
  inventory.entries_nodup

theorem inventory_count : inventory.entries.length = 18 := by
  simp [entries, SourceId.all_length]

theorem inventory_valid (source : SourceId) :
    (inventory.lookup source).Valid := inventory.lookup_valid source

theorem inventory_globally_valid : GloballyValid inventory := by
  dsimp [GloballyValid, directories, statusFiles, citationKeys, entries,
    inventory, lookupRow, row, SourceId.all]
  decide

/-- Resolve a reference against an explicitly supplied catalogue. -/
def resolveWith (catalogue : SourceInventory) (ref : SourceRef) : SourceEntry :=
  catalogue.lookup ref.source

/-- Resolve the canonical project catalogue row named by a provenance-bearing
source reference. -/
def resolve (ref : SourceRef) : SourceEntry :=
  resolveWith inventory ref

/-- Resolve a stable source key against an explicitly supplied catalogue. -/
def resolveCodeWith (catalogue : SourceInventory) (key : String) : Option SourceEntry :=
  (SourceId.ofCode key).map catalogue.lookup

/-- Resolve a stable JSON source key in the canonical project catalogue
without introducing a fallback row. -/
def resolveCode (key : String) : Option SourceEntry :=
  resolveCodeWith inventory key

/-- Check the part of a locator that Lean can validate without touching the
filesystem: an optional checkout-relative artifact path must be safe and live
below the resolved source directory. -/
def locatorPathValidWith (catalogue : SourceInventory) (ref : SourceRef) : Prop :=
  match ref.locator.artifact with
  | none => True
  | some path => path ≠ "" ∧
      SourceEntry.isSafeRelativePath path = true ∧
      SourceEntry.pathHasDirectoryPrefix (catalogue.lookup ref.source).directory path = true

/-- The canonical *syntactic* source-relative locator check.  File existence
and digest matching remain responsibilities of the external inventory
validator. -/
def locatorPathValid (ref : SourceRef) : Prop :=
  locatorPathValidWith inventory ref

/-- Check an evidence artifact path against an explicitly supplied catalogue. -/
def artifactPathValidWith (catalogue : SourceInventory) (source : SourceId)
    (artifact : ArtifactRef) : Prop :=
  artifact.path ≠ "" ∧
    SourceEntry.isSafeRelativePath artifact.path = true ∧
    SourceEntry.pathHasDirectoryPrefix (catalogue.lookup source).directory artifact.path = true

/-- The canonical *syntactic* source-relative evidence-artifact check. -/
def artifactPathValid (source : SourceId) (artifact : ArtifactRef) : Prop :=
  artifactPathValidWith inventory source artifact

theorem resolve_source (ref : SourceRef) :
    (resolve ref).source = ref.source := inventory.lookup_source ref.source

theorem resolveWith_source (catalogue : SourceInventory) (ref : SourceRef) :
    (resolveWith catalogue ref).source = ref.source := catalogue.lookup_source ref.source

theorem resolve_valid (ref : SourceRef) :
    (resolve ref).Valid := inventory.lookup_valid ref.source

theorem resolveWith_valid (catalogue : SourceInventory) (ref : SourceRef) :
    (resolveWith catalogue ref).Valid := catalogue.lookup_valid ref.source

@[simp] theorem resolveCode_code (source : SourceId) :
    resolveCode (SourceId.code source) = some (inventory.lookup source) := by
  simp [resolveCode, resolveCodeWith]

theorem locatorPathValid_of_none (ref : SourceRef)
    (h : ref.locator.artifact = none) : locatorPathValid ref := by
  simp [locatorPathValid, locatorPathValidWith, h]

theorem locatorPathValidWith_of_none (catalogue : SourceInventory) (ref : SourceRef)
    (h : ref.locator.artifact = none) : locatorPathValidWith catalogue ref := by
  simp [locatorPathValidWith, h]

/-! ## JSON projection and drift boundary -/

/-- The fields that are intentionally shared verbatim with the JSON ledger.

Titles, publication years, DOI prose, and individual artifact hashes stay in
the filesystem-facing checker.  This record is the compact synchronization
surface consumed by tooling that compares JSON with Lean. -/
structure SourceProjection where
  id : SourceId
  directory : String
  kind : SourceKind
  citationKeys : List String
  statusFile : Option String
  statusClass : SourceStatusClass
  availability : SourceAvailability
  deriving DecidableEq, Repr, Inhabited

namespace SourceProjection

def ofEntry (entry : SourceEntry) : SourceProjection :=
  { id := entry.source
    directory := entry.directory
    kind := entry.kind
    citationKeys := entry.citationKeys
    statusFile := entry.statusFile
    statusClass := entry.statusClass
    availability := entry.availability }

def boolCode (value : Bool) : String :=
  if value then "1" else "0"

/-- A stable, delimiter-separated representation for the JSON/Lean drift
checker.  Citation keys cannot contain `|` or `,` under the inventory schema. -/
def encode (projection : SourceProjection) : String :=
  String.intercalate "|"
    [ SourceId.code projection.id
    , projection.directory
    , SourceKind.code projection.kind
    , String.intercalate "," projection.citationKeys
    , projection.statusFile.getD ""
    , SourceStatusClass.code projection.statusClass
    , boolCode projection.availability.metadata
    , boolCode projection.availability.pdf
    , boolCode projection.availability.text
    , boolCode projection.availability.source ]

end SourceProjection

/-- The ordered projection exported to the checker. -/
def projection : List SourceProjection :=
  inventory.entries.map SourceProjection.ofEntry

def projectionManifest : List String :=
  projection.map SourceProjection.encode

theorem projection_ids : projection.map SourceProjection.id = SourceId.all := by
  change inventory.entries.map SourceEntry.source = SourceId.all
  exact inventory_complete

theorem projection_nodup : (projection.map SourceProjection.id).Nodup := by
  rw [projection_ids]
  exact SourceId.all_nodup

theorem projection_complete : projection.length = SourceId.all.length := by
  simp [projection, entries]

end SourceInventory

/-! ## Provenance-wrapper bridge -/

namespace SourceRef

/-- Structural validity plus the canonical source-relative locator check.

`Valid` remains a filesystem-independent predicate for reusable core code;
`InventoryValid` is the stronger boundary used when a reference is resolved
against this checkout's source catalogue. -/
def InventoryValid (ref : SourceRef) : Prop :=
  ref.Valid ∧ SourceInventory.locatorPathValid ref

abbrev inventoryValid (ref : SourceRef) : Prop := InventoryValid ref

theorem inventoryValid_implies_valid (ref : SourceRef)
    (h : ref.InventoryValid) : ref.Valid := h.1

theorem inventoryValid_of_none (ref : SourceRef)
    (h : ref.locator.artifact = none) (hValid : ref.Valid) :
    ref.InventoryValid := by
  exact ⟨hValid, SourceInventory.locatorPathValid_of_none ref h⟩

end SourceRef

namespace ExternalResult

/-- An external result whose source reference passes the canonical inventory
bridge.  This does not turn the result into an unconditional theorem. -/
def InventoryValid {P : Prop} (result : ExternalResult P) : Prop :=
  result.Valid ∧ SourceInventory.locatorPathValid result.ref

abbrev inventoryValid {P : Prop} (result : ExternalResult P) : Prop :=
  InventoryValid result

theorem inventoryValid_implies_valid {P : Prop} (result : ExternalResult P)
    (h : result.InventoryValid) : result.Valid := h.1

@[simp] theorem map_inventoryValid {P Q : Prop} (h : P → Q)
    (result : ExternalResult P) :
    (map h result).InventoryValid ↔ result.InventoryValid := Iff.rfl

def sourceEntry {P : Prop} (result : ExternalResult P) : SourceEntry :=
  SourceInventory.resolve result.ref

theorem sourceEntry_source {P : Prop} (result : ExternalResult P) :
    result.sourceEntry.source = result.ref.source :=
  SourceInventory.resolve_source result.ref

theorem sourceEntry_valid {P : Prop} (result : ExternalResult P) :
    result.sourceEntry.Valid :=
  SourceInventory.resolve_valid result.ref

end ExternalResult

namespace ExternalEvidence

/-- An evidence record whose source locator and optional artifact path pass the
canonical inventory bridge.  The optional artifact must use a lower-case
64-hex SHA-256 spelling and a syntactic source-relative path.  The JSON
checker validates canonical claim-locator membership, file existence, and the
checked-in file's digest; an arbitrary wrapper's digest text is not compared
automatically. -/
def InventoryValid {P : Prop} (evidence : ExternalEvidence P) : Prop :=
  evidence.Valid ∧ SourceInventory.locatorPathValid evidence.ref ∧
    match evidence.artifact with
    | none => True
    | some artifact =>
        artifact.ValidSha256 ∧
          SourceInventory.artifactPathValid evidence.ref.source artifact

abbrev inventoryValid {P : Prop} (evidence : ExternalEvidence P) : Prop :=
  InventoryValid evidence

theorem inventoryValid_implies_valid {P : Prop} (evidence : ExternalEvidence P)
    (h : evidence.InventoryValid) : evidence.Valid := h.1

@[simp] theorem map_inventoryValid {P Q : Prop} (h : P → Q)
    (evidence : ExternalEvidence P) :
    (map h evidence).InventoryValid ↔ evidence.InventoryValid := Iff.rfl

def sourceEntry {P : Prop} (evidence : ExternalEvidence P) : SourceEntry :=
  SourceInventory.resolve evidence.ref

theorem sourceEntry_source {P : Prop} (evidence : ExternalEvidence P) :
    evidence.sourceEntry.source = evidence.ref.source :=
  SourceInventory.resolve_source evidence.ref

theorem sourceEntry_valid {P : Prop} (evidence : ExternalEvidence P) :
    evidence.sourceEntry.Valid :=
  SourceInventory.resolve_valid evidence.ref

end ExternalEvidence

/-! ## Compile-time regression checks -/

example : SourceInventory.inventory.entries.length = SourceId.all.length := by
  simp [SourceInventory.entries]

example :
    (SourceInventory.inventory.entries.map SourceEntry.source).Nodup :=
  SourceInventory.inventory_complete_nodup

example : (SourceInventory.inventory.lookup .lwxMachine).kind = .machine := by
  rfl

example :
    SourceEntry.pathHasDirectoryPrefix "reference/Browder"
      "reference/Browder/source-status.json" = true := by
  decide

example :
    SourceEntry.pathHasDirectoryPrefix "reference/Browder"
      "reference/BrowderArchive/source-status.json" = false := by
  decide

example (ref : SourceRef) :
    (SourceInventory.resolve ref).source = ref.source :=
  SourceInventory.resolve_source ref

end KIP126.External
