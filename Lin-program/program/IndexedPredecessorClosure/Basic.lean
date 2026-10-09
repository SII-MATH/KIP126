import IndexedFamilyCertificates.Coherence

namespace IndexedPredecessorClosure
open IndexedFamilyCertificates PageTransitionCertificates

def incomingKey (key : Key) : Key :=
  ⟨key.object, key.page-1, key.s-(key.page : Int), key.t-(key.page : Int)+1⟩
def currentKey (key : Key) : Key := { key with page := key.page-1 }
def outgoingKey (key : Key) : Key :=
  ⟨key.object, key.page-1, key.s+(key.page : Int), key.t+(key.page : Int)-1⟩

def HasDimension (family : Family) (key : Key) (dimension : Nat) : Prop :=
  ∃ w, lookup family key = some w ∧ w.h = dimension

def checkDimension (family : Family) (key : Key) (dimension : Nat) : Bool :=
  match lookup family key with
  | none => false
  | some w => decide (w.h = dimension)

theorem checkDimension_iff (family : Family) (key : Key) (dimension : Nat) :
    checkDimension family key dimension = true ↔ HasDimension family key dimension := by
  unfold checkDimension HasDimension
  cases h : lookup family key <;> simp

def EntryClosed (family : Family) (entry : Entry) : Prop :=
  2 < entry.key.page →
    HasDimension family (incomingKey entry.key) entry.wire.n ∧
    HasDimension family (currentKey entry.key) entry.wire.m ∧
    HasDimension family (outgoingKey entry.key) entry.wire.k

def checkEntry (family : Family) (entry : Entry) : Bool :=
  if 2 < entry.key.page then
    checkDimension family (incomingKey entry.key) entry.wire.n &&
    checkDimension family (currentKey entry.key) entry.wire.m &&
    checkDimension family (outgoingKey entry.key) entry.wire.k
  else true

theorem checkEntry_iff (family : Family) (entry : Entry) :
    checkEntry family entry = true ↔ EntryClosed family entry := by
  unfold checkEntry EntryClosed
  by_cases later : 2 < entry.key.page
  · simp only [later,if_true,Bool.and_eq_true,checkDimension_iff,true_implies,and_assoc]
  · simp [later]

/-- Each supplied higher-page block includes all three full preceding-page
comparisons, including the incoming source and outgoing target degrees. -/
def PredecessorClosed (family : Family) : Prop := ∀ entry ∈ family, EntryClosed family entry

def checkPredecessors (family : Family) : Bool := family.all (checkEntry family)

theorem checkPredecessors_iff (family : Family) :
    checkPredecessors family = true ↔ PredecessorClosed family := by
  simp only [checkPredecessors,List.all_eq_true,checkEntry_iff,PredecessorClosed]

structure Valid (family : Family) : Prop where
  coherent : Coherent family
  closed : PredecessorClosed family

def check (family : Family) : Bool := checkFamily family && checkPredecessors family

theorem check_sound (family : Family) (accepted : check family = true) : Valid family := by
  simp only [check,Bool.and_eq_true] at accepted
  exact ⟨checkFamily_sound family accepted.1,(checkPredecessors_iff family).mp accepted.2⟩

instance (family : Family) : LinProgramCertificates.CertificateVerifier (PredecessorClosed family) where
  Cert := Unit
  check := fun _ => checkPredecessors family
  sound := fun _ => (checkPredecessors_iff family).mp

instance (family : Family) : LinProgramCertificates.CertificateVerifier (Valid family) where
  Cert := Unit
  check := fun _ => check family
  sound := fun _ => check_sound family

theorem Valid.incoming (valid : Valid family) (member : entry ∈ family)
    (later : 2 < entry.key.page) :
    ∃ w, lookup family (incomingKey entry.key) = some w ∧ w.h = entry.wire.n :=
  (valid.closed entry member later).1
theorem Valid.current (valid : Valid family) (member : entry ∈ family)
    (later : 2 < entry.key.page) :
    ∃ w, lookup family (currentKey entry.key) = some w ∧ w.h = entry.wire.m :=
  (valid.closed entry member later).2.1
theorem Valid.outgoing (valid : Valid family) (member : entry ∈ family)
    (later : 2 < entry.key.page) :
    ∃ w, lookup family (outgoingKey entry.key) = some w ∧ w.h = entry.wire.k :=
  (valid.closed entry member later).2.2

syntax "predecessor_closed_cert" " using " term : tactic
macro_rules
  | `(tactic| predecessor_closed_cert using $certificate:term) =>
    `(tactic| lin_cert using $certificate)

#print axioms checkDimension_iff
#print axioms checkEntry_iff
#print axioms checkPredecessors_iff
#print axioms check_sound
#print axioms Valid.incoming
#print axioms Valid.current
#print axioms Valid.outgoing
end IndexedPredecessorClosure
