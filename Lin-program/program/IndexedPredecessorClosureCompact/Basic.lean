import IndexedPredecessorClosure.Diagnostics

namespace IndexedPredecessorClosureCompact
open IndexedFamilyCertificates PageTransitionCertificates

/-- No differential or homology matrix appears in the repeatedly searched table. -/
structure Entry where
  key : Key
  n : Nat
  m : Nat
  k : Nat
  h : Nat
  deriving DecidableEq, Lean.ToJson, Lean.FromJson, Lean.ToExpr

abbrev Table := List Entry

def projectEntry (entry : IndexedFamilyCertificates.Entry) : Entry :=
  ⟨entry.key,entry.wire.n,entry.wire.m,entry.wire.k,entry.wire.h⟩
def project (family : Family) : Table := family.map projectEntry

def lookupH (table : Table) (key : Key) : Option Nat :=
  (table.find? (fun entry => entry.key == key)).map Entry.h

theorem lookupH_project (family : Family) (key : Key) :
    lookupH (project family) key = (lookup family key).map WireComparison.h := by
  induction family with
  | nil => rfl
  | cons entry rest ih =>
    cases h : entry.key == key
    · simpa only [lookupH,project,List.map_cons,List.find?_cons,projectEntry,lookup,h,
        Bool.false_eq_true,if_false] using ih
    · simp only [lookupH,project,List.map_cons,List.find?_cons,projectEntry,lookup,h,
        Option.map_some]

def checkDimension (table : Table) (key : Key) (dimension : Nat) : Bool :=
  match lookupH table key with
  | none => false
  | some h => decide (h = dimension)

theorem checkDimension_project (family : Family) (key : Key) (dimension : Nat) :
    checkDimension (project family) key dimension =
      IndexedPredecessorClosure.checkDimension family key dimension := by
  unfold checkDimension IndexedPredecessorClosure.checkDimension
  rw [lookupH_project]
  cases lookup family key <;> rfl

def checkEntry (table : Table) (entry : Entry) : Bool :=
  if 2 < entry.key.page then
    checkDimension table (IndexedPredecessorClosure.incomingKey entry.key) entry.n &&
    checkDimension table (IndexedPredecessorClosure.currentKey entry.key) entry.m &&
    checkDimension table (IndexedPredecessorClosure.outgoingKey entry.key) entry.k
  else true

theorem checkEntry_project (family : Family) (entry : IndexedFamilyCertificates.Entry) :
    checkEntry (project family) (projectEntry entry) =
      IndexedPredecessorClosure.checkEntry family entry := by
  simp only [checkEntry,projectEntry,IndexedPredecessorClosure.checkEntry,checkDimension_project]

def check (table : Table) : Bool := table.all (checkEntry table)

theorem check_project (family : Family) :
    check (project family) = IndexedPredecessorClosure.checkPredecessors family := by
  simp only [check,project,List.all_map,Function.comp_def,IndexedPredecessorClosure.checkPredecessors]
  have same : (fun entry => checkEntry (List.map projectEntry family) (projectEntry entry)) =
      (fun entry => IndexedPredecessorClosure.checkEntry family entry) := by
    funext entry
    exact checkEntry_project family entry
  rw [same]

theorem check_iff (family : Family) (table : Table) (binding : project family = table) :
    check table = true ↔ IndexedPredecessorClosure.PredecessorClosed family := by
  rw [← binding,check_project,IndexedPredecessorClosure.checkPredecessors_iff]

theorem check_sound (family : Family) (table : Table) (binding : project family = table)
    (accepted : check table = true) : IndexedPredecessorClosure.PredecessorClosed family :=
  (check_iff family table binding).mp accepted

/-- The proof field binds the literal compact table once. Only `table` is
read by the executable checker; the original matrices are never searched. -/
structure Certificate (family : Family) where
  table : Table
  binding : project family = table

def Certificate.check (certificate : Certificate family) : Bool :=
  IndexedPredecessorClosureCompact.check certificate.table
theorem Certificate.sound (certificate : Certificate family)
    (accepted : certificate.check = true) : IndexedPredecessorClosure.PredecessorClosed family :=
  check_sound family certificate.table certificate.binding accepted

#print axioms lookupH_project
#print axioms checkDimension_project
#print axioms checkEntry_project
#print axioms check_project
#print axioms check_iff
#print axioms check_sound
#print axioms Certificate.sound
end IndexedPredecessorClosureCompact
