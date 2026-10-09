import FilteredExtensionPageBridge.Import
import FilteredExtensionCertificates.Direct
import FilteredExtensionCertificates.Examples
import FilteredCrossingCertificates.Examples
import FilteredExtensionSquare.Examples

namespace FilteredExtensionPageBridge.Examples
open FilteredRepresentativeCrossing FilteredMapExtension FilteredMapGradedComparison
open FilteredTwoTermSequence FilteredExtensionCertificates

/-- D is the independently fixed map, complete filtrations, source and target
from the direct-input example. Decoded witnesses cannot change that statement. -/
theorem requested_page_result : FilteredExtensionPageBridge.ResultValid Direct.input := by
  filtered_page_cert using Direct.certificate

theorem requested_stable_page_result :
    StableResultValid FilteredCrossingCertificates.Examples.input := by
  filtered_page_cert using FilteredCrossingCertificates.Examples.certificate

theorem requested_page_diagnostic : FilteredExtensionPageBridge.ResultValid Direct.input := by
  filtered_page_diagnose using Direct.certificate

theorem all_604_page_events : ∀ w ∈ FilteredExtensionCertificates.Examples.batch,
    FilteredExtensionPageBridge.WireValid w := by
  intro w hw
  obtain ⟨parsed,eq,valid⟩ := FilteredExtensionCertificates.Examples.all_valid w hw
  exact ⟨parsed,eq,(resultValid_iff _).mpr valid⟩

theorem all_596_stable_page_events : ∀ w ∈ FilteredCrossingCertificates.Examples.batch,
    StableWireValid w := by
  intro w hw
  obtain ⟨parsed,eq,valid⟩ := FilteredCrossingCertificates.Examples.batch_valid w hw
  exact ⟨parsed,eq,(stableResultValid_iff _).mpr valid⟩

#guard FilteredExtensionCertificates.check Direct.wrongOutput Direct.wrongOutputCertificate = false
#guard FilteredExtensionCertificates.check Direct.wrongInput Direct.wrongInputCertificate = false
#guard FilteredCrossingCertificates.check FilteredCrossingCertificates.Examples.crossingInput
  FilteredCrossingCertificates.Examples.crossingCert = false

open FilteredMapExtension.Examples

/-- The general leading-event bridge corrects a noncycle representative;
it does not reuse the raw-cycle certificate path for this stronger case. -/
theorem noncycle_leading_page_event : LeadingPageEvent F G sumFiltered 0 2
    ⟨(1,0),by trivial⟩ ⟨0,(G.group 2).zero_mem⟩ := by
  apply (leadingPageEvent_iff_extension F G sumFiltered 0 2 _ _).mpr
  exact ((FilteredExtensionSquare.hasExtension_iff F G sumFiltered 0 2 (1,0) 0).mp
    FilteredExtensionSquare.Examples.corrected_extension).2.2

theorem original_still_not_cycle : sumFiltered.hom (1,0) ∉ G.group 2 :=
  FilteredExtensionSquare.Examples.original_not_cycle

theorem exact_but_inessential_crossing : PageCrossingAt shiftedF shiftedG shiftedSum 0 2 :=
  (pageCrossingAt_iff shiftedF shiftedG shiftedSum 0 2).mpr inessential_crossing

#print axioms requested_page_result
#print axioms requested_stable_page_result
#print axioms requested_page_diagnostic
#print axioms all_604_page_events
#print axioms all_596_stable_page_events
#print axioms noncycle_leading_page_event
#print axioms original_still_not_cycle
#print axioms exact_but_inessential_crossing
end FilteredExtensionPageBridge.Examples
