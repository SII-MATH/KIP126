import IndexedPredecessorClosure.Basic

namespace IndexedPredecessorClosure
open IndexedFamilyCertificates

def diagnoseEntry (family : Family) (entry : Entry) : Option String :=
  if 2 < entry.key.page then
    if !checkDimension family (incomingKey entry.key) entry.wire.n then
      some "incoming: missing predecessor or wrong whole homology dimension"
    else if !checkDimension family (currentKey entry.key) entry.wire.m then
      some "current: missing predecessor or wrong whole homology dimension"
    else if !checkDimension family (outgoingKey entry.key) entry.wire.k then
      some "outgoing: missing predecessor or wrong whole homology dimension"
    else none
  else none

theorem diagnoseEntry_none_iff (family : Family) (entry : Entry) :
    diagnoseEntry family entry = none ↔ checkEntry family entry = true := by
  unfold diagnoseEntry checkEntry
  by_cases h : 2 < entry.key.page
  · simp only [h,if_true]
    cases checkDimension family (incomingKey entry.key) entry.wire.n <;>
      cases checkDimension family (currentKey entry.key) entry.wire.m <;>
      cases checkDimension family (outgoingKey entry.key) entry.wire.k <;> decide
  · simp [h]

def diagnoseEntries (family : Family) : Family → Nat → Option (Nat × String)
  | [], _ => none
  | entry :: rest, index =>
    match diagnoseEntry family entry with
    | some message => some (index,message)
    | none => diagnoseEntries family rest (index+1)

theorem diagnoseEntries_none_iff (family entries : Family) (index : Nat) :
    diagnoseEntries family entries index = none ↔ entries.all (checkEntry family) = true := by
  induction entries generalizing index with
  | nil => simp [diagnoseEntries]
  | cons entry rest ih =>
    simp only [diagnoseEntries,List.all_cons,Bool.and_eq_true]
    cases h : diagnoseEntry family entry with
    | none => simp [ih,(diagnoseEntry_none_iff family entry).mp h]
    | some message =>
      have rejected : checkEntry family entry ≠ true := by
        intro accepted
        have := (diagnoseEntry_none_iff family entry).mpr accepted
        simp_all
      simp [rejected]

def diagnose (family : Family) : Option (Nat × String) := diagnoseEntries family family 1

theorem diagnose_none_iff (family : Family) :
    diagnose family = none ↔ checkPredecessors family = true :=
  diagnoseEntries_none_iff family family 1

#print axioms diagnoseEntry_none_iff
#print axioms diagnoseEntries_none_iff
#print axioms diagnose_none_iff
end IndexedPredecessorClosure
