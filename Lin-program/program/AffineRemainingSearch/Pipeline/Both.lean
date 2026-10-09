import AffineRemainingSearch.Pipeline.Branch0
import AffineRemainingSearch.Pipeline.Branch1
namespace AffineRemainingSearch.Pipeline.Both
open IndexedFamilyCertificates
def family (b : Bool) : Family := if b then Branch1.family else Branch0.family
def certificate (b : Bool) : BoundWire := if b then Branch1.certificate else Branch0.certificate
theorem each_branch (b : Bool) : DifferentialAt (family b) ⟨"S0",3,9,134⟩ [false,false,true] [true] := by
  cases b
  · exact Branch0.result
  · exact Branch1.result
theorem each_coherent (b : Bool) : Coherent (family b) := by
  cases b
  · exact Branch0.family_coherent
  · exact Branch1.family_coherent
example : checkBound Branch0.family Branch1.certificate = false := by decide
example : checkBound Branch1.family Branch0.certificate = false := by decide
#print axioms each_branch
#print axioms each_coherent
end AffineRemainingSearch.Pipeline.Both
