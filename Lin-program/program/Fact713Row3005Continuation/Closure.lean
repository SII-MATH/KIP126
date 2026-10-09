import Fact713Row3005Continuation.Branches
import Fact713Row3005Continuation.CompactData
import IndexedPredecessorClosureCompact.Tactic

namespace Fact713Row3005Continuation
open IndexedPredecessorClosure
set_option maxRecDepth 100000
set_option maxHeartbeats 32000000

theorem zero_table_binding : IndexedPredecessorClosureCompact.project (family false) =
    CompactData.ZeroB0 := by rfl
theorem one_table_binding : IndexedPredecessorClosureCompact.project (family true) =
    CompactData.ZeroB1 := by rfl
theorem tables_equal : CompactData.ZeroB1 = CompactData.ZeroB0 := rfl
theorem table_accepted : IndexedPredecessorClosureCompact.check CompactData.ZeroB0 = true := by decide
theorem zero_predecessors : PredecessorClosed (family false) :=
  IndexedPredecessorClosureCompact.check_sound _ _ zero_table_binding table_accepted
theorem one_predecessors : PredecessorClosed (family true) :=
  IndexedPredecessorClosureCompact.check_sound _ _ (one_table_binding.trans tables_equal) table_accepted
theorem all_predecessors (b : Bool) : PredecessorClosed (family b) := by
  cases b
  · exact zero_predecessors
  · exact one_predecessors
theorem family_valid (b : Bool) : Valid (family b) :=
  ⟨family_coherent b,all_predecessors b⟩

#print axioms zero_table_binding
#print axioms one_table_binding
#print axioms tables_equal
#print axioms table_accepted
#print axioms zero_predecessors
#print axioms one_predecessors
#print axioms all_predecessors
#print axioms family_valid
end Fact713Row3005Continuation
