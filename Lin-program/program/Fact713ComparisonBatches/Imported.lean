import Fact713ComparisonBatches.Batch00
import Fact713ComparisonBatches.Batch01
import Fact713ComparisonBatches.Batch02
import Fact713ComparisonBatches.Batch03
import Fact713ComparisonBatches.Batch04
import Fact713ComparisonBatches.Batch05
import Fact713ComparisonBatches.Batch06
import Fact713ComparisonBatches.Batch07
import Fact713ComparisonBatches.Batch08
import Fact713ComparisonBatches.Batch09
import Fact713ComparisonBatches.Batch10
import Fact713ComparisonBatches.Batch11
import Fact713ComparisonBatches.Batch12
import Fact713ComparisonBatches.Batch13
import Fact713ComparisonBatches.Batch14
import Fact713ComparisonBatches.Batch15
import Fact713ComparisonBatches.Batch16
import Fact713ComparisonBatches.Batch17
import Fact713ComparisonBatches.Batch18
import Fact713ComparisonBatches.Batch19
import Fact713ComparisonBatches.Batch20
import Fact713ComparisonBatches.Batch21
import Fact713ComparisonBatches.Batch22
import Fact713ComparisonBatches.Batch23
import Fact713ComparisonBatches.Batch24
import Fact713ComparisonBatches.Batch25
import Fact713ComparisonBatches.Batch26
import Fact713ComparisonBatches.Batch27
import Fact713ComparisonBatches.Batch28
import Fact713ComparisonBatches.Batch29
import Fact713ComparisonBatches.Batch30
import FamilyKeyOrder.Basic
namespace Fact713ComparisonBatches
open IndexedFamilyCertificates
set_option maxRecDepth 100000
set_option maxHeartbeats 8000000
def family : Family := batch00 ++ batch01 ++ batch02 ++ batch03 ++ batch04 ++ batch05 ++ batch06 ++ batch07 ++ batch08 ++ batch09 ++ batch10 ++ batch11 ++ batch12 ++ batch13 ++ batch14 ++ batch15 ++ batch16 ++ batch17 ++ batch18 ++ batch19 ++ batch20 ++ batch21 ++ batch22 ++ batch23 ++ batch24 ++ batch25 ++ batch26 ++ batch27 ++ batch28 ++ batch29 ++ batch30
theorem all_valid : ∀ e ∈ family, KeyValid e.key ∧ e.wire.Valid := by
  unfold family
  simp only [List.forall_mem_append]
  exact ⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨batch00_valid,batch01_valid⟩,batch02_valid⟩,batch03_valid⟩,batch04_valid⟩,batch05_valid⟩,batch06_valid⟩,batch07_valid⟩,batch08_valid⟩,batch09_valid⟩,batch10_valid⟩,batch11_valid⟩,batch12_valid⟩,batch13_valid⟩,batch14_valid⟩,batch15_valid⟩,batch16_valid⟩,batch17_valid⟩,batch18_valid⟩,batch19_valid⟩,batch20_valid⟩,batch21_valid⟩,batch22_valid⟩,batch23_valid⟩,batch24_valid⟩,batch25_valid⟩,batch26_valid⟩,batch27_valid⟩,batch28_valid⟩,batch29_valid⟩,batch30_valid⟩
theorem family_count : family.length = 1234 := by decide
def keyCode (key : Key) : Nat := (key.page*256+(key.s+64).toNat)*256+key.t.toNat
theorem family_unique : UniqueKeys family :=
  FamilyKeyOrder.check_key_order_sound keyCode family (by decide)
#print axioms all_valid
#print axioms family_unique
end Fact713ComparisonBatches
