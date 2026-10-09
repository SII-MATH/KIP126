import PageProductCertificates.Quotient
namespace PageProductCertificates
open LinearCertificates ResolutionCertificates PageTransitionCertificates

def unitVec (i : Fin n) : Vec n := fun j => j == i

/-- Tensor equality is checked coefficient by coefficient, independently of
vector cardinality. -/
def checkTensorEq (s t : Tensor a b c) : Bool := decide (∀ k i j, s k i j = t k i j)

theorem checkTensorEq_sound (s t : Tensor a b c) (h : checkTensorEq s t = true) :
    ∀ x y, product s x y = product t x y := by
  have he : s = t := funext fun k => funext fun i => funext fun j =>
    (of_decide_eq_true h) k i j
  subst t
  intros
  rfl

/-- Compose a tensor with an output linear map. -/
def post (f : Matrix d c) (t : Tensor a b c) : Tensor a b d :=
  fun k i j => eval f (fun l => t l i j) k

/-- Evaluate linear combinations in either order over F2. -/
theorem dot_exchange (m : Matrix a b) (x : Vec a) (y : Vec b) :
    dot (fun i => dot (m i) y) x = dot (fun j => dot (fun i => m i j) x) y := by
  induction a with
  | zero =>
    change false = dot zero y
    exact (zero_dot y).symm
  | succ a ih =>
    change xor (dot (m 0) y && x 0)
      (dot (fun i => dot (m i.succ) y) (fun i => x i.succ)) = _
    rw [ih]
    change _ = dot (add (fun j => m 0 j && x 0)
      (fun j => dot (fun i => m i.succ j) (fun i => x i.succ))) y
    rw [dot_add_left]
    congr 1
    cases hx : x 0
    · simp only [Bool.and_false]
      exact (zero_dot y).symm
    · simp

theorem dot_comm (x y : Vec n) : dot x y = dot y x := by
  induction n with
  | zero => rfl
  | succ n ih => simp only [dot, Bool.and_comm]; rw [ih]

theorem post_eval (f : Matrix d c) (t : Tensor a b c) (x : Vec a) (y : Vec b) :
    product (post f t) x y = eval f (product t x y) := by
  funext k
  change dot (fun i => dot (fun j => dot (f k) (fun l => t l i j)) y) x = _
  have hinner (i : Fin a) : dot (fun j => dot (f k) (fun l => t l i j)) y =
      dot (f k) (fun l => dot (t l i) y) := by
    simpa only [dot_comm] using
      (dot_exchange (fun j l => t l i j) y (f k))
  simp_rw [hinner]
  change dot (fun i => dot (f k) (fun l => dot (t l i) y)) x =
    dot (f k) (fun l => dot (fun i => dot (t l i) y) x)
  simpa only [dot_comm] using (dot_exchange (fun i l => dot (t l i) y) x (f k))

end PageProductCertificates

namespace PageProductCertificates
open LinearCertificates ResolutionCertificates PageTransitionCertificates

def preLeft (t : Tensor a b c) (f : Matrix a d) : Tensor d b c :=
  fun k i j => dot (fun l => t k l j) (fun l => f l i)

def preRight (t : Tensor a b c) (f : Matrix b d) : Tensor a d c :=
  fun k i j => dot (t k i) (fun l => f l j)

theorem preLeft_eval (t : Tensor a b c) (f : Matrix a d) (x : Vec d) (y : Vec b) :
    product (preLeft t f) x y = product t (eval f x) y := by
  funext k
  unfold product eval preLeft
  have h1 (i : Fin d) : dot (fun j => dot (fun l => t k l j) (fun l => f l i)) y =
      dot (fun l => dot (t k l) y) (fun l => f l i) := by
    exact dot_exchange (fun j l => t k l j) y (fun l => f l i)
  simp_rw [h1]
  have h2 := dot_exchange (fun i l => f l i) x (fun l => dot (t k l) y)
  simpa only [dot_comm] using h2

theorem preRight_eval (t : Tensor a b c) (f : Matrix b d) (x : Vec a) (y : Vec d) :
    product (preRight t f) x y = product t x (eval f y) := by
  funext k
  unfold product eval preRight
  congr 1
  funext i
  have h := dot_exchange (fun j l => f l j) y (t k i)
  simpa only [dot_comm] using h

/-- Polynomial-size witnesses for the stronger chain-level sufficient condition:
all products are cycles and products with a boundary are boundaries, even when
the other input is not a cycle. Useful for zero products and chain subalgebras. -/
structure StrongWitness (a b nc na nb : Nat) where
  left : Tensor na b nc
  right : Tensor a nb nc

def checkStrong (oa : Matrix ka a) (ia : Matrix a na) (ca : Comparison ka a na ha)
    (ob : Matrix kb b) (ib : Matrix b nb) (cb : Comparison kb b nb hb)
    (oc : Matrix kc c) (ic : Matrix c nc) (cc : Comparison kc c nc hc)
    (t : Tensor a b c) (w : StrongWitness a b nc na nb) : Bool :=
  checkComparison oa ia ca && checkComparison ob ib cb && checkComparison oc ic cc &&
  checkTensorEq (post oc t) (fun _ _ _ => false) &&
  checkTensorEq (preLeft t ia) (post ic w.left) &&
  checkTensorEq (preRight t ib) (post ic w.right)

theorem product_zero_tensor (x : Vec a) (y : Vec b) :
    product (fun _ _ _ => false : Tensor a b c) x y = zero := by
  funext k
  change dot (fun _ => dot zero y) x = false
  rw [zero_dot]
  exact zero_dot x

theorem checkStrong_sound (oa : Matrix ka a) (ia : Matrix a na) (ca : Comparison ka a na ha)
    (ob : Matrix kb b) (ib : Matrix b nb) (cb : Comparison kb b nb hb)
    (oc : Matrix kc c) (ic : Matrix c nc) (cc : Comparison kc c nc hc)
    (t : Tensor a b c) (w : StrongWitness a b nc na nb)
    (h : checkStrong oa ia ca ob ib cb oc ic cc t w = true) : Valid oa ia ob ib oc ic t := by
  simp only [checkStrong, Bool.and_eq_true] at h
  refine ⟨?_, ?_, ?_⟩
  · intro x y _ _
    have hh := checkTensorEq_sound _ _ h.1.1.2 x y
    rw [post_eval, product_zero_tensor] at hh
    exact hh
  · rintro x y ⟨u,rfl⟩ _
    refine ⟨product w.left u y, ?_⟩
    have hh := checkTensorEq_sound _ _ h.1.2 u y
    rw [preLeft_eval, post_eval] at hh
    exact hh.symm
  · rintro x y _ ⟨v,rfl⟩
    refine ⟨product w.right x v, ?_⟩
    have hh := checkTensorEq_sound _ _ h.2 x v
    rw [preRight_eval, post_eval] at hh
    exact hh.symm
end PageProductCertificates
