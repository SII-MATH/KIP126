import AffineRemainingSearch.Data
namespace AffineRemainingSearch.Kernel
open LinearCertificates PageTransitionCertificates ResolutionCertificates

/-- Completeness of the proposed cycles modulo incoming boundaries is a
semantic premise, not a consequence of an unknown database differential. -/
def KernelSpanned (outgoing : Matrix k m) (incoming : Matrix m n)
    (cycles : Matrix m h) : Prop :=
  ∀ x, InKernel outgoing x → ∃ z y, x = add (eval cycles z) (eval incoming y)

theorem nonzero_of_complete_kernel {outgoing : Matrix k m} {incoming : Matrix m n}
    {cycles : Matrix m h} (complete : KernelSpanned outgoing incoming cycles)
    (x : Vec m)
    (outside : ¬ ∃ z y, x = add (eval cycles z) (eval incoming y)) :
    eval outgoing x ≠ zero := fun hx => outside (complete x hx)

def survivor : Matrix 2 1 := fun i _ => i.val == 0
def incoming : Matrix 2 1 := fun _ _ => false
def named : Vec 2 := fun i => i.val == 1

theorem named_outside : ¬ ∃ z y, named = add (eval survivor z) (eval incoming y) := by decide

theorem row2708_value (outgoing : Matrix 1 2)
    (complete : KernelSpanned outgoing incoming survivor) :
    eval outgoing named = (fun _ => true) := by
  have hn := nonzero_of_complete_kernel complete named named_outside
  exact (show ∀ v : Vec 1, v ≠ zero → v = (fun _ => true) from by decide) _ hn

theorem row2708_unique_matrix (outgoing : Matrix 1 2)
    (survivorCycle : InKernel outgoing (fun i => i.val == 0))
    (complete : KernelSpanned outgoing incoming survivor) :
    outgoing = matrixOf 1 2 Data.choice1.outgoing := by
  have hn := row2708_value outgoing complete
  exact (show ∀ d : Matrix 1 2,
    eval d (fun i => i.val == 0) = zero → eval d named = (fun _ => true) →
    d = matrixOf 1 2 Data.choice1.outgoing from by decide) outgoing survivorCycle hn

theorem zero_choice_not_complete :
    ¬ KernelSpanned (matrixOf 1 2 Data.choice0.outgoing) incoming survivor := by
  intro h
  have hv := row2708_value _ h
  have hi := congrFun hv 0
  contradiction

#print axioms nonzero_of_complete_kernel
#print axioms row2708_unique_matrix
end AffineRemainingSearch.Kernel
