import KIP126.External.Provenance
import KIP126.External.SourceInventory

/-!
# External evidence

Computational, tabular, and finite evidence uses the same provenance kernel as
literature results.  The helpers here make the source key observable and give
callers an explicit way to attach an artifact after constructing an evidence
record.  Lean checks only structural metadata, safe source-relative paths, and
digest spelling; canonical artifact membership, file existence, and the
checked-in file's digest remain the responsibility of the source-inventory
checker.  An arbitrary wrapper digest is not compared automatically.
-/

namespace KIP126.External

namespace ExternalEvidence

/-- The stable catalogue key attached to an evidence record. -/
def sourceId {P : Prop} (evidence : ExternalEvidence P) : SourceId :=
  evidence.ref.source

/-- Attach an artifact without changing the proposition, source, or method.
This is metadata construction, not a proof-producing operation. -/
def withArtifact {P : Prop} (evidence : ExternalEvidence P)
    (artifact : ArtifactRef) : ExternalEvidence P :=
  { evidence with artifact := some artifact }

@[simp] theorem map_ref {P Q : Prop} (h : P → Q)
    (evidence : ExternalEvidence P) :
    (map h evidence).ref = evidence.ref := rfl

@[simp] theorem map_sourceId {P Q : Prop} (h : P → Q)
    (evidence : ExternalEvidence P) :
    sourceId (map h evidence) = sourceId evidence := rfl

@[simp] theorem withArtifact_evidence {P : Prop} (evidence : ExternalEvidence P)
    (artifact : ArtifactRef) :
    (withArtifact evidence artifact).evidence = evidence.evidence := rfl

@[simp] theorem withArtifact_ref {P : Prop} (evidence : ExternalEvidence P)
    (artifact : ArtifactRef) :
    (withArtifact evidence artifact).ref = evidence.ref := rfl

@[simp] theorem withArtifact_method {P : Prop} (evidence : ExternalEvidence P)
    (artifact : ArtifactRef) :
    (withArtifact evidence artifact).method = evidence.method := rfl

@[simp] theorem withArtifact_artifact {P : Prop} (evidence : ExternalEvidence P)
    (artifact : ArtifactRef) :
    (withArtifact evidence artifact).artifact = some artifact := rfl

@[simp] theorem withArtifact_sourceId {P : Prop} (evidence : ExternalEvidence P)
    (artifact : ArtifactRef) :
    sourceId (withArtifact evidence artifact) = sourceId evidence := rfl

/-- Exact validity criterion after replacing an evidence artifact. -/
theorem withArtifact_valid_iff {P : Prop} (evidence : ExternalEvidence P)
    (artifact : ArtifactRef) :
    (withArtifact evidence artifact).Valid ↔
      evidence.ref.Valid ∧ evidence.method ≠ "" ∧ artifact.Valid := by
  rfl

/-- Attaching a structurally valid artifact preserves validity of an already
valid evidence record. -/
theorem withArtifact_valid {P : Prop} (evidence : ExternalEvidence P)
    (artifact : ArtifactRef) (hEvidence : evidence.Valid)
    (hArtifact : artifact.Valid) :
    (withArtifact evidence artifact).Valid := by
  exact ⟨hEvidence.1, hEvidence.2.1, hArtifact⟩

/-- Attach an artifact while preserving the stronger checkout-facing
inventory certificate.  The caller must provide the syntactic SHA-256 and
source-relative path checks; canonical membership, filesystem existence, and
the checked-in file's digest remain the external inventory checker's
responsibility. -/
theorem withArtifact_inventoryValid {P : Prop} (evidence : ExternalEvidence P)
    (artifact : ArtifactRef) (hEvidence : evidence.InventoryValid)
    (hHash : artifact.ValidSha256)
    (hPath : SourceInventory.artifactPathValid evidence.ref.source artifact) :
    (withArtifact evidence artifact).InventoryValid := by
  rcases hEvidence with ⟨hValid, hLocator, _⟩
  refine ⟨?_, hLocator, ?_⟩
  · exact ⟨hValid.1,
      ⟨hValid.2.1, ArtifactRef.validSha256_implies_valid artifact hHash⟩⟩
  · exact ⟨hHash, hPath⟩

end ExternalEvidence

end KIP126.External
