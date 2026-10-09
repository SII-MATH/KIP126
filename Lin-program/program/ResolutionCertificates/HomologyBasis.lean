import ResolutionCertificates.Basic

namespace ResolutionCertificates
open LinearCertificates

def outer (x : Vec m) (coefficient : Vec m) : Matrix m m :=
  fun i j => x i && coefficient j

theorem eval_outer (x coefficient y : Vec m) :
    eval (outer x coefficient) y = fun i => x i && dot coefficient y := by
  funext i
  cases hx : x i with
  | false =>
    change dot (fun j => x i && coefficient j) y = _
    simp only [hx, Bool.false_and]
    exact zero_dot y
  | true =>
    change dot (fun j => x i && coefficient j) y = _
    simp only [hx, Bool.true_and]

theorem add_self_cancel (a b : Vec m) : add (add a b) b = a := by
  funext i
  change xor (xor (a i) (b i)) (b i) = a i
  cases a i <;> cases b i <;> rfl

/-- The nonzero class x spans all homology, over arbitrary vectors rather than
only named records. The displayed dichotomy is the exact two-element F2 span. -/
def IsHomologyBasisOne (outgoing : Matrix k m) (incoming : Matrix m n) (x : Vec m) : Prop :=
  IsComplex outgoing incoming ∧ InKernel outgoing x ∧ ¬ InImage incoming x ∧
  ∀ y, InKernel outgoing y → InImage incoming y ∨ InImage incoming (add y x)

structure HomologyBasisCertificate (k m n : Nat) where
  contraction : Contraction k m n
  coefficient : Vec m

def checkHomologyBasis (outgoing : Matrix k m) (incoming : Matrix m n)
    (x : Vec m) (c : HomologyBasisCertificate k m n) : Bool :=
  checkComplex outgoing incoming && checkKernel outgoing x &&
  checkNotImage incoming x c.coefficient && decide (∀ i j,
    matrixAdd
      (matrixAdd (compose incoming c.contraction.up) (compose c.contraction.down outgoing))
      (outer x c.coefficient) i j = identityMatrix m i j)

theorem checkHomologyBasis_sound (outgoing : Matrix k m) (incoming : Matrix m n)
    (x : Vec m) (c : HomologyBasisCertificate k m n)
    (h : checkHomologyBasis outgoing incoming x c = true) :
    IsHomologyBasisOne outgoing incoming x := by
  simp only [checkHomologyBasis, Bool.and_eq_true] at h
  obtain ⟨⟨⟨hcomplex, hcycle⟩, hnonzero⟩, hidentity⟩ := h
  refine ⟨checkComplex_sound _ _ hcomplex, checkKernel_sound _ _ hcycle,
    checkNotImage_sound _ _ _ hnonzero, ?_⟩
  intro y hy
  have he : matrixAdd
      (matrixAdd (compose incoming c.contraction.up) (compose c.contraction.down outgoing))
      (outer x c.coefficient) = identityMatrix m :=
    funext fun i => funext fun j => of_decide_eq_true hidentity i j
  have heval := congrArg (fun A => eval A y) he
  rw [eval_matrixAdd, eval_matrixAdd, eval_compose, eval_compose,
    eval_identity, hy, eval_zero, add_zero, eval_outer] at heval
  cases hc : dot c.coefficient y with
  | false =>
    left
    refine ⟨eval c.contraction.up y, ?_⟩
    simp only [hc, Bool.and_false] at heval
    exact (add_zero _).symm.trans heval
  | true =>
    right
    refine ⟨eval c.contraction.up y, ?_⟩
    simp only [hc, Bool.and_true] at heval
    have ha := congrArg (fun z => add z x) heval
    rw [add_self_cancel] at ha
    exact ha

instance (outgoing : Matrix k m) (incoming : Matrix m n) (x : Vec m) :
    LinProgramCertificates.CertificateVerifier (IsHomologyBasisOne outgoing incoming x) where
  Cert := HomologyBasisCertificate k m n
  check := checkHomologyBasis outgoing incoming x
  sound := checkHomologyBasis_sound outgoing incoming x

/-- F2 -> F2^3 -> F2, with one boundary, one outgoing coordinate and one survivor. -/
def oneOut : Matrix 1 3 := fun _ j => decide (j.val = 1)
def oneIn : Matrix 3 1 := fun i _ => decide (i.val = 0)
def oneSurvivor : Vec 3 := fun i => decide (i.val = 2)
def oneCertificate : HomologyBasisCertificate 1 3 1 :=
  ⟨⟨fun _ j => decide (j.val = 0), fun i _ => decide (i.val = 1)⟩, oneSurvivor⟩

theorem exampleOneDimensional : IsHomologyBasisOne oneOut oneIn oneSurvivor := by
  lin_cert using oneCertificate

example : checkHomologyBasis oneOut oneIn (fun i => decide (i.val = 0)) oneCertificate = false := by
  decide

#print axioms ResolutionCertificates.checkHomologyBasis_sound

end ResolutionCertificates
