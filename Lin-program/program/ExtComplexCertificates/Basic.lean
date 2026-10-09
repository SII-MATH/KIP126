import ResolutionCertificates.HomologyBasis

namespace ExtComplexCertificates
open LinearCertificates ResolutionCertificates

/-- Hom(-,F2) sends a linear map to its transpose in the dual bases. -/
def dual (a : Matrix m n) : Matrix n m := fun j i => a i j

theorem transpose_twice (a : Matrix m n) : dual (dual a) = a := rfl

/-- Evaluation pairing realizes precomposition, not merely a transposed array. -/
theorem dual_pairing (a : Matrix m n) (f : Vec m) (x : Vec n) :
    dot (eval (dual a) f) x = dot f (eval a x) := by
  rw [dot_comm]
  have he : eval (dual a) f = fun j => dot f (fun i => a i j) := by
    funext j
    exact dot_comm _ _
  rw [he]
  clear he
  induction n with
  | zero => exact (dot_zero f).symm
  | succ n ih =>
    change xor (x 0 && dot f (fun i => a i 0))
      (dot (fun j => x j.succ) (fun j => dot f (fun i => a i j.succ))) =
      dot f (add (fun i => a i 0 && x 0)
        (eval (fun i j => a i j.succ) (fun j => x j.succ)))
    rw [dot_add, ih]
    cases hx : x 0 with
    | false =>
      simp only [Bool.false_and, Bool.and_false]
      change xor false _ = xor (dot f zero) _
      rw [dot_zero]
    | true => simp only [Bool.true_and, Bool.and_true]

/-- The dual differential reverses the two consecutive arrows. -/
def checkDualComplex (outgoing : Matrix k m) (incoming : Matrix m n) : Bool :=
  checkComplex outgoing incoming

theorem checkDualComplex_sound (outgoing : Matrix k m) (incoming : Matrix m n)
    (h : checkDualComplex outgoing incoming = true) :
    IsComplex (dual incoming) (dual outgoing) := by
  apply checkComplex_sound
  have hh : ∀ i j, dot (outgoing i) (fun r => incoming r j) = false := of_decide_eq_true h
  apply decide_eq_true
  intro i j
  change dot (fun r => incoming r i) (outgoing j) = false
  rw [dot_comm]
  exact hh j i

/-- Finite cochain data obtained by Hom(-, F2) on a specified chain segment.
No claim that the chain segment resolves a Steenrod module is bundled here. -/
def HomCycle (_outgoing : Matrix k m) (incoming : Matrix m n) (f : Vec m) : Prop :=
  InKernel (dual incoming) f

def HomBoundary (outgoing : Matrix k m) (_incoming : Matrix m n) (f : Vec m) : Prop :=
  InImage (dual outgoing) f

/-- A cocycle is precisely a functional vanishing on all original boundaries. -/
theorem homCycle_vanishes (outgoing : Matrix k m) (incoming : Matrix m n)
    (f : Vec m) (hf : HomCycle outgoing incoming f) (x : Vec n) :
    dot f (eval incoming x) = false := by
  rw [← dual_pairing, hf, zero_dot]

def NonzeroHomClass (outgoing : Matrix k m) (incoming : Matrix m n) (f : Vec m) : Prop :=
  IsComplex (dual incoming) (dual outgoing) ∧
  HomCycle outgoing incoming f ∧ ¬ HomBoundary outgoing incoming f

def checkNonzeroHomClass (outgoing : Matrix k m) (incoming : Matrix m n)
    (f separator : Vec m) : Bool :=
  checkDualComplex outgoing incoming && checkKernel (dual incoming) f &&
    checkNotImage (dual outgoing) f separator

theorem checkNonzeroHomClass_sound (outgoing : Matrix k m) (incoming : Matrix m n)
    (f separator : Vec m) (h : checkNonzeroHomClass outgoing incoming f separator = true) :
    NonzeroHomClass outgoing incoming f := by
  simp only [checkNonzeroHomClass, Bool.and_eq_true] at h
  exact ⟨checkDualComplex_sound _ _ h.1.1, checkKernel_sound _ _ h.1.2,
    checkNotImage_sound _ _ _ h.2⟩

instance (outgoing : Matrix k m) (incoming : Matrix m n) (f : Vec m) :
    LinProgramCertificates.CertificateVerifier (NonzeroHomClass outgoing incoming f) where
  Cert := Vec m
  check := checkNonzeroHomClass outgoing incoming f
  sound := checkNonzeroHomClass_sound outgoing incoming f

end ExtComplexCertificates
