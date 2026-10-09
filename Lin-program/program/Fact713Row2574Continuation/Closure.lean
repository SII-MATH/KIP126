import Fact713Row2574Continuation.Branches
import Fact713Row2574Continuation.TreeData

namespace Fact713Row2574Continuation
open IndexedPredecessorClosure TreeData
set_option maxRecDepth 100000
set_option maxHeartbeats 32000000

theorem tree_binding (b c : Bool) : IndexedPredecessorClosureCompact.project
    (family b c) = metadata.flatten := by cases b <;> cases c <;> rfl
theorem tree_accepted : IndexedPredecessorClosureTree.check metadata witnesses = true := by decide
theorem all_closed (b c : Bool) : PredecessorClosed (family b c) :=
  IndexedPredecessorClosureTree.sound _ (family_coherent b c).unique metadata witnesses
    (tree_binding b c) tree_accepted
theorem all_valid (b c : Bool) : Valid (family b c) :=
  ⟨family_coherent b c,all_closed b c⟩

#print axioms tree_binding
#print axioms tree_accepted
#print axioms all_closed
#print axioms all_valid
end Fact713Row2574Continuation
