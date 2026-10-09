import BranchReplayCertificates.Products
import BranchReplayCertificates.MapColumns

namespace BranchReplayCertificates.BasisSemantics
open LinearCertificates NamedElementCertificates

variable {R : Type*} [CommRing R] [CharP R 2]

def interpret : {n : Nat} → (Fin n → R) → Vec n → R
  | 0, _, _ => 0
  | _+1, basis, x => (if x 0 then basis 0 else 0) +
      interpret (fun i => basis i.succ) (fun i => x i.succ)

theorem interpret_zero (basis : Fin n → R) : interpret basis zero = 0 := by
  induction n with
  | zero => rfl
  | succ n ih =>
    change 0 + interpret (fun i => basis i.succ) zero = 0
    rw [ih, zero_add]

theorem interpret_add (basis : Fin n → R) (x y : Vec n) :
    interpret basis (add x y) = interpret basis x + interpret basis y := by
  induction n with
  | zero => simp [interpret]
  | succ n ih =>
    change (if xor (x 0) (y 0) then basis 0 else 0) +
      interpret (fun i => basis i.succ) (add (fun i => x i.succ) (fun i => y i.succ)) = _
    rw [ih]
    change _ = ((if x 0 then basis 0 else 0) + _) + ((if y 0 then basis 0 else 0) + _)
    cases hx : x 0 <;> cases hy : y 0 <;>
      simp [add_assoc, add_left_comm, add_comm]
    rw [← add_assoc, CharTwo.add_self_eq_zero, zero_add]

theorem interpret_matrix (basis : Fin m → R) (a : Matrix m n) (x : Vec n) :
    interpret basis (eval a x) =
      interpret (fun j => interpret basis (fun i => a i j)) x := by
  induction n with
  | zero => exact interpret_zero basis
  | succ n ih =>
    change interpret basis (add (fun i => a i 0 && x 0)
      (eval (fun i j => a i j.succ) (fun j => x j.succ))) = _
    rw [interpret_add, ih]
    cases hx : x 0
    · simp only [hx, Bool.and_false, interpret, Bool.false_eq_true, ite_false, zero_add]
      rw [show (fun _ : Fin m => false) = zero from rfl, interpret_zero, zero_add]
    · simp [hx, interpret]

theorem interpret_mul (scalar : R) (basis : Fin n → R) (x : Vec n) :
    interpret (fun j => scalar * basis j) x = scalar * interpret basis x := by
  induction n with
  | zero => simp [interpret]
  | succ n ih =>
    simp only [interpret]
    rw [ih]
    cases hx : x 0 <;> simp [hx, mul_add]

/-- No basis independence is needed: this is linear interpretation of all vectors. -/
theorem all_products (v : Nat → R) (source : Fin n → Polynomial)
    (target : Fin m → Polynomial) (a : Matrix m n) (factor : Polynomial)
    (columns : ∀ j, interpret (fun i => evaluate v (target i)) (fun i => a i j) =
      evaluate v factor * evaluate v (source j)) (x : Vec n) :
    interpret (fun i => evaluate v (target i)) (eval a x) =
      evaluate v factor * interpret (fun j => evaluate v (source j)) x := by
  rw [interpret_matrix]
  have he := funext columns
  rw [he, interpret_mul]

def decodedBasisVector : {n : Nat} → (Fin n → Polynomial) → Vec n → Polynomial
  | 0, _, _ => []
  | _+1, basis, x => (if x 0 then basis 0 else []) ++
      decodedBasisVector (fun i => basis i.succ) (fun i => x i.succ)

theorem decoded_evaluate (v : Nat → R) (basis : Fin n → Polynomial) (x : Vec n) :
    evaluate v (decodedBasisVector basis x) = interpret (fun i => evaluate v (basis i)) x := by
  induction n with
  | zero => simp [decodedBasisVector, evaluate, interpret]
  | succ n ih =>
    simp only [decodedBasisVector, evaluate_append, interpret]
    rw [ih]
    cases hx : x 0 <;> simp [hx, evaluate]

theorem interpret_hom {S : Type*} [CommRing S] [CharP S 2]
    (f : R →+* S) (basis : Fin n → R) (x : Vec n) :
    interpret (fun j => f (basis j)) x = f (interpret basis x) := by
  induction n with
  | zero => simp [interpret]
  | succ n ih =>
    simp only [interpret]
    rw [ih]
    cases hx : x 0 <;> simp [map_add]

theorem all_maps {S : Type*} [CommRing S] [CharP S 2]
    (f : R →+* S) (source : Fin n → R) (target : Fin m → S)
    (a : Matrix m n)
    (columns : ∀ j, interpret target (fun i => a i j) = f (source j)) (x : Vec n) :
    interpret target (eval a x) = f (interpret source x) := by
  rw [interpret_matrix, funext columns, interpret_hom]

end BranchReplayCertificates.BasisSemantics
