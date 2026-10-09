import AggregateTargetInventory.EventAudit.Events
namespace AggregateTargetInventory.EventAudit.StageBasic
open LinearCertificates PageTransitionCertificates ResolutionCertificates

theorem source_not_kernel {A : Matrix m n} {x : Vec n} {y : Vec m}
    (h : eval A x = y) (hn : y ≠ zero) : ¬ InKernel A x := by
  intro hk
  exact hn (h.symm.trans hk)

theorem image_cycle {A : Matrix m n} {B : Matrix k m} (hc : IsComplex B A)
    {x : Vec n} {y : Vec m} (h : eval A x = y) : InKernel B y := by
  rw [← h]
  exact hc x

theorem image_zero_in_homology {A : Matrix m n} {B : Matrix k m} (hc : IsComplex B A)
    {x : Vec n} {y : Vec m} (h : eval A x = y) :
    (Quot.mk _ (⟨y,image_cycle hc h⟩ : Cycle B) : Homology B A) =
      Quot.mk _ (⟨zero,eval_zero B⟩ : Cycle B) := by
  apply Quot.sound
  change InImage A (add y zero)
  rw [add_zero]
  exact ⟨x,h⟩
end AggregateTargetInventory.EventAudit.StageBasic
