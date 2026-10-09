import ExtComplexCertificates.Basic

namespace ExtComplexCertificates
open LinearCertificates ResolutionCertificates

/-- A specified finite family of linear operators; algebra presentation laws
are separate obligations, not silently assumed by this type. -/
abbrev Actions (generators dimension : Nat) := Fin generators → Matrix dimension dimension

/-- Equivariance under every specified operator, on every input vector. -/
def Equivariant (source : Actions a n) (target : Actions a m) (f : Matrix m n) : Prop :=
  ∀ g x, eval f (eval (source g) x) = eval (target g) (eval f x)

def checkEquivariant (source : Actions a n) (target : Actions a m) (f : Matrix m n) : Bool :=
  decide (∀ g : Fin a, checkChainMap (source g) (target g) f f = true)

theorem checkEquivariant_sound (source : Actions a n) (target : Actions a m)
    (f : Matrix m n) (h : checkEquivariant source target f = true) :
    Equivariant source target f := by
  intro g x
  exact (checkChainMap_sound _ _ _ _ (of_decide_eq_true h g) x).symm

/-- Precomposition by an equivariant differential preserves the restricted
space of equivariant Hom maps. This quantifies all vectors, not basis labels. -/
theorem equivariant_precompose (source : Actions a n) (middle : Actions a m)
    (target : Actions a p) (d : Matrix m n) (f : Matrix p m)
    (hd : Equivariant source middle d) (hf : Equivariant middle target f) :
    Equivariant source target (compose f d) := by
  intro g x
  rw [eval_compose, hd g x, hf g (eval d x), eval_compose]

/-- The actual restricted Hom carrier consists of matrices together with an
equivariance proof. No arbitrary proposition marker replaces the commutation law. -/
def EquivariantHom (source : Actions a n) (target : Actions a m) :=
  { f : Matrix m n // Equivariant source target f }

def homDifferential (source : Actions a n) (middle : Actions a m)
    (target : Actions a p) (d : Matrix m n) (hd : Equivariant source middle d)
    (f : EquivariantHom middle target) : EquivariantHom source target :=
  ⟨compose f.val d, equivariant_precompose source middle target d f.val hd f.property⟩

/-- Restricted Hom differentials square to zero when the original differentials
form a complex. Equality is equality of maps on all inputs. -/
theorem homDifferential_squared (d₀ : Matrix k m) (d₁ : Matrix m n)
    (h : IsComplex d₀ d₁) (f : Matrix p k) (x : Vec n) :
    eval (compose (compose f d₀) d₁) x = zero := by
  rw [eval_compose, eval_compose, h x, eval_zero]

def checkEquivariantComplex (a₀ : Actions a k) (a₁ : Actions a m) (a₂ : Actions a n)
    (d₀ : Matrix k m) (d₁ : Matrix m n) : Bool :=
  checkComplex d₀ d₁ && checkEquivariant a₁ a₀ d₀ && checkEquivariant a₂ a₁ d₁

def EquivariantComplex (a₀ : Actions a k) (a₁ : Actions a m) (a₂ : Actions a n)
    (d₀ : Matrix k m) (d₁ : Matrix m n) : Prop :=
  IsComplex d₀ d₁ ∧ Equivariant a₁ a₀ d₀ ∧ Equivariant a₂ a₁ d₁

theorem checkEquivariantComplex_sound (a₀ : Actions a k) (a₁ : Actions a m) (a₂ : Actions a n)
    (d₀ : Matrix k m) (d₁ : Matrix m n)
    (h : checkEquivariantComplex a₀ a₁ a₂ d₀ d₁ = true) : EquivariantComplex a₀ a₁ a₂ d₀ d₁ := by
  simp only [checkEquivariantComplex, Bool.and_eq_true] at h
  exact ⟨checkComplex_sound _ _ h.1.1, checkEquivariant_sound _ _ _ h.1.2,
    checkEquivariant_sound _ _ _ h.2⟩

instance (source : Actions a n) (target : Actions a m) (f : Matrix m n) :
    LinProgramCertificates.CertificateVerifier (Equivariant source target f) where
  Cert := Unit
  check := fun _ => checkEquivariant source target f
  sound := fun _ => checkEquivariant_sound source target f

instance (a₀ : Actions a k) (a₁ : Actions a m) (a₂ : Actions a n)
    (d₀ : Matrix k m) (d₁ : Matrix m n) :
    LinProgramCertificates.CertificateVerifier (EquivariantComplex a₀ a₁ a₂ d₀ d₁) where
  Cert := Unit
  check := fun _ => checkEquivariantComplex a₀ a₁ a₂ d₀ d₁
  sound := fun _ => checkEquivariantComplex_sound a₀ a₁ a₂ d₀ d₁

end ExtComplexCertificates
