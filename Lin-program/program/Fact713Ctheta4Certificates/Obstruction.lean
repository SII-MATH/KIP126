import Fact713Ctheta4Certificates.Data
namespace Fact713Ctheta4Certificates.Obstruction
open LinearCertificates ResolutionCertificates Data

def e0 : Vec 6 := fun i => i.val == 0

theorem target_cycle_for_every_completion (A : Matrix 5 6)
    (h : PartialCompletion targetBasis targetKnown targetImages A) :
    InKernel A e0 := by
  funext i
  have hc := h ⟨5,by decide⟩ (by decide) i
  have hy : ∀ i, targetImages i ⟨5,by decide⟩ = false := by decide
  rw [hy] at hc
  change dot (A i) (fun j => targetBasis j ⟨5,by decide⟩) = false at hc
  have hb : (fun j => targetBasis j ⟨5,by decide⟩) = e0 := by
    funext j
    exact (show ∀ j, targetBasis j ⟨5,by decide⟩ = e0 j from by decide) j
  rw [hb] at hc
  exact hc

theorem e0_not_boundary : ¬ InImage incomingD2 e0 := by
  rintro ⟨v,hv⟩
  have h := congrFun hv ⟨0,by decide⟩
  have hr : incomingD2 ⟨0,by decide⟩ = zero := by
    funext j
    exact (show ∀ j, incomingD2 ⟨0,by decide⟩ j = zero j from by decide) j
  change dot (incomingD2 ⟨0,by decide⟩) v = true at h
  rw [hr, zero_dot] at h
  contradiction

/-- No admissible choice for the unknown row can make this target exact. -/
theorem target_not_exact (A : Matrix 5 6)
    (h : PartialCompletion targetBasis targetKnown targetImages A) :
    ¬ ExactAt A incomingD2 := by
  intro he
  exact e0_not_boundary (he.2 e0 (target_cycle_for_every_completion A h))

#print axioms target_not_exact
end Fact713Ctheta4Certificates.Obstruction
