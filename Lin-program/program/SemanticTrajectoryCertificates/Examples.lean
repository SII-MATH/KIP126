import SemanticTrajectoryCertificates.Event
import AggregateHighD2Conditional.Pipeline.Executable6651

namespace SemanticTrajectoryCertificates.Examples
open LinearCertificates PageTransitionCertificates
open AggregateTargetInventory.EventAudit
open AggregateHighD2Conditional.Pipeline.Executable6651

def event6651 := coordinateEvent finite finite_valid.1

theorem event6651_full_semantics : event6651.Holds :=
  event_transport finite finite_valid event6651

example : event6651.Holds := by lin_cert using ()

theorem event6651_all_source_pages : ∀ p ∈ event6651.sourceModels,
    p.page.StageHolds p.element :=
  all_stages_hold _ _ event6651_full_semantics.1

theorem event6651_all_target_pages : ∀ p ∈ event6651.targetModels,
    p.page.StageHolds p.element :=
  all_stages_hold _ _ event6651_full_semantics.2.1

theorem event6651_two_source_pages : event6651.sourceModels.length = 2 := rfl
theorem event6651_two_target_pages : event6651.targetModels.length = 2 := rfl

def batch : List BundleItem := [⟨finite, event6651⟩]
theorem batch_checked : checkBundle batch = true := by decide
theorem batch_semantics : ∀ i ∈ batch, i.data.Holds := bundle_sound batch batch_checked

example : ∀ i ∈ batch, i.data.Holds := by lin_cert using ()

/-- Corrupt a true earlier representative rather than only the final equation. -/
example : Executable.check { finite with sourceStages :=
    [{ finite.sourceStages[0] with representative := [false] }, finite.sourceStages[1]] } = false := by decide

example : Executable.checkPath finite.sourceStages [false] = false := by decide

example : Executable.diagnosePath "source" finite.sourceStages [false] =
    some "source[1]: final projection mismatch" := by decide

#print axioms event6651_full_semantics
#print axioms event6651_all_source_pages
#print axioms event6651_all_target_pages
#print axioms batch_semantics
end SemanticTrajectoryCertificates.Examples
