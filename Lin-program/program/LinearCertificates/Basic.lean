import LinProgramCertificates.Tactic

namespace LinearCertificates

abbrev Vec (n : Nat) := Fin n → Bool
abbrev Matrix (m n : Nat) := Fin m → Fin n → Bool

def zero : Vec n := fun _ => false
def add (x y : Vec n) : Vec n := fun i => xor (x i) (y i)
def dot : {n : Nat} → Vec n → Vec n → Bool
  | 0, _, _ => false
  | _ + 1, x, y => xor (x 0 && y 0) (dot (fun i => x i.succ) (fun i => y i.succ))
def eval (A : Matrix m n) (x : Vec n) : Vec m := fun i => dot (A i) x

def InImage (A : Matrix m n) (y : Vec m) : Prop := ∃ x, eval A x = y
def InKernel (A : Matrix m n) (x : Vec n) : Prop := eval A x = zero

theorem dot_zero (x : Vec n) : dot x zero = false := by
  induction n with
  | zero => rfl
  | succ n ih => simp only [dot, zero, Bool.and_false, Bool.false_xor]
                 exact ih (fun i => x i.succ)

theorem zero_dot (x : Vec n) : dot zero x = false := by
  induction n with
  | zero => rfl
  | succ n ih => simp only [dot, zero, Bool.false_and, Bool.false_xor]
                 exact ih (fun i => x i.succ)

theorem dot_add (s x y : Vec n) : dot s (add x y) = xor (dot s x) (dot s y) := by
  induction n with
  | zero => rfl
  | succ n ih =>
    simp only [dot, add]
    rw [show (dot (fun i => s i.succ) (fun i => xor (x i.succ) (y i.succ))) =
      xor (dot (fun i => s i.succ) (fun i => x i.succ))
        (dot (fun i => s i.succ) (fun i => y i.succ)) from ih _ _ _]
    generalize s 0 = a, x 0 = b, y 0 = c,
      dot (fun i => s i.succ) (fun i => x i.succ) = d,
      dot (fun i => s i.succ) (fun i => y i.succ) = e
    cases a <;> cases b <;> cases c <;> cases d <;> cases e <;> rfl

theorem eval_add (A : Matrix m n) (x y : Vec n) :
    eval A (add x y) = add (eval A x) (eval A y) := by
  funext i
  exact dot_add _ _ _

theorem eval_zero (A : Matrix m n) : eval A zero = zero := by
  funext i
  exact dot_zero _

/-- Column checks imply annihilation of every linear combination, including combinations
that are absent from the exported record list. -/
theorem annihilates_image (A : Matrix m n) (s : Vec m)
    (h : ∀ j, dot s (fun i => A i j) = false) (x : Vec n) :
    dot s (eval A x) = false := by
  induction n with
  | zero => exact dot_zero s
  | succ n ih =>
    have ht := ih (fun i j => A i j.succ) (fun j => h j.succ) (fun j => x j.succ)
    have he : eval A x = add (fun i => A i 0 && x 0)
        (eval (fun i j => A i j.succ) (fun j => x j.succ)) := rfl
    rw [he, dot_add, ht]
    cases hx : x 0 with
    | false => simp only [Bool.and_false, Bool.xor_false]
               exact dot_zero s
    | true => simpa [hx] using h 0

end LinearCertificates
