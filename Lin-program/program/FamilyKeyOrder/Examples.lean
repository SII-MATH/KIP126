import FamilyKeyOrder.Basic

namespace FamilyKeyOrder.Tests
open IndexedFamilyCertificates PageTransitionCertificates

private def block : WireComparison := ⟨1,0,0,0,0,[],[],[],[],[],[]⟩
private def entry (page : Nat) (object : String := "S0") : Entry := ⟨⟨object,page,-2,-1⟩,block⟩
private def code (key : Key) : Nat := key.page

example : checkOrder [] = true := by decide
example : checkOrder [3] = true := by decide
example : checkOrder [0,2,5,100] = true := by decide
example : checkOrder [2,1] = false := by decide
example : checkOrder [2,2] = false := by decide
example : checkOrder [1,3,2,4] = false := by decide
example : checkKeyOrder code [entry 2,entry 3,entry 5] = true := by decide
example : UniqueKeys [entry 2,entry 3,entry 5] := check_key_order_sound code _ (by decide)
example : code (entry 2 "S0").key = code (entry 2 "C2").key := by decide
example : checkKeyOrder code [entry 2 "S0",entry 2 "C2"] = false := by decide
example : UniqueKeys [entry 2 "S0",entry 2 "C2"] := by decide
example : checkKeyOrder code [entry 2,entry 3,entry 2] = false := by decide
example : diagnose code [entry 2,entry 3,entry 2] =
    some "family.entries[1,2]: key codes are not strictly increasing" := by decide

end FamilyKeyOrder.Tests
