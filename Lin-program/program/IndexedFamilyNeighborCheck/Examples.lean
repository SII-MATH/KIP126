import IndexedFamilyNeighborCheck.Basic

namespace IndexedFamilyNeighborCheck.Tests
open IndexedFamilyCertificates PageTransitionCertificates

private def zeroBlock : WireComparison := ⟨1,0,0,0,0,[],[],[],[],[],[]⟩
private def lineBlock : WireComparison := ⟨1,0,1,0,1,[],[],[true],[true],[],[]⟩
private def outgoingBlock : WireComparison := ⟨1,1,1,0,0,[true],[],[],[],[],[true]⟩
private def incomingBlock : WireComparison := ⟨1,0,1,1,0,[],[true],[],[],[true],[]⟩
private def wrongIncomingBlock : WireComparison := ⟨1,0,1,1,1,[],[false],[true],[true],[false],[]⟩
private def first : Entry := ⟨⟨"S0",2,-2,-1⟩,zeroBlock⟩
private def second : Entry := ⟨nextKey first,zeroBlock⟩
private def target : Entry := ⟨differentialKey first,zeroBlock⟩
private def outgoing : Entry := ⟨first.key,outgoingBlock⟩
private def incoming : Entry := ⟨target.key,incomingBlock⟩
private def wrongIncoming : Entry := ⟨target.key,wrongIncomingBlock⟩

example : checker [first,second,target] = true := by decide
example : Coherent [first,second,target] := checker_sound _ (by decide)
example : checker [first] = true := by decide
example : checkWindow [first] [first.key,second.key] = false := by decide
example : checker [first,first] = false := by decide
example : diagnose [first,first] = some "family.entries: duplicate key" := by decide
example : checker [first,⟨second.key,lineBlock⟩] = false := by decide
example : checker [outgoing,incoming] = true := by decide
example : checkWire wrongIncoming.wire = true := by decide
example : outgoing.wire.k = wrongIncoming.wire.m ∧ outgoing.wire.m = wrongIncoming.wire.n := by decide
example : checker [outgoing,wrongIncoming] = false := by decide
example : checker [⟨⟨"S0",1,0,0⟩,zeroBlock⟩] = false := by decide
example : checker [⟨⟨"",2,0,0⟩,zeroBlock⟩] = false := by decide
example : checkOne [outgoing,incoming,wrongIncoming] outgoing = true := by decide
example : checker [outgoing,incoming,wrongIncoming] = false := by decide

/-- The same family can be certified by separate entry and neighbor proofs,
without evaluating an all-pairs predicate inside one large decide term. -/
theorem batch_example : Coherent [first,second,target] := by
  apply coherent_of_entries
  · decide
  · intro e he
    simp only [List.mem_cons,List.not_mem_nil,or_false] at he
    rcases he with rfl | rfl | rfl
    all_goals exact ⟨by decide,checkWire_sound _ (by decide)⟩
  · intro e he
    simp only [List.mem_cons,List.not_mem_nil,or_false] at he
    rcases he with rfl | rfl | rfl <;> decide

#print axioms batch_example
end IndexedFamilyNeighborCheck.Tests
