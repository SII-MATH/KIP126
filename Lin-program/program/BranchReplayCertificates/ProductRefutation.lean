import BranchReplayCertificates.Products
import BranchReplayCertificates.GeneratedLeaves

namespace BranchReplayCertificates.ProductRefutation
open LinearCertificates Products

def residual : Vec 3 := fun i => i.val == 0
def earlierBoundaries : Matrix 3 2 := fun i j => i.val == j.val + 1

/-- Equality modulo earlier boundaries is the correct differential relation. -/
def Compatible (candidate : Vec 4) : Prop :=
  InImage earlierBoundaries (add residual (eval matrix25_150 candidate))

theorem compatibility_forces_bit (candidate : Vec 4) (h : Compatible candidate) :
    candidate 0 = true := by
  obtain ⟨w, hw⟩ := h
  have h0 := congrFun hw ⟨0, by decide⟩
  change false = xor true (xor (candidate 0) false) at h0
  cases hc : candidate 0 <;> simp_all

theorem excludes_four (candidate : Vec 4) (hz : candidate 0 = false) : ¬ Compatible candidate := by
  intro h
  have hh := compatibility_forces_bit candidate h
  rw [hz] at hh
  cases hh

-- The theorem states the conditional Leibniz obstruction, not a trusted log step.
theorem conditional_leibniz_refutation (candidate : Vec 4)
    (leibnizComparison : Compatible candidate) (candidateFirstBit : candidate 0 = false) : False :=
  excludes_four candidate candidateFirstBit leibnizComparison

end BranchReplayCertificates.ProductRefutation
