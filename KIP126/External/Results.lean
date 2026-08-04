import KIP126.External.Provenance

/-!
# External results

The result record itself is defined in `Provenance` so that all external
inputs share one source-reference type.  This module is the literature-result
import boundary and contains only observation/transport helpers; none of them
creates a proof of a proposition.
-/

namespace KIP126.External

namespace ExternalResult

/-- The stable catalogue key attached to a literature result. -/
def sourceId {P : Prop} (result : ExternalResult P) : SourceId :=
  result.ref.source

@[simp] theorem sourceId_mk {P : Prop} (proof : P) (ref : SourceRef) :
    sourceId (⟨proof, ref⟩ : ExternalResult P) = ref.source := rfl

@[simp] theorem map_ref {P Q : Prop} (h : P → Q) (result : ExternalResult P) :
    (map h result).ref = result.ref := rfl

@[simp] theorem map_sourceId {P Q : Prop} (h : P → Q) (result : ExternalResult P) :
    sourceId (map h result) = sourceId result := rfl

end ExternalResult

end KIP126.External
