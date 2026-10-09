import IndexedPredecessorClosureTree.Tactic

namespace IndexedPredecessorClosureTree.Tests
open IndexedFamilyCertificates

def predIn : Entry := ⟨⟨"S0",2,-3,-2⟩,0,0,0,1⟩
def predCurrent : Entry := ⟨⟨"S0",2,0,0⟩,0,0,0,2⟩
def predOut : Entry := ⟨⟨"S0",2,3,2⟩,0,0,0,3⟩
def current : Entry := ⟨⟨"S0",3,0,0⟩,1,2,3,0⟩
def unused : Paths := ⟨[],[],[]⟩
def validPaths : Paths := ⟨[false,false],[false,true],[true,false]⟩
def tree : Tree Entry := .node (.node (.leaf predIn) (.leaf predCurrent))
  (.node (.leaf predOut) (.leaf current))
def witnessTree : Tree Paths := .node (.node (.leaf unused) (.leaf unused))
  (.node (.leaf unused) (.leaf validPaths))
theorem accepted : check tree witnessTree = true := by decide

def wrongKey : Tree Paths := .node (.node (.leaf unused) (.leaf unused))
  (.node (.leaf unused) (.leaf ⟨[false,true],[false,true],[true,false]⟩))
theorem reject_wrong_key : check tree wrongKey = false := by decide
def tooDeep : Tree Paths := .node (.node (.leaf unused) (.leaf unused))
  (.node (.leaf unused) (.leaf ⟨[false,false,true],[false,true],[true,false]⟩))
theorem reject_invalid_path : check tree tooDeep = false := by decide
theorem reject_missing_subtree : check tree (.node (.leaf unused) (.leaf unused)) = false := by decide
def wrongDimension : Tree Entry := .node (.node (.leaf {predIn with h := 2}) (.leaf predCurrent))
  (.node (.leaf predOut) (.leaf current))
theorem reject_dimension : check wrongDimension witnessTree = false := by decide
theorem reject_extra_path_tree : check (.empty : Tree Entry) (.leaf unused) = false := by decide

def wire (entry : Entry) : PageTransitionCertificates.WireComparison :=
  ⟨1,entry.k,entry.m,entry.n,entry.h,[],[],[],[],[],[]⟩
def family : Family := tree.flatten.map (fun entry => ⟨entry.key,wire entry⟩)
theorem binding : IndexedPredecessorClosureCompact.project family = tree.flatten := rfl
theorem uniqueKeys : UniqueKeys family := by decide
def certificate : Certificate family := ⟨tree,witnessTree,binding⟩
theorem old_goal : IndexedPredecessorClosure.PredecessorClosed family := by
  tree_predecessor_cert using certificate with_unique uniqueKeys
theorem old_checker : IndexedPredecessorClosure.checkPredecessors family = true :=
  (IndexedPredecessorClosure.checkPredecessors_iff _).mpr old_goal

/-- Membership witnesses alone cannot choose a later duplicate's dimension. -/
def duplicate : List Entry := [predIn,{predIn with h := 9}]
theorem duplicate_not_unique : ¬ (duplicate.map (·.key)).Nodup := by decide
theorem duplicate_first_match : IndexedPredecessorClosureCompact.lookupH duplicate predIn.key = some 1 := by decide

#print axioms accepted
#print axioms reject_wrong_key
#print axioms reject_invalid_path
#print axioms reject_missing_subtree
#print axioms reject_dimension
#print axioms reject_extra_path_tree
#print axioms binding
#print axioms uniqueKeys
#print axioms old_goal
#print axioms old_checker
#print axioms duplicate_not_unique
#print axioms duplicate_first_match
end IndexedPredecessorClosureTree.Tests
