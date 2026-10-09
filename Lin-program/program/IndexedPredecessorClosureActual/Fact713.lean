import IndexedPredecessorClosureActual.Data
import IndexedPredecessorClosureCompact.Tactic
import Fact713Row2693Continuation.Branches

namespace IndexedPredecessorClosureActual
open IndexedPredecessorClosure

set_option maxRecDepth 100000
set_option maxHeartbeats 32000000

theorem table0_binding : IndexedPredecessorClosureCompact.project
    (Fact713Row2693Continuation.family false) = table0 := by rfl

theorem table1_binding : IndexedPredecessorClosureCompact.project
    (Fact713Row2693Continuation.family true) = table1 := by rfl

theorem tables_equal : table1 = table0 := rfl

theorem table_accepted : IndexedPredecessorClosureCompact.check table0 = true := by decide

theorem zero_branch_closed :
    PredecessorClosed (Fact713Row2693Continuation.family false) := by
  exact IndexedPredecessorClosureCompact.check_sound _ table0 table0_binding table_accepted

theorem one_branch_closed :
    PredecessorClosed (Fact713Row2693Continuation.family true) := by
  exact IndexedPredecessorClosureCompact.check_sound _ table0
    (table1_binding.trans tables_equal) table_accepted

theorem all_branches_closed (b : Bool) :
    PredecessorClosed (Fact713Row2693Continuation.family b) := by
  cases b
  · exact zero_branch_closed
  · exact one_branch_closed

theorem all_branches_valid (b : Bool) :
    Valid (Fact713Row2693Continuation.family b) :=
  ⟨Fact713Row2693Continuation.family_coherent b,all_branches_closed b⟩

theorem no_missing_predecessor (b : Bool) :
    diagnose (Fact713Row2693Continuation.family b) = none :=
  (diagnose_none_iff _).mpr ((checkPredecessors_iff _).mpr (all_branches_closed b))

#print axioms table0_binding
#print axioms table1_binding
#print axioms tables_equal
#print axioms table_accepted
#print axioms zero_branch_closed
#print axioms one_branch_closed
#print axioms all_branches_closed
#print axioms all_branches_valid
#print axioms no_missing_predecessor
end IndexedPredecessorClosureActual
