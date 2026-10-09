import Fact713ComparisonBatches.Neighbors00
import Fact713ComparisonBatches.Neighbors01
import Fact713ComparisonBatches.Neighbors02
import Fact713ComparisonBatches.Neighbors03
import Fact713ComparisonBatches.Neighbors04
import Fact713ComparisonBatches.Neighbors05
import Fact713ComparisonBatches.Neighbors06
import Fact713ComparisonBatches.Neighbors07
import Fact713ComparisonBatches.Neighbors08
import Fact713ComparisonBatches.Neighbors09
import Fact713ComparisonBatches.Neighbors10
import Fact713ComparisonBatches.Neighbors11
import Fact713ComparisonBatches.Neighbors12
import Fact713ComparisonBatches.Neighbors13
import Fact713ComparisonBatches.Neighbors14
import Fact713ComparisonBatches.Neighbors15
import Fact713ComparisonBatches.Neighbors16
import Fact713ComparisonBatches.Neighbors17
import Fact713ComparisonBatches.Neighbors18
import Fact713ComparisonBatches.Neighbors19
import Fact713ComparisonBatches.Neighbors20
import Fact713ComparisonBatches.Neighbors21
import Fact713ComparisonBatches.Neighbors22
import Fact713ComparisonBatches.Neighbors23
import Fact713ComparisonBatches.Neighbors24
import Fact713ComparisonBatches.Neighbors25
import Fact713ComparisonBatches.Neighbors26
import Fact713ComparisonBatches.Neighbors27
import Fact713ComparisonBatches.Neighbors28
import Fact713ComparisonBatches.Neighbors29
import Fact713ComparisonBatches.Neighbors30
namespace Fact713ComparisonBatches
open IndexedFamilyCertificates IndexedFamilyNeighborCheck
set_option maxRecDepth 100000
set_option maxHeartbeats 8000000
theorem all_neighbors : ∀ e ∈ family, checkOne family e = true := by
  unfold family
  simp only [List.forall_mem_append]
  exact ⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨(List.all_eq_true.mp neighbors00),List.all_eq_true.mp neighbors01⟩,List.all_eq_true.mp neighbors02⟩,List.all_eq_true.mp neighbors03⟩,List.all_eq_true.mp neighbors04⟩,List.all_eq_true.mp neighbors05⟩,List.all_eq_true.mp neighbors06⟩,List.all_eq_true.mp neighbors07⟩,List.all_eq_true.mp neighbors08⟩,List.all_eq_true.mp neighbors09⟩,List.all_eq_true.mp neighbors10⟩,List.all_eq_true.mp neighbors11⟩,List.all_eq_true.mp neighbors12⟩,List.all_eq_true.mp neighbors13⟩,List.all_eq_true.mp neighbors14⟩,List.all_eq_true.mp neighbors15⟩,List.all_eq_true.mp neighbors16⟩,List.all_eq_true.mp neighbors17⟩,List.all_eq_true.mp neighbors18⟩,List.all_eq_true.mp neighbors19⟩,List.all_eq_true.mp neighbors20⟩,List.all_eq_true.mp neighbors21⟩,List.all_eq_true.mp neighbors22⟩,List.all_eq_true.mp neighbors23⟩,List.all_eq_true.mp neighbors24⟩,List.all_eq_true.mp neighbors25⟩,List.all_eq_true.mp neighbors26⟩,List.all_eq_true.mp neighbors27⟩,List.all_eq_true.mp neighbors28⟩,List.all_eq_true.mp neighbors29⟩,List.all_eq_true.mp neighbors30⟩
theorem family_coherent : Coherent family :=
  coherent_of_entries family family_unique all_valid all_neighbors
#print axioms family_coherent
end Fact713ComparisonBatches
