import Fact713Row3005Closure.Data
import Fact713Row3005Continuation.Branches

namespace Fact713Row3005Closure
open IndexedPredecessorClosure
set_option maxRecDepth 100000
set_option maxHeartbeats 32000000

theorem zero_binding : IndexedPredecessorClosureCompact.project
    (Fact713Row3005Continuation.family false) = metadata.flatten := by rfl
theorem one_binding : IndexedPredecessorClosureCompact.project
    (Fact713Row3005Continuation.family true) = metadata.flatten := by rfl
theorem tree_accepted : IndexedPredecessorClosureTree.check metadata witnesses = true := by decide

theorem zero_closed : PredecessorClosed (Fact713Row3005Continuation.family false) :=
  IndexedPredecessorClosureTree.sound _ (Fact713Row3005Continuation.family_coherent false).unique
    metadata witnesses zero_binding tree_accepted
theorem one_closed : PredecessorClosed (Fact713Row3005Continuation.family true) :=
  IndexedPredecessorClosureTree.sound _ (Fact713Row3005Continuation.family_coherent true).unique
    metadata witnesses one_binding tree_accepted
theorem all_closed (b : Bool) : PredecessorClosed (Fact713Row3005Continuation.family b) := by
  cases b
  · exact zero_closed
  · exact one_closed
theorem all_valid (b : Bool) : Valid (Fact713Row3005Continuation.family b) :=
  ⟨Fact713Row3005Continuation.family_coherent b,all_closed b⟩

#print axioms zero_binding
#print axioms one_binding
#print axioms tree_accepted
#print axioms zero_closed
#print axioms one_closed
#print axioms all_closed
#print axioms all_valid
end Fact713Row3005Closure
