import Fact713RefinedComparisonFamily.Extra
import Fact713ComparisonBatches.Imported

namespace Fact713RefinedComparisonFamily
open IndexedFamilyCertificates
set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

theorem cross_checked : checkCross Fact713ComparisonBatches.family extra = true := by
  decide

def family : Family := Fact713ComparisonBatches.family ++ extra

theorem family_count : family.length = 1239 := by
  simp only [family, List.length_append, Fact713ComparisonBatches.family_count,
    extra_count]

theorem family_unique : UniqueKeys family :=
  unique_append _ _ Fact713ComparisonBatches.family_unique extra_coherent.unique
    (fun a ha b hb => (checkCross_sound _ _ cross_checked a ha b hb).1)

theorem baseline_preserved (entry : Entry)
    (member : entry ∈ Fact713ComparisonBatches.family) : entry ∈ family :=
  List.mem_append_left extra member

theorem extra_preserved (entry : Entry) (member : entry ∈ extra) : entry ∈ family :=
  List.mem_append_right Fact713ComparisonBatches.family member

#print axioms cross_checked
#print axioms family_unique
#print axioms baseline_preserved
end Fact713RefinedComparisonFamily
