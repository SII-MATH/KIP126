import ResolutionCertificates.Basic

namespace StaircaseCertificates
open LinearCertificates ResolutionCertificates

/-- An invertible change of basis is checked on both sides. -/
structure BasisCertificate (n : Nat) where
  basis : Matrix n n
  inverse : Matrix n n

def checkBasis (c : BasisCertificate n) : Bool :=
  decide (∀ i j, compose c.basis c.inverse i j = identityMatrix n i j) &&
  decide (∀ i j, compose c.inverse c.basis i j = identityMatrix n i j)

def IsBasis (c : BasisCertificate n) : Prop :=
  (∀ x, eval c.basis (eval c.inverse x) = x) ∧
  (∀ x, eval c.inverse (eval c.basis x) = x)

theorem checkBasis_sound (c : BasisCertificate n) (h : checkBasis c = true) : IsBasis c := by
  simp only [checkBasis, Bool.and_eq_true, decide_eq_true_eq] at h
  constructor
  · intro x
    have he : compose c.basis c.inverse = identityMatrix n :=
      funext fun i => funext fun j => h.1 i j
    rw [← eval_compose, he, eval_identity]
  · intro x
    have he : compose c.inverse c.basis = identityMatrix n :=
      funext fun i => funext fun j => h.2 i j
    rw [← eval_compose, he, eval_identity]

/-- Membership in a selected span is quantified over arbitrary coefficients. -/
def InSelectedSpan (basis : Matrix n n) (selected : Fin n → Bool) (x : Vec n) : Prop :=
  ∃ coefficients, (∀ i, selected i = false → coefficients i = false) ∧
    eval basis coefficients = x

def checkSelected (c : BasisCertificate n) (selected : Fin n → Bool) (x : Vec n) : Bool :=
  checkBasis c && decide (∀ i, selected i = false → eval c.inverse x i = false)

theorem selected_iff_coordinates (c : BasisCertificate n) (hc : IsBasis c)
    (selected : Fin n → Bool) (x : Vec n) :
    InSelectedSpan c.basis selected x ↔
      ∀ i, selected i = false → eval c.inverse x i = false := by
  constructor
  · rintro ⟨coefficients, hs, hx⟩
    rw [← hx, hc.2]
    exact hs
  · intro hs
    exact ⟨eval c.inverse x, hs, hc.1 x⟩

theorem checkSelected_sound (c : BasisCertificate n) (selected : Fin n → Bool) (x : Vec n)
    (h : checkSelected c selected x = true) : InSelectedSpan c.basis selected x := by
  simp only [checkSelected, Bool.and_eq_true, decide_eq_true_eq] at h
  exact (selected_iff_coordinates c (checkBasis_sound c h.1) selected x).2 h.2

/-- A single excluded nonzero coordinate proves nonmembership in the whole span. -/
def checkNotSelected (c : BasisCertificate n) (selected : Fin n → Bool) (x : Vec n)
    (index : Fin n) : Bool :=
  checkBasis c && decide (selected index = false) && eval c.inverse x index

theorem checkNotSelected_sound (c : BasisCertificate n) (selected : Fin n → Bool) (x : Vec n)
    (index : Fin n) (h : checkNotSelected c selected x index = true) :
    ¬ InSelectedSpan c.basis selected x := by
  simp only [checkNotSelected, Bool.and_eq_true, decide_eq_true_eq] at h
  intro hx
  have hz := (selected_iff_coordinates c (checkBasis_sound c h.1.1) selected x).1 hx index h.1.2
  rw [h.2] at hz
  contradiction

instance (c : BasisCertificate n) : LinProgramCertificates.CertificateVerifier (IsBasis c) where
  Cert := Unit
  check := fun _ => checkBasis c
  sound := fun _ => checkBasis_sound c

instance (c : BasisCertificate n) (selected : Fin n → Bool) (x : Vec n) :
    LinProgramCertificates.CertificateVerifier (InSelectedSpan c.basis selected x) where
  Cert := Unit
  check := fun _ => checkSelected c selected x
  sound := fun _ => checkSelected_sound c selected x

end StaircaseCertificates
