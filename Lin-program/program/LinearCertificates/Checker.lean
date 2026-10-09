import LinearCertificates.Basic

namespace LinearCertificates

/-- A preimage is a constructive witness in the actual column span. -/
def checkImage (A : Matrix m n) (y : Vec m) (preimage : Vec n) : Bool :=
  decide (∀ i, eval A preimage i = y i)

theorem checkImage_sound (A : Matrix m n) (y : Vec m) (preimage : Vec n)
    (h : checkImage A y preimage = true) : InImage A y := by
  exact ⟨preimage, funext (of_decide_eq_true h)⟩

/-- A separating functional proves nonmembership in the whole column span. -/
def checkNotImage (A : Matrix m n) (y separator : Vec m) : Bool :=
  decide (dot separator y = true ∧ ∀ j, dot separator (fun i => A i j) = false)

theorem checkNotImage_sound (A : Matrix m n) (y separator : Vec m)
    (h : checkNotImage A y separator = true) : ¬ InImage A y := by
  obtain ⟨hy, hc⟩ := of_decide_eq_true h
  rintro ⟨x, hx⟩
  have hz := annihilates_image A separator hc x
  rw [hx, hy] at hz
  cases hz

def checkKernel (A : Matrix m n) (x : Vec n) : Bool :=
  decide (∀ i, eval A x i = false)

theorem checkKernel_sound (A : Matrix m n) (x : Vec n)
    (h : checkKernel A x = true) : InKernel A x := by
  exact funext (of_decide_eq_true h)

instance (A : Matrix m n) (y : Vec m) :
    LinProgramCertificates.CertificateVerifier (InImage A y) where
  Cert := Vec n
  check := checkImage A y
  sound := checkImage_sound A y

instance (A : Matrix m n) (y : Vec m) :
    LinProgramCertificates.CertificateVerifier (¬ InImage A y) where
  Cert := Vec m
  check := checkNotImage A y
  sound := checkNotImage_sound A y

instance (A : Matrix m n) (x : Vec n) :
    LinProgramCertificates.CertificateVerifier (InKernel A x) where
  Cert := Unit
  check := fun _ => checkKernel A x
  sound := fun _ => checkKernel_sound A x

/-- Two consecutive differentials form a complex precisely when every boundary
is a cycle. These are finite linear maps, without a topological realization assumption. -/
def IsComplex (outgoing : Matrix k m) (incoming : Matrix m n) : Prop :=
  ∀ x, eval outgoing (eval incoming x) = zero

def checkComplex (outgoing : Matrix k m) (incoming : Matrix m n) : Bool :=
  decide (∀ i j, dot (outgoing i) (fun r => incoming r j) = false)

theorem checkComplex_sound (outgoing : Matrix k m) (incoming : Matrix m n)
    (h : checkComplex outgoing incoming = true) : IsComplex outgoing incoming := by
  intro x
  funext i
  exact annihilates_image incoming (outgoing i) (of_decide_eq_true h i) x

instance (outgoing : Matrix k m) (incoming : Matrix m n) :
    LinProgramCertificates.CertificateVerifier (IsComplex outgoing incoming) where
  Cert := Unit
  check := fun _ => checkComplex outgoing incoming
  sound := fun _ => checkComplex_sound outgoing incoming

/-- A commuting square of actual linear maps. -/
def IsChainMap (d₁ : Matrix m n) (d₂ : Matrix q p)
    (f₁ : Matrix p n) (f₀ : Matrix q m) : Prop :=
  ∀ x, eval d₂ (eval f₁ x) = eval f₀ (eval d₁ x)

theorem dot_eval_congr (A : Matrix m n) (B : Matrix p n) (s : Vec m) (t : Vec p)
    (h : ∀ j, dot s (fun i => A i j) = dot t (fun i => B i j)) (x : Vec n) :
    dot s (eval A x) = dot t (eval B x) := by
  induction n with
  | zero => exact (dot_zero s).trans (dot_zero t).symm
  | succ n ih =>
    have ht := ih (fun i j => A i j.succ) (fun i j => B i j.succ)
      (fun j => h j.succ) (fun j => x j.succ)
    change dot s (add (fun i => A i 0 && x 0)
        (eval (fun i j => A i j.succ) (fun j => x j.succ))) =
      dot t (add (fun i => B i 0 && x 0)
        (eval (fun i j => B i j.succ) (fun j => x j.succ)))
    rw [dot_add, dot_add, ht]
    cases hx : x 0 with
    | false =>
      simp only [Bool.and_false]
      change xor (dot s zero) _ = xor (dot t zero) _
      rw [dot_zero, dot_zero]
    | true =>
      simp only [Bool.and_true]
      rw [h 0]

/-- Commutativity checked on every basis vector, polynomial in matrix dimensions. -/
def checkChainMap (d₁ : Matrix m n) (d₂ : Matrix q p)
    (f₁ : Matrix p n) (f₀ : Matrix q m) : Bool :=
  decide (∀ i j, dot (d₂ i) (fun r => f₁ r j) = dot (f₀ i) (fun r => d₁ r j))

theorem checkChainMap_sound (d₁ : Matrix m n) (d₂ : Matrix q p)
    (f₁ : Matrix p n) (f₀ : Matrix q m)
    (h : checkChainMap d₁ d₂ f₁ f₀ = true) : IsChainMap d₁ d₂ f₁ f₀ := by
  intro x
  funext i
  exact dot_eval_congr f₁ d₁ (d₂ i) (f₀ i) (of_decide_eq_true h i) x

instance (d₁ : Matrix m n) (d₂ : Matrix q p) (f₁ : Matrix p n) (f₀ : Matrix q m) :
    LinProgramCertificates.CertificateVerifier (IsChainMap d₁ d₂ f₁ f₀) where
  Cert := Unit
  check := fun _ => checkChainMap d₁ d₂ f₁ f₀
  sound := fun _ => checkChainMap_sound d₁ d₂ f₁ f₀

end LinearCertificates
