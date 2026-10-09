import SemanticTrajectoryCertificates.Event
import IndexedFamilyCertificates.Results

namespace SemanticTrajectoryCertificates
open LinearCertificates PageTransitionCertificates
open AggregateTargetInventory.EventAudit
open IndexedFamilyCertificates

/-- Exact finite coverage of pages 2 through r-1, with full matrix lookup. -/
structure PageCoverage (family : Family) (object : String) (center : Indexed.Degree)
    (r : Nat) (stages : List Stage) (labels : List Indexed.StageLabel) : Prop where
  stage_count : stages.length = r - 2
  label_count : labels.length = r - 2
  labels_valid : Indexed.LabelsValid center labels
  stages_bound : StageBinding family object center stages
  every_page : ∀ q, 2 ≤ q → q < r →
    ∃ i : Fin stages.length, ∃ j : Fin labels.length,
      i.val = q - 2 ∧ j.val = i.val ∧
      Indexed.LabelValid center q labels[j.val] ∧
      lookup family (keyAt object q center) = some stages[i.val].wire

theorem page_coverage (family : Family) (object : String) (center : Indexed.Degree)
    (r : Nat) (stages : List Stage) (labels : List Indexed.StageLabel)
    (count : labels.length + 2 = r) (same : stages.length = labels.length)
    (labelled : Indexed.LabelsValid center labels)
    (bound : StageBinding family object center stages) :
    PageCoverage family object center r stages labels := by
  refine ⟨by omega, by omega, labelled, bound, ?_⟩
  intro q hq hr
  have hi : q - 2 < stages.length := by omega
  have hj : q - 2 < labels.length := by omega
  refine ⟨⟨q - 2, hi⟩, ⟨q - 2, hj⟩, rfl, rfl, ?_, ?_⟩
  · have h := labelled ⟨q - 2, hj⟩
    have he : q - 2 + 2 = q := by omega
    simpa only [he] using h
  · have h := bound ⟨q - 2, hi⟩
    have he : q - 2 + 2 = q := by omega
    simpa only [he] using h

structure IndexedEventData (w : BoundWire) where
  semantics : EventData w.event.finite

structure IndexedEventData.Holds (family : Family) {w : BoundWire}
    (d : IndexedEventData w) : Prop where
  checked : w.Valid family
  source_coverage : PageCoverage family w.object w.event.sourceDegree w.event.eventPage
    w.event.finite.sourceStages w.event.sourceLabels
  target_coverage : PageCoverage family w.object w.event.targetDegree w.event.eventPage
    w.event.finite.targetStages w.event.targetLabels
  source_model_count : d.semantics.sourceModels.length = w.event.eventPage - 2
  target_model_count : d.semantics.targetModels.length = w.event.eventPage - 2
  semantics : d.semantics.Holds

theorem bound_event_transport (family : Family) (w : BoundWire) (checked : w.Valid family)
    (d : IndexedEventData w) : d.Holds family := by
  have shape := checked.2.1.1
  obtain ⟨_, _, _, _, scount, tcount, ssame, tsame, slabel, tlabel⟩ := shape
  have source := page_coverage family w.object w.event.sourceDegree w.event.eventPage
    w.event.finite.sourceStages w.event.sourceLabels scount ssame slabel checked.2.2.2.2.2.1
  have target := page_coverage family w.object w.event.targetDegree w.event.eventPage
    w.event.finite.targetStages w.event.targetLabels tcount tsame tlabel checked.2.2.2.2.2.2
  refine ⟨checked, source, target, ?_, ?_, event_transport _ checked.2.1.2 d.semantics⟩
  · have h := congrArg List.length d.semantics.source_stages
    simp only [List.length_map] at h
    exact h.trans source.stage_count
  · have h := congrArg List.length d.semantics.target_stages
    simp only [List.length_map] at h
    exact h.trans target.stage_count

theorem bound_event_from_check (family : Family) (w : BoundWire)
    (checked : checkBound family w = true) (d : IndexedEventData w) : d.Holds family :=
  bound_event_transport family w (checkBound_sound family w checked) d

instance (family : Family) (w : BoundWire) (d : IndexedEventData w) :
    LinProgramCertificates.CertificateVerifier (d.Holds family) where
  Cert := Unit
  check := fun _ => checkBound family w
  sound := fun _ checked => bound_event_from_check family w checked d

structure IndexedBundleItem where
  wire : BoundWire
  data : IndexedEventData wire

def checkIndexedBundle (family : Family) (items : List IndexedBundleItem) : Bool :=
  items.all (fun i => checkBound family i.wire)

theorem indexed_bundle_sound (family : Family) (items : List IndexedBundleItem)
    (checked : checkIndexedBundle family items = true) :
    ∀ i ∈ items, i.data.Holds family := by
  intro i hi
  exact bound_event_from_check family i.wire ((List.all_eq_true.mp checked) i hi) i.data

#print axioms page_coverage
#print axioms bound_event_transport
#print axioms indexed_bundle_sound
end SemanticTrajectoryCertificates
