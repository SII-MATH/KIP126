import PageTransitionCertificates.Import
import PageTransitionCertificates.Quotient
namespace AllClaimZeroTargetCertificates
open LinearCertificates PageTransitionCertificates

theorem zero_quotient {outgoing : Matrix k m} {incoming : Matrix m n}
    (c : Comparison k m n 0) (hc : HomologyComparison outgoing incoming c)
    (x : Homology outgoing incoming) :
    x = Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _) := by
  let e := homologyEquivalence outgoing incoming c hc
  have h : e.toCoordinates x = e.toCoordinates (Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _)) := by
    funext i
    exact Fin.elim0 i
  have hh := congrArg e.fromCoordinates h
  simpa only [e.leftInverse] using hh

/-- Every differential to a checked zero quotient vanishes, independently of its producer. -/
theorem differential_to_zero {X : Type} {outgoing : Matrix k m} {incoming : Matrix m n}
    (c : Comparison k m n 0) (hc : HomologyComparison outgoing incoming c)
    (d : X → Homology outgoing incoming) (x : X) :
    d x = Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _) := zero_quotient c hc (d x)
end AllClaimZeroTargetCertificates
