import NamedPageComparison.FiniteFaithfulness
import Mathlib.Data.Fintype.Pi

namespace PageProductCertificates
open LinearCertificates PageTransitionCertificates ResolutionCertificates

local instance (p : Vec n → Prop) [DecidablePred p] : Decidable (∀ x, p x) := Fintype.decidableForallFintype
local instance (p : Vec n → Prop) [DecidablePred p] : Decidable (∃ x, p x) := Fintype.decidableExistsFintype
local instance (a : Matrix m n) (x : Vec m) : Decidable (InImage a x) := inferInstanceAs (Decidable (∃ y, eval a y = x))
local instance (a : Matrix m n) (x : Vec n) : Decidable (InKernel a x) := inferInstanceAs (Decidable (eval a x = zero))

abbrev Tensor (a b c : Nat) := Fin c → Fin a → Fin b → Bool

def product (t : Tensor a b c) (x : Vec a) (y : Vec b) : Vec c :=
  eval (fun k i => eval (t k) y i) x

theorem product_add_left (t : Tensor a b c) (x x' : Vec a) (y : Vec b) :
    product t (add x x') y = add (product t x y) (product t x' y) := eval_add _ _ _

theorem dot_add_left (x y z : Vec n) : dot (add x y) z = xor (dot x z) (dot y z) := by
  induction n with
  | zero => rfl
  | succ n ih =>
    simp only [dot, add]
    rw [show ((x 0 ^^ y 0) && z 0) = ((x 0 && z 0) ^^ (y 0 && z 0)) from by
      cases x 0 <;> cases y 0 <;> cases z 0 <;> decide]
    have ht := ih (fun i => x i.succ) (fun i => y i.succ) (fun i => z i.succ)
    change dot (fun i => x i.succ ^^ y i.succ) (fun i => z i.succ) = _ at ht
    rw [ht]
    cases (x 0 && z 0) <;> cases (y 0 && z 0) <;>
      cases (dot (fun i => x i.succ) (fun i => z i.succ)) <;>
      cases (dot (fun i => y i.succ) (fun i => z i.succ)) <;> decide

theorem product_add_right (t : Tensor a b c) (x : Vec a) (y y' : Vec b) :
    product t x (add y y') = add (product t x y) (product t x y') := by
  funext k
  change dot (eval (t k) (add y y')) x = _
  rw [eval_add, dot_add_left]
  rfl

/-- An executable exhaustive reference checker. It quantifies over finite F2
vectors, including every boundary preimage, so it cannot miss a linear combination.
It is intentionally exponential; a tensor-basis optimized checker can refine it. -/
def check (oa : Matrix ka a) (ia : Matrix a na) (ca : Comparison ka a na ha)
    (ob : Matrix kb b) (ib : Matrix b nb) (cb : Comparison kb b nb hb)
    (oc : Matrix kc c) (ic : Matrix c nc) (cc : Comparison kc c nc hc)
    (t : Tensor a b c) : Bool :=
  checkComparison oa ia ca && checkComparison ob ib cb && checkComparison oc ic cc &&
  decide (∀ x : Vec a, ∀ y : Vec b, InKernel oa x → InKernel ob y →
    InKernel oc (product t x y)) &&
  decide (∀ u : Vec na, ∀ y : Vec b, InKernel ob y →
    InImage ic (product t (eval ia u) y)) &&
  decide (∀ x : Vec a, ∀ v : Vec nb, InKernel oa x →
    InImage ic (product t x (eval ib v)))

structure Valid (oa : Matrix ka a) (ia : Matrix a na)
    (ob : Matrix kb b) (ib : Matrix b nb) (oc : Matrix kc c) (ic : Matrix c nc)
    (t : Tensor a b c) : Prop where
  cycles : ∀ x y, InKernel oa x → InKernel ob y → InKernel oc (product t x y)
  leftBoundary : ∀ x y, InImage ia x → InKernel ob y → InImage ic (product t x y)
  rightBoundary : ∀ x y, InKernel oa x → InImage ib y → InImage ic (product t x y)

theorem check_sound (oa : Matrix ka a) (ia : Matrix a na) (ca : Comparison ka a na ha)
    (ob : Matrix kb b) (ib : Matrix b nb) (cb : Comparison kb b nb hb)
    (oc : Matrix kc c) (ic : Matrix c nc) (cc : Comparison kc c nc hc)
    (t : Tensor a b c) (h : check oa ia ca ob ib cb oc ic cc t = true) :
    Valid oa ia ob ib oc ic t := by
  simp only [check, Bool.and_eq_true, decide_eq_true_eq] at h
  refine ⟨h.1.1.2, ?_, ?_⟩
  · rintro x y ⟨u,rfl⟩ hy
    exact h.1.2 u y hy
  · rintro x y hx ⟨v,rfl⟩
    exact h.2 x v hx

end PageProductCertificates
