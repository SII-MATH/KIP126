import StaircaseCertificates.Survival

namespace StaircaseCertificates
open LinearCertificates

theorem selectedSpan_mono (basis : Matrix n n) (a b : Fin n → Bool)
    (h : ∀ i, a i = true → b i = true) :
    ∀ x, InSelectedSpan basis a x → InSelectedSpan basis b x := by
  rintro x ⟨v, hv, hx⟩
  refine ⟨v, ?_, hx⟩
  intro i hi
  apply hv i
  cases ha : a i
  · rfl
  · have hb := h i ha
    rw [hi] at hb
    contradiction

/-- Necessary filtration laws on a bounded interval; these do not identify an Adams tower. -/
def CoherentThrough (s : FilteredModel n) (last : Nat) : Prop :=
  IsBasis s.basis ∧
  (∀ r, r ≤ last → ∀ x,
    InSelectedSpan s.basis.basis (s.boundaryCoordinates r) x →
    InSelectedSpan s.basis.basis (s.cycleCoordinates r) x) ∧
  (∀ r, r < last → ∀ x,
    InSelectedSpan s.basis.basis (s.cycleCoordinates (r + 1)) x →
    InSelectedSpan s.basis.basis (s.cycleCoordinates r) x) ∧
  (∀ r, r < last → ∀ x,
    InSelectedSpan s.basis.basis (s.boundaryCoordinates r) x →
    InSelectedSpan s.basis.basis (s.boundaryCoordinates (r + 1)) x)

def checkCoherent (s : FilteredModel n) (last : Nat) : Bool :=
  checkBasis s.basis &&
  (List.range (last + 1)).all (fun r => decide (∀ i,
    s.boundaryCoordinates r i = true → s.cycleCoordinates r i = true)) &&
  (List.range last).all (fun r => decide (∀ i,
    s.cycleCoordinates (r + 1) i = true → s.cycleCoordinates r i = true)) &&
  (List.range last).all (fun r => decide (∀ i,
    s.boundaryCoordinates r i = true → s.boundaryCoordinates (r + 1) i = true))

theorem checkCoherent_sound (s : FilteredModel n) (last : Nat)
    (h : checkCoherent s last = true) : CoherentThrough s last := by
  simp only [checkCoherent, Bool.and_eq_true] at h
  refine ⟨checkBasis_sound _ h.1.1.1, ?_, ?_, ?_⟩
  · intro r hr
    apply selectedSpan_mono
    exact of_decide_eq_true (List.all_eq_true.mp h.1.1.2 r
      (List.mem_range.mpr (by omega)))
  · intro r hr
    apply selectedSpan_mono
    exact of_decide_eq_true (List.all_eq_true.mp h.1.2 r (List.mem_range.mpr hr))
  · intro r hr
    apply selectedSpan_mono
    exact of_decide_eq_true (List.all_eq_true.mp h.2 r (List.mem_range.mpr hr))

instance (s : FilteredModel n) (last : Nat) :
    LinProgramCertificates.CertificateVerifier (CoherentThrough s last) where
  Cert := Unit
  check := fun _ => checkCoherent s last
  sound := fun _ => checkCoherent_sound s last

end StaircaseCertificates
