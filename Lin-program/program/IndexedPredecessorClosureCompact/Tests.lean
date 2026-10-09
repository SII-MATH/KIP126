import IndexedPredecessorClosureCompact.Tactic
import IndexedPredecessorClosure.Tests

namespace IndexedPredecessorClosureCompact.Tests
open IndexedFamilyCertificates PageTransitionCertificates

def table : Table := [
  ⟨⟨"S0",2,2,128⟩,0,0,0,0⟩,
  ⟨⟨"S0",2,5,130⟩,0,0,0,0⟩,
  ⟨⟨"S0",2,8,132⟩,0,0,0,0⟩,
  ⟨⟨"S0",3,5,130⟩,0,0,0,0⟩]

theorem table_binding : project IndexedPredecessorClosure.Tests.complete = table := rfl
def certificate : Certificate IndexedPredecessorClosure.Tests.complete := ⟨table,table_binding⟩

theorem closure : IndexedPredecessorClosure.PredecessorClosed IndexedPredecessorClosure.Tests.complete := by
  compact_predecessor_cert using certificate
theorem table_closure : IndexedPredecessorClosure.PredecessorClosed IndexedPredecessorClosure.Tests.complete := by
  compact_predecessor_table_cert using table bound table_binding
theorem generic_verifier : Verified IndexedPredecessorClosure.Tests.complete := by lin_cert using certificate

theorem missing_source_rejected : check table.tail = false := by decide
theorem wrong_dimension_rejected : check (⟨⟨"S0",2,2,128⟩,0,0,0,1⟩ :: table.tail) = false := by decide
theorem wrong_object_rejected : check
    (⟨⟨"C2",2,2,128⟩,0,0,0,0⟩ :: table.tail) = false := by decide
theorem diagnostic_missing : diagnose table.tail =
    some (3,"incoming: missing predecessor or wrong whole homology dimension") := by decide

def missing : IndexedFamilyCertificates.Family :=
  [IndexedPredecessorClosure.Tests.entry2,IndexedPredecessorClosure.Tests.outgoing2,
   IndexedPredecessorClosure.Tests.entry3]
def missingCert : Certificate missing := ⟨table.tail,rfl⟩
example : True := by
  fail_if_success
    have : IndexedPredecessorClosure.PredecessorClosed missing := by
      compact_predecessor_cert using missingCert
  trivial

/-- Altering matrices does not alter the compact table. This does not make
the malformed family coherent; it tests the intended separation of checks. -/
def malformed : IndexedFamilyCertificates.Family := IndexedPredecessorClosure.Tests.complete.map
  (fun entry => {entry with wire := {entry.wire with outgoing := [true]}})
theorem malformed_same_projection : project malformed = table := rfl
theorem malformed_coherence_rejected : checkFamily malformed = false := by decide
theorem malformed_still_closed : IndexedPredecessorClosure.PredecessorClosed malformed := by
  compact_predecessor_table_cert using table bound malformed_same_projection

#print axioms table_binding
#print axioms closure
#print axioms table_closure
#print axioms generic_verifier
#print axioms missing_source_rejected
#print axioms wrong_dimension_rejected
#print axioms wrong_object_rejected
#print axioms diagnostic_missing
#print axioms malformed_same_projection
#print axioms malformed_coherence_rejected
#print axioms malformed_still_closed
end IndexedPredecessorClosureCompact.Tests
