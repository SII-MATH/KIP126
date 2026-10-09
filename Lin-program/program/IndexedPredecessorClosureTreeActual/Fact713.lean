import IndexedPredecessorClosureTreeActual.Data
import Fact713Row2693Continuation.Branches

namespace IndexedPredecessorClosureTreeActual
open IndexedPredecessorClosureTree IndexedPredecessorClosure
set_option maxRecDepth 100000
set_option maxHeartbeats 32000000

theorem binding0 : IndexedPredecessorClosureCompact.project
    (Fact713Row2693Continuation.family false) = tree.flatten := rfl
theorem binding1 : IndexedPredecessorClosureCompact.project
    (Fact713Row2693Continuation.family true) = tree.flatten := rfl

theorem accepted : IndexedPredecessorClosureTree.check tree paths = true := by decide

theorem all_branches_closed (b : Bool) :
    PredecessorClosed (Fact713Row2693Continuation.family b) := by
  apply IndexedPredecessorClosureTree.sound _
    (Fact713Row2693Continuation.family_coherent b).unique tree paths _ accepted
  cases b
  · exact binding0
  · exact binding1

theorem all_branches_valid (b : Bool) :
    Valid (Fact713Row2693Continuation.family b) :=
  ⟨Fact713Row2693Continuation.family_coherent b,all_branches_closed b⟩

theorem no_missing_predecessor (b : Bool) :
    diagnose (Fact713Row2693Continuation.family b) = none :=
  (diagnose_none_iff _).mpr ((checkPredecessors_iff _).mpr (all_branches_closed b))

#print axioms binding0
#print axioms binding1
#print axioms accepted
#print axioms all_branches_closed
#print axioms all_branches_valid
#print axioms no_missing_predecessor
end IndexedPredecessorClosureTreeActual
