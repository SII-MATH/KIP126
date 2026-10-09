import LinearCertificates.Checker

namespace AdvancedRuleCertificates.Affine
open LinearCertificates

/-- Every coefficient vector is allowed, including unlisted combinations. -/
def Member (uncertainty : Matrix m n) (base value : Vec m) : Prop :=
  ∃ coefficients, add base (eval uncertainty coefficients) = value

def Excludes (uncertainty : Matrix m n) (base forbidden : Vec m) : Prop :=
  ∀ coefficients, add base (eval uncertainty coefficients) ≠ forbidden

def checkExclude (uncertainty : Matrix m n) (base forbidden separator : Vec m) : Bool :=
  checkNotImage uncertainty (add base forbidden) separator

theorem checkExclude_sound (uncertainty : Matrix m n) (base forbidden separator : Vec m)
    (h : checkExclude uncertainty base forbidden separator = true) :
    Excludes uncertainty base forbidden := by
  have hn := checkNotImage_sound uncertainty (add base forbidden) separator h
  intro coefficients he
  apply hn
  refine ⟨coefficients, ?_⟩
  funext i
  have hi := congrFun he i
  change xor (base i) (eval uncertainty coefficients i) = forbidden i at hi
  change eval uncertainty coefficients i = xor (base i) (forbidden i)
  cases hb : base i <;> cases hv : eval uncertainty coefficients i <;>
    cases hf : forbidden i <;> simp_all

theorem checkExclude_not_member (uncertainty : Matrix m n) (base forbidden separator : Vec m)
    (h : checkExclude uncertainty base forbidden separator = true) :
    ¬ Member uncertainty base forbidden := by
  rintro ⟨coefficients, he⟩
  exact checkExclude_sound uncertainty base forbidden separator h coefficients he

def checkMember (uncertainty : Matrix m n) (base value : Vec m)
    (coefficients : Vec n) : Bool :=
  decide (∀ i, add base (eval uncertainty coefficients) i = value i)

theorem checkMember_sound (uncertainty : Matrix m n) (base value : Vec m)
    (coefficients : Vec n) (h : checkMember uncertainty base value coefficients = true) :
    Member uncertainty base value :=
  ⟨coefficients, funext (of_decide_eq_true h)⟩

/-- A checked affine set has no zero value, uniformly over all choices. -/
theorem checkExclude_nonzero (uncertainty : Matrix m n) (base separator : Vec m)
    (h : checkExclude uncertainty base zero separator = true)
    (value : Vec m) (hv : Member uncertainty base value) : value ≠ zero := by
  obtain ⟨coefficients, he⟩ := hv
  rw [← he]
  exact checkExclude_sound uncertainty base zero separator h coefficients

instance (uncertainty : Matrix m n) (base forbidden : Vec m) :
    LinProgramCertificates.CertificateVerifier (Excludes uncertainty base forbidden) where
  Cert := Vec m
  check := checkExclude uncertainty base forbidden
  sound := checkExclude_sound uncertainty base forbidden

instance (uncertainty : Matrix m n) (base value : Vec m) :
    LinProgramCertificates.CertificateVerifier (Member uncertainty base value) where
  Cert := Vec n
  check := checkMember uncertainty base value
  sound := checkMember_sound uncertainty base value

-- A two-dimensional affine line containing e0 and e0+e1; neither is zero.
def sampleBase : Vec 2 := fun i => i.val == 0
def sampleUncertainty : Matrix 2 1 := fun i _ => i.val == 1
def sampleSeparator : Vec 2 := sampleBase

example : Excludes sampleUncertainty sampleBase zero := by
  lin_cert using sampleSeparator

example : Member sampleUncertainty sampleBase sampleBase := by
  lin_cert using (zero : Vec 1)

example : Member sampleUncertainty sampleBase (fun _ => true) := by
  lin_cert using (fun _ : Fin 1 => true)

example : checkExclude sampleUncertainty sampleBase sampleBase sampleSeparator = false := by
  decide

example : checkExclude sampleUncertainty sampleBase zero (fun _ => true) = false := by
  decide

end AdvancedRuleCertificates.Affine
