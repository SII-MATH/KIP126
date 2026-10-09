import BranchReplayCertificates.MapColumns
import BranchReplayCertificates.ProductRefutation
import BranchReplayCertificates.CandidateReduction

namespace BranchReplayCertificates.MapRefutation
open LinearCertificates

def sourceMap : Matrix 0 3 := fun i _ => Fin.elim0 i
def targetMap : Matrix 2 4 := fun i j =>
  if i.val = 0 then j.val == 2 else j.val == 0
def tmfB3 : Matrix 2 1 := fun _ _ => true

theorem source_zero (x : Vec 3) : eval sourceMap x = zero := by
  funext i
  exact Fin.elim0 i

def Compatible (candidate : Vec 4) : Prop := InImage tmfB3 (eval targetMap candidate)

theorem compatibility_bits (candidate : Vec 4) (h : Compatible candidate) :
    candidate 0 = candidate 2 := by
  obtain ⟨w, hw⟩ := h
  have h0 := congrFun hw ⟨0, by decide⟩
  have h1 := congrFun hw ⟨1, by decide⟩
  change xor (w 0) false = xor false (xor false (xor (candidate 2) false)) at h0
  change xor (w 0) false = xor (candidate 0) false at h1
  simpa using h1.symm.trans h0

theorem excludes_two (optional : Bool) :
    ¬ Compatible (vector true true false optional) := by
  intro h
  have hh := compatibility_bits _ h
  change true = false at hh
  cases hh

/-- Both actual residual maps together constrain all candidates, not only six records. -/
theorem combined_affine (candidate : Vec 4)
    (cycle : candidate 0 = candidate 1)
    (leibniz : ProductRefutation.Compatible candidate)
    (naturality : Compatible candidate) :
    AdvancedRuleCertificates.Affine.Member uncertainty base candidate := by
  have hb0 := ProductRefutation.compatibility_forces_bit candidate leibniz
  have hb2 := compatibility_bits candidate naturality
  apply affine_reduction candidate cycle
  intro he
  simp only [excluded, List.mem_cons, List.not_mem_nil, or_false] at he
  rcases he with h | h | h | h | h | h
  all_goals subst candidate
  all_goals first | change false = true at hb0; cases hb0
                  | change true = false at hb2; cases hb2

end BranchReplayCertificates.MapRefutation
