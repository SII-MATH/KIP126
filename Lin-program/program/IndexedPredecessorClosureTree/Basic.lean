import IndexedPredecessorClosureCompact.Basic

namespace IndexedPredecessorClosureTree
open IndexedFamilyCertificates
abbrev Entry := IndexedPredecessorClosureCompact.Entry

inductive Tree (α : Type) where
  | empty
  | leaf (value : α)
  | node (left right : Tree α)
  deriving Repr

def Tree.flatten : Tree α → List α
  | .empty => []
  | .leaf value => [value]
  | .node left right => left.flatten ++ right.flatten

def Tree.get : Tree α → List Bool → Option α
  | .leaf value, [] => some value
  | .node left _, false :: path => left.get path
  | .node _ right, true :: path => right.get path
  | _, _ => none

theorem Tree.get_mem {tree : Tree α} {path : List Bool} {value : α}
    (found : tree.get path = some value) : value ∈ tree.flatten := by
  induction tree generalizing path with
  | empty => cases path <;> cases found
  | leaf a => cases path with
    | nil => simp only [Tree.get,Option.some.injEq] at found; subst value; simp [Tree.flatten]
    | cons b rest => cases found
  | node left right ihl ihr =>
    cases path with
    | nil => cases found
    | cons b rest =>
      cases b
      · exact List.mem_append_left _ (ihl found)
      · exact List.mem_append_right _ (ihr found)

structure Paths where
  incoming : List Bool
  current : List Bool
  outgoing : List Bool
  deriving Repr

def checkPath (root : Tree Entry) (path : List Bool) (key : Key) (dimension : Nat) : Bool :=
  match root.get path with
  | none => false
  | some entry => decide (entry.key = key ∧ entry.h = dimension)

def checkLeaf (root : Tree Entry) (entry : Entry) (paths : Paths) : Bool :=
  if 2 < entry.key.page then
    checkPath root paths.incoming (IndexedPredecessorClosure.incomingKey entry.key) entry.n &&
    checkPath root paths.current (IndexedPredecessorClosure.currentKey entry.key) entry.m &&
    checkPath root paths.outgoing (IndexedPredecessorClosure.outgoingKey entry.key) entry.k
  else true

def checkTree (root : Tree Entry) : Tree Entry → Tree Paths → Bool
  | .empty, .empty => true
  | .leaf entry, .leaf paths => checkLeaf root entry paths
  | .node left right, .node wl wr => checkTree root left wl && checkTree root right wr
  | _, _ => false

def check (tree : Tree Entry) (paths : Tree Paths) : Bool := checkTree tree tree paths

theorem lookup_of_member (table : List Entry) (unique : (table.map (·.key)).Nodup)
    (entry : Entry) (member : entry ∈ table) :
    IndexedPredecessorClosureCompact.lookupH table entry.key = some entry.h := by
  induction table with
  | nil => cases member
  | cons first rest ih =>
    have uniq : first.key ∉ rest.map (·.key) ∧ (rest.map (·.key)).Nodup :=
      List.nodup_cons.mp unique
    rcases List.mem_cons.mp member with same | member
    · subst entry
      simp [IndexedPredecessorClosureCompact.lookupH]
    · have different : first.key ≠ entry.key := by
        intro same
        exact uniq.1 (same ▸ List.mem_map.mpr ⟨entry,member,rfl⟩)
      simpa only [IndexedPredecessorClosureCompact.lookupH,List.find?_cons,
        show (first.key == entry.key) = false from beq_eq_false_iff_ne.mpr different,
        Bool.false_eq_true,if_false] using ih uniq.2 member

theorem checkPath_sound (tree : Tree Entry) (unique : (tree.flatten.map (·.key)).Nodup)
    (path : List Bool) (key : Key) (dimension : Nat)
    (accepted : checkPath tree path key dimension = true) :
    IndexedPredecessorClosureCompact.checkDimension tree.flatten key dimension = true := by
  unfold checkPath at accepted
  cases found : tree.get path with
  | none => simp [found] at accepted
  | some entry =>
    rw [found] at accepted
    have same : entry.key = key ∧ entry.h = dimension := of_decide_eq_true accepted
    have looked := lookup_of_member tree.flatten unique entry (Tree.get_mem found)
    rw [same.1,same.2] at looked
    simp [IndexedPredecessorClosureCompact.checkDimension,looked]

