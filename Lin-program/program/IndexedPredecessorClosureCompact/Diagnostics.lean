import IndexedPredecessorClosureCompact.Basic

namespace IndexedPredecessorClosureCompact
open IndexedFamilyCertificates

def diagnoseEntry (table : Table) (entry : Entry) : Option String :=
  if 2 < entry.key.page then
    if !checkDimension table (IndexedPredecessorClosure.incomingKey entry.key) entry.n then
      some "incoming: missing predecessor or wrong whole homology dimension"
    else if !checkDimension table (IndexedPredecessorClosure.currentKey entry.key) entry.m then
      some "current: missing predecessor or wrong whole homology dimension"
    else if !checkDimension table (IndexedPredecessorClosure.outgoingKey entry.key) entry.k then
      some "outgoing: missing predecessor or wrong whole homology dimension"
    else none
  else none

theorem diagnoseEntry_project (family : Family) (entry : IndexedFamilyCertificates.Entry) :
    diagnoseEntry (project family) (projectEntry entry) =
      IndexedPredecessorClosure.diagnoseEntry family entry := by
  simp only [diagnoseEntry,projectEntry,IndexedPredecessorClosure.diagnoseEntry,checkDimension_project]

def diagnoseEntries (table : Table) : Table → Nat → Option (Nat × String)
  | [], _ => none
  | entry :: rest, index =>
    match diagnoseEntry table entry with
    | some message => some (index,message)
    | none => diagnoseEntries table rest (index+1)

theorem diagnoseEntries_project (family entries : Family) (index : Nat) :
    diagnoseEntries (project family) (project entries) index =
      IndexedPredecessorClosure.diagnoseEntries family entries index := by
  induction entries generalizing index with
  | nil => rfl
  | cons entry rest ih =>
    simp only [project,List.map_cons,diagnoseEntries,IndexedPredecessorClosure.diagnoseEntries]
    erw [diagnoseEntry_project]
    cases IndexedPredecessorClosure.diagnoseEntry family entry with
    | none => exact ih (index+1)
    | some message => rfl

def diagnose (table : Table) : Option (Nat × String) := diagnoseEntries table table 1

theorem diagnose_project (family : Family) :
    diagnose (project family) = IndexedPredecessorClosure.diagnose family :=
  diagnoseEntries_project family family 1

theorem diagnose_none_iff (family : Family) (table : Table) (binding : project family = table) :
    diagnose table = none ↔ check table = true := by
  rw [← binding,diagnose_project,check_project,IndexedPredecessorClosure.diagnose_none_iff]

#print axioms diagnoseEntry_project
#print axioms diagnoseEntries_project
#print axioms diagnose_project
#print axioms diagnose_none_iff
end IndexedPredecessorClosureCompact
