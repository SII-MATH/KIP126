import SemanticTrajectoryCertificates.Indexed
import IndexedHighD2Certificates.GeneratedBatch9

set_option maxRecDepth 8192
set_option maxHeartbeats 8000000

namespace SemanticTrajectoryCertificates.IndexedExample
open AggregateTargetInventory.EventAudit IndexedFamilyCertificates
open IndexedHighD2Certificates

def interpreted6651 : IndexedEventData event6651 :=
  ⟨coordinateEvent event6651.event.finite event6651_valid.2.1.2.1⟩

theorem event6651_all_pages : interpreted6651.Holds family :=
  bound_event_transport family event6651 event6651_valid interpreted6651

example : interpreted6651.Holds family := by lin_cert using ()

theorem all_source_degrees : ∀ q, 2 ≤ q → q < 4 →
    ∃ i : Fin event6651.event.finite.sourceStages.length,
      lookup family ⟨"S0", q, 52, 177⟩ = some event6651.event.finite.sourceStages[i.val].wire := by
  intro q hq hr
  obtain ⟨i, j, _, _, _, h⟩ := event6651_all_pages.source_coverage.every_page q hq hr
  exact ⟨i, h⟩

theorem all_target_degrees : ∀ q, 2 ≤ q → q < 4 →
    ∃ i : Fin event6651.event.finite.targetStages.length,
      lookup family ⟨"S0", q, 56, 180⟩ = some event6651.event.finite.targetStages[i.val].wire := by
  intro q hq hr
  obtain ⟨i, j, _, _, _, h⟩ := event6651_all_pages.target_coverage.every_page q hq hr
  exact ⟨i, h⟩

theorem semantic_source_stage_count : interpreted6651.semantics.sourceModels.length = 2 :=
  event6651_all_pages.source_model_count
theorem semantic_target_stage_count : interpreted6651.semantics.targetModels.length = 2 :=
  event6651_all_pages.target_model_count
theorem full_semantic_event : interpreted6651.semantics.Holds := event6651_all_pages.semantics

example : Indexed.check { event6651.event with eventPage := 5 } = false := by decide
example : Indexed.check { event6651.event with sourceLabels := [] } = false := by decide

#print axioms event6651_all_pages
#print axioms all_source_degrees
#print axioms all_target_degrees
end SemanticTrajectoryCertificates.IndexedExample
