import Fact713DC2h6ComparisonFamily.Extra
import Fact713NextComparisonFamily.Cross

namespace Fact713DC2h6ComparisonFamily
open IndexedFamilyCertificates
set_option maxRecDepth 100000
set_option maxHeartbeats 16000000

theorem cross_checked :
    Fact713RefinedComparisonFamily.checkCross Fact713NextComparisonFamily.family extra = true := by
  decide

def family : Family := Fact713NextComparisonFamily.family ++ extra

theorem family_count : family.length = 1272 := by
  simp only [family, List.length_append, Fact713NextComparisonFamily.family_count,
    extra_count]

theorem family_unique : UniqueKeys family :=
  Fact713RefinedComparisonFamily.unique_append _ _
    Fact713NextComparisonFamily.family_unique extra_coherent.unique
    (fun a ha b hb =>
      (Fact713RefinedComparisonFamily.checkCross_sound _ _ cross_checked a ha b hb).1)

theorem baseline_preserved (entry : Entry)
    (member : entry ∈ Fact713NextComparisonFamily.family) : entry ∈ family :=
  List.mem_append_left extra member

theorem original_preserved (entry : Entry)
    (member : entry ∈ Fact713ComparisonBatches.family) : entry ∈ family :=
  baseline_preserved entry (Fact713NextComparisonFamily.original_preserved entry member)

theorem extra_preserved (entry : Entry) (member : entry ∈ extra) : entry ∈ family :=
  List.mem_append_right Fact713NextComparisonFamily.family member

#print axioms cross_checked
#print axioms family_unique
#print axioms original_preserved
end Fact713DC2h6ComparisonFamily
