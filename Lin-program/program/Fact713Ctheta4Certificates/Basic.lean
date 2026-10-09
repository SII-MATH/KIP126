import PageTransitionCertificates.Import
namespace Fact713Ctheta4Certificates
open LinearCertificates ResolutionCertificates

/-- An invertible full basis determines a linear map on every vector. -/
theorem complete_basis_unique {B R : Matrix n n} {Y A D : Matrix k n}
    (hB : compose B R = identityMatrix n)
    (hA : compose A B = Y) (hD : compose D B = Y) :
    ∀ v, eval A v = eval D v := by
  intro v
  have hv : eval B (eval R v) = v := by
    rw [← eval_compose, hB, eval_identity]
  calc
    eval A v = eval A (eval B (eval R v)) := congrArg (eval A) hv.symm
    _ = eval D (eval B (eval R v)) := by
      rw [← eval_compose A B, ← eval_compose D B, hA, hD]
    _ = eval D v := congrArg (eval D) hv

/-- Only specified columns constrain a completion; unknown columns stay free. -/
def PartialCompletion (B : Matrix n n) (known : Fin n → Bool)
    (Y A : Matrix k n) : Prop :=
  ∀ j, known j = true → ∀ i, compose A B i j = Y i j
end Fact713Ctheta4Certificates
