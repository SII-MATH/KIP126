import IndexedFamilyCertificates.Coherence
import IndexedFamilyCertificates.Results

namespace IndexedD5Certificates
open IndexedFamilyCertificates

def Extends (before after : Family) : Prop :=
  ∀ key wire, lookup before key = some wire → lookup after key = some wire

theorem append_extends (before extra : Family) : Extends before (before ++ extra) := by
  intro key wire found
  unfold lookup at found ⊢
  rw [List.find?_append]
  cases h : before.find? (fun entry => entry.key == key) with
  | none => simp [h] at found
  | some entry => simpa [h] using found

theorem valid_extension {before after : Family} (extension : Extends before after)
    (unique : UniqueKeys after) {object : String} {wire : AggregateTargetInventory.EventAudit.Indexed.Wire}
    (valid : IndexedFamilyCertificates.Valid before object wire) :
    IndexedFamilyCertificates.Valid after object wire := by
  refine ⟨valid.1, valid.2.1, unique, extension _ _ valid.2.2.2.1, ?_, ?_⟩
  · intro i
    exact extension _ _ (valid.2.2.2.2.1 i)
  · intro i
    exact extension _ _ (valid.2.2.2.2.2 i)

theorem bound_extension {before after : Family} (extension : Extends before after)
    (unique : UniqueKeys after) {wire : BoundWire} (valid : wire.Valid before) :
    wire.Valid after := ⟨valid.1, valid_extension extension unique valid.2⟩

theorem coherent_append {before extra : Family} (old : Coherent before)
    (new : Coherent extra) (unique : UniqueKeys (before ++ extra))
    (forward : ∀ a ∈ before, ∀ b ∈ extra, PairCompatible a b)
    (backward : ∀ a ∈ extra, ∀ b ∈ before, PairCompatible a b) :
    Coherent (before ++ extra) := by
  refine ⟨unique, ?_, ?_⟩
  · intro entry member
    rcases List.mem_append.mp member with h | h
    · exact old.entries entry h
    · exact new.entries entry h
  · intro a ha b hb
    rcases List.mem_append.mp ha with ha | ha <;>
      rcases List.mem_append.mp hb with hb | hb
    · exact old.pairs a ha b hb
    · exact forward a ha b hb
    · exact backward a ha b hb
    · exact new.pairs a ha b hb

#print axioms bound_extension
#print axioms coherent_append
end IndexedD5Certificates