theorem checkLeaf_sound (root : Tree Entry) (unique : (root.flatten.map (·.key)).Nodup)
    (entry : Entry) (paths : Paths) (accepted : checkLeaf root entry paths = true) :
    IndexedPredecessorClosureCompact.checkEntry root.flatten entry = true := by
  unfold checkLeaf IndexedPredecessorClosureCompact.checkEntry at *
  by_cases later : 2 < entry.key.page
  · simp only [later,if_true,Bool.and_eq_true] at *
    exact ⟨⟨checkPath_sound root unique _ _ _ accepted.1.1,
      checkPath_sound root unique _ _ _ accepted.1.2⟩,
      checkPath_sound root unique _ _ _ accepted.2⟩
  · simp [later]

theorem checkTree_sound (root : Tree Entry) (unique : (root.flatten.map (·.key)).Nodup)
    (tree : Tree Entry) (paths : Tree Paths) (accepted : checkTree root tree paths = true) :
    ∀ entry ∈ tree.flatten, IndexedPredecessorClosureCompact.checkEntry root.flatten entry = true := by
  induction tree generalizing paths with
  | empty => intro entry member; cases member
  | leaf value =>
    cases paths with
    | empty => cases accepted
    | node left right => cases accepted
    | leaf path =>
      intro entry member
      have same : entry = value := List.mem_singleton.mp member
      subst entry
      exact checkLeaf_sound root unique value path accepted
  | node left right ihl ihr =>
    cases paths with
    | empty => cases accepted
    | leaf path => cases accepted
    | node wl wr =>
      have parts : checkTree root left wl = true ∧ checkTree root right wr = true := by
        simpa only [checkTree,Bool.and_eq_true] using accepted
      intro entry member
      rcases List.mem_append.mp member with hl | hr
      · exact ihl wl parts.1 entry hl
      · exact ihr wr parts.2 entry hr

theorem check_compact (tree : Tree Entry) (unique : (tree.flatten.map (·.key)).Nodup)
    (paths : Tree Paths) (accepted : check tree paths = true) :
    IndexedPredecessorClosureCompact.check tree.flatten = true :=
  List.all_eq_true.mpr (checkTree_sound tree unique tree paths accepted)

theorem project_unique (family : Family) (unique : UniqueKeys family) :
    ((IndexedPredecessorClosureCompact.project family).map (·.key)).Nodup := by
  simpa only [IndexedPredecessorClosureCompact.project,List.map_map,
    Function.comp_def,IndexedPredecessorClosureCompact.projectEntry,UniqueKeys] using unique

theorem sound (family : Family) (unique : UniqueKeys family)
    (tree : Tree Entry) (paths : Tree Paths)
    (binding : IndexedPredecessorClosureCompact.project family = tree.flatten)
    (accepted : check tree paths = true) : IndexedPredecessorClosure.PredecessorClosed family := by
  have uniqueTree : (tree.flatten.map (·.key)).Nodup := binding ▸ project_unique family unique
  exact IndexedPredecessorClosureCompact.check_sound family tree.flatten binding
    (check_compact tree uniqueTree paths accepted)

structure Certificate (family : Family) where
  tree : Tree Entry
  paths : Tree Paths
  binding : IndexedPredecessorClosureCompact.project family = tree.flatten

def Certificate.check (certificate : Certificate family) : Bool :=
  IndexedPredecessorClosureTree.check certificate.tree certificate.paths

theorem Certificate.sound (certificate : Certificate family) (unique : UniqueKeys family)
    (accepted : certificate.check = true) : IndexedPredecessorClosure.PredecessorClosed family :=
  IndexedPredecessorClosureTree.sound family unique certificate.tree certificate.paths certificate.binding accepted

#print axioms Tree.get_mem
#print axioms lookup_of_member
#print axioms checkPath_sound
#print axioms checkLeaf_sound
#print axioms checkTree_sound
#print axioms check_compact
#print axioms project_unique
#print axioms sound
#print axioms Certificate.sound
end IndexedPredecessorClosureTree
