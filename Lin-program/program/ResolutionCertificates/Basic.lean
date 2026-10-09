import LinearCertificates.Checker

namespace ResolutionCertificates
open LinearCertificates

def identityMatrix (n : Nat) : Matrix n n := fun i j => decide (i = j)
def compose (A : Matrix l m) (B : Matrix m n) : Matrix l n :=
  fun i j => dot (A i) (fun r => B r j)
def matrixAdd (A B : Matrix m n) : Matrix m n := fun i j => xor (A i j) (B i j)

theorem dot_add_left (s t x : Vec n) : dot (add s t) x = xor (dot s x) (dot t x) := by
  induction n with
  | zero => rfl
  | succ n ih =>
    simp only [dot, add]
    rw [show dot (fun i => xor (s i.succ) (t i.succ)) (fun i => x i.succ) =
      xor (dot (fun i => s i.succ) (fun i => x i.succ))
        (dot (fun i => t i.succ) (fun i => x i.succ)) from ih _ _ _]
    generalize s 0 = a, t 0 = b, x 0 = c,
      dot (fun i => s i.succ) (fun i => x i.succ) = d,
      dot (fun i => t i.succ) (fun i => x i.succ) = e
    cases a <;> cases b <;> cases c <;> cases d <;> cases e <;> rfl

theorem dot_basis (i : Fin n) (x : Vec n) :
    dot (fun j => decide (i = j)) x = x i := by
  induction n with
  | zero => exact Fin.elim0 i
  | succ n ih =>
    refine Fin.cases ?_ (fun i => ?_) i
    · simp only [dot, decide_true, Bool.true_and]
      have hz : (fun j : Fin n => decide ((0 : Fin (n + 1)) = j.succ)) = zero := by
        funext j
        simp only [zero, decide_eq_false_iff_not]
        exact Fin.ne_of_val_ne (by change 0 ≠ j.val + 1; omega)
      rw [hz, zero_dot, Bool.xor_false]
    · simp only [dot]
      have hz : decide (i.succ = (0 : Fin (n + 1))) = false := by
        simp only [decide_eq_false_iff_not]
        exact Fin.ne_of_val_ne (by change i.val + 1 ≠ 0; omega)
      rw [hz, Bool.false_and, Bool.false_xor]
      have he : (fun j : Fin n => decide (i.succ = j.succ)) =
          (fun j : Fin n => decide (i = j)) := by
        funext j
        simp
      rw [he]
      exact ih i (fun j => x j.succ)

theorem eval_identity (x : Vec n) : eval (identityMatrix n) x = x := by
  funext i
  exact dot_basis i x

theorem eval_matrixAdd (A B : Matrix m n) (x : Vec n) :
    eval (matrixAdd A B) x = add (eval A x) (eval B x) := by
  funext i
  exact dot_add_left _ _ _

theorem dot_comm (s t : Vec n) : dot s t = dot t s := by
  induction n with
  | zero => rfl
  | succ n ih => simp only [dot, Bool.and_comm]; rw [ih]

theorem add_zero (x : Vec n) : add x zero = x := by
  funext i
  exact Bool.xor_false _

theorem eval_compose (A : Matrix l m) (B : Matrix m n) (x : Vec n) :
    eval (compose A B) x = eval A (eval B x) := by
  funext i
  have h := dot_eval_congr (identityMatrix n) B (compose A B i) (A i) ?_ x
  · change dot (compose A B i) x = dot (A i) (eval B x)
    simpa only [eval_identity] using h
  intro j
  change dot (compose A B i) (fun r => decide (r = j)) = compose A B i j
  rw [dot_comm]
  have he : (fun r : Fin n => decide (r = j)) = (fun r => decide (j = r)) := by
    funext r
    simp only [eq_comm]
  rw [he, dot_basis]

/-- Exactness at the middle vector space, including the complex condition. -/
def ExactAt (outgoing : Matrix k m) (incoming : Matrix m n) : Prop :=
  IsComplex outgoing incoming ∧ ∀ x, InKernel outgoing x → InImage incoming x

/-- d_in h_up + h_down d_out = 1 at the middle vector space. -/
structure Contraction (k m n : Nat) where
  up : Matrix n m
  down : Matrix m k

def checkContraction (outgoing : Matrix k m) (incoming : Matrix m n)
    (c : Contraction k m n) : Bool :=
  checkComplex outgoing incoming && decide (∀ i j,
    matrixAdd (compose incoming c.up) (compose c.down outgoing) i j =
      identityMatrix m i j)

theorem checkContraction_sound (outgoing : Matrix k m) (incoming : Matrix m n)
    (c : Contraction k m n) (h : checkContraction outgoing incoming c = true) :
    ExactAt outgoing incoming := by
  simp only [checkContraction, Bool.and_eq_true] at h
  obtain ⟨hcomplex, hidentity⟩ := h
  refine ⟨checkComplex_sound _ _ hcomplex, ?_⟩
  intro x hx
  refine ⟨eval c.up x, ?_⟩
  have he : matrixAdd (compose incoming c.up) (compose c.down outgoing) =
      identityMatrix m := funext fun i => funext fun j => of_decide_eq_true hidentity i j
  have heval := congrArg (fun A => eval A x) he
  rw [eval_matrixAdd, eval_compose, eval_compose, eval_identity, hx, eval_zero] at heval
  simpa only [add_zero] using heval

instance (outgoing : Matrix k m) (incoming : Matrix m n) :
    LinProgramCertificates.CertificateVerifier (ExactAt outgoing incoming) where
  Cert := Contraction k m n
  check := checkContraction outgoing incoming
  sound := checkContraction_sound outgoing incoming

/-- Maps induce the same class on cycles if their difference is an explicit
boundary there. Characteristic two turns subtraction into addition. -/
def AgreeOnHomology (outgoing : Matrix k m) (targetIncoming : Matrix q p)
    (f g : Matrix q m) : Prop :=
  ∀ x, InKernel outgoing x → InImage targetIncoming (add (eval f x) (eval g x))

def checkHomotopy (outgoing : Matrix k m) (targetIncoming : Matrix q p)
    (f g : Matrix q m) (up : Matrix p m) (down : Matrix q k) : Bool :=
  decide (∀ i j, matrixAdd f g i j =
    matrixAdd (compose targetIncoming up) (compose down outgoing) i j)

theorem checkHomotopy_sound (outgoing : Matrix k m) (targetIncoming : Matrix q p)
    (f g : Matrix q m) (up : Matrix p m) (down : Matrix q k)
    (h : checkHomotopy outgoing targetIncoming f g up down = true) :
    AgreeOnHomology outgoing targetIncoming f g := by
  intro x hx
  refine ⟨eval up x, ?_⟩
  have he : matrixAdd f g = matrixAdd (compose targetIncoming up) (compose down outgoing) :=
    funext fun i => funext fun j => of_decide_eq_true h i j
  have heval := congrArg (fun A => eval A x) he
  rw [eval_matrixAdd, eval_matrixAdd, eval_compose, eval_compose, hx, eval_zero] at heval
  simpa only [add_zero] using heval.symm

end ResolutionCertificates
