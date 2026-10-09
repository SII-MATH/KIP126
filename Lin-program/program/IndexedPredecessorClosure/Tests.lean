import IndexedPredecessorClosure.Diagnostics

namespace IndexedPredecessorClosure.Tests
open IndexedFamilyCertificates PageTransitionCertificates

def zeroWire : WireComparison := ⟨1,0,0,0,0,[],[],[],[],[],[]⟩
def entry3 : Entry := ⟨⟨"S0",3,5,130⟩,zeroWire⟩
def entry2 : Entry := ⟨currentKey entry3.key,zeroWire⟩
def incoming2 : Entry := ⟨incomingKey entry3.key,zeroWire⟩
def outgoing2 : Entry := ⟨outgoingKey entry3.key,zeroWire⟩
def complete : Family := [incoming2,entry2,outgoing2,entry3]

theorem coherent_missing_source : Coherent [entry2,outgoing2,entry3] := by lin_cert using ()
theorem missing_source_rejected : checkPredecessors [entry2,outgoing2,entry3] = false := by decide
theorem missing_current_rejected : checkPredecessors [incoming2,outgoing2,entry3] = false := by decide
theorem missing_target_rejected : checkPredecessors [incoming2,entry2,entry3] = false := by decide
theorem full_closure : Valid complete := by predecessor_closed_cert using ()
theorem closed : PredecessorClosed complete := by predecessor_closed_cert using ()

example : diagnose [entry2,outgoing2,entry3] =
    some (3,"incoming: missing predecessor or wrong whole homology dimension") := by decide

def lineWire : WireComparison := ⟨1,0,1,0,1,[],[],[true],[true],[],[]⟩
theorem wrong_incoming_dimension_rejected :
    checkPredecessors [⟨incoming2.key,lineWire⟩,entry2,outgoing2,entry3] = false := by decide

example (_unused : True) : True := by
  fail_if_success
    have : Valid [entry2,outgoing2,entry3] := by predecessor_closed_cert using ()
  trivial

#print axioms coherent_missing_source
#print axioms missing_source_rejected
#print axioms missing_current_rejected
#print axioms missing_target_rejected
#print axioms full_closure
#print axioms closed
#print axioms wrong_incoming_dimension_rejected
end IndexedPredecessorClosure.Tests
