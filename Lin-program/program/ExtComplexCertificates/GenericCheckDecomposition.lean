import ExtComplexCertificates.GenericFreeComplexImport

namespace ExtComplexCertificates.GenericFreeComplex
open MilnorCertificates

/-- One source-generator slice; stored as a proposition so callers may prove
its individual product cells in separately checked declarations. -/
def SourceProducts (d : Data rank n) (c : Certificate n) (i : Fin n) : Prop :=
  ∀ j k, checkAll rank (d.edge i j) (d.edge j k) (c.products i j k) (c.witnesses i j k) = true

def SourceCancellation (c : Certificate n) (i : Fin n) : Prop :=
  ∀ k, checkCancellation c i k = true

/-- Assemble previously checked slices without reducing the full Boolean
conjunction in a single decide proof. The checker and its semantics are unchanged. -/
theorem check_of_sources (d : Data rank n) (c : Certificate n)
    (grading : checkGrading d = true) (products : ∀ i, SourceProducts d c i)
    (cancellation : ∀ i, SourceCancellation c i) : check d c = true := by
  simp only [check,Bool.and_eq_true,decide_eq_true_eq]
  exact ⟨⟨grading,products⟩,cancellation⟩

theorem valid_of_sources (d : Data rank n) (c : Certificate n)
    (grading : checkGrading d = true) (products : ∀ i, SourceProducts d c i)
    (cancellation : ∀ i, SourceCancellation c i) : Valid d :=
  check_sound d c (check_of_sources d c grading products cancellation)

theorem wire_valid_of_sources (w : Wire) (dimensions : checkDimensions w = true)
    (grading : checkGrading w.data = true) (products : ∀ i, SourceProducts w.data w.certificate i)
    (cancellation : ∀ i, SourceCancellation w.certificate i) : w.Valid := by
  apply checkWire_sound
  simp only [checkWire,Bool.and_eq_true]
  exact ⟨dimensions,check_of_sources w.data w.certificate grading products cancellation⟩

/-- `Fin.cases` joins a previously checked head cell with remaining cells.
This is proof composition, not another call to the checker. -/
theorem forall_fin_cons {P : Fin (n+1) → Prop} (head : P 0)
    (tail : ∀ i : Fin n, P i.succ) : ∀ i, P i := Fin.cases head tail

#print axioms wire_valid_of_sources
end ExtComplexCertificates.GenericFreeComplex
