import ModuleToModuleCertificates.Basic
namespace ModuleToModuleCertificates
open NamedElementCertificates LinearCertificates
open ModuleMapCertificates (interpretModule)

def decode : {n : Nat} → (Fin n → ModuleExpressions.Expression b) → Vec n → ModuleExpressions.Expression b
  | 0, _, _ => ModuleExpressions.zero
  | _+1, basis, x => ModuleExpressions.add (if x 0 then basis 0 else ModuleExpressions.zero)
      (decode (fun i => basis i.succ) (fun i => x i.succ))

theorem decode_evaluate {R N : Type*} [CommRing R] [AddCommGroup N] [Module R N]
    (v : Nat → R) (g : Fin b → N) (basis : Fin n → ModuleExpressions.Expression b) (x : Vec n) :
    ModuleExpressions.evaluate v g (decode basis x) =
      interpretModule (fun i => ModuleExpressions.evaluate v g (basis i)) x := by
  induction n with
  | zero => exact ModuleExpressions.evaluate_zero v g
  | succ n ih =>
    rw [decode, ModuleExpressions.evaluate_add, ih]
    cases hx : x 0 <;> simp [hx, interpretModule, ModuleExpressions.evaluate_zero]

theorem interpretModule_add {R N : Type*} [CommRing R] [CharP R 2]
    [AddCommGroup N] [Module R N] (basis : Fin n → N) (x y : Vec n) :
    interpretModule basis (LinearCertificates.add x y) = interpretModule basis x + interpretModule basis y := by
  have hz (z : N) : z+z=0 := by
    have h := congrArg (fun r : R => r • z) (CharTwo.add_self_eq_zero (1:R))
    simpa only [add_smul, one_smul, zero_smul] using h
  induction n with
  | zero => simp [interpretModule]
  | succ n ih =>
    change (if xor (x 0) (y 0) then basis 0 else 0) +
      interpretModule (fun i => basis i.succ) (LinearCertificates.add (fun i => x i.succ) (fun i => y i.succ)) = _
    rw [ih]
    cases hx : x 0 <;> cases hy : y 0 <;> simp [interpretModule, hx, hy, add_assoc, add_left_comm]
    rw [← add_assoc, hz, zero_add]

theorem interpretModule_matrix {R N : Type*} [CommRing R] [CharP R 2]
    [AddCommGroup N] [Module R N] (basis : Fin m → N) (a : Matrix m n) (x : Vec n) :
    interpretModule basis (eval a x) = interpretModule (fun j => interpretModule basis (fun i => a i j)) x := by
  have hz : ∀ {k}, (basis : Fin k → N) → interpretModule basis LinearCertificates.zero = 0 := by
    intro k basis
    induction k with
    | zero => rfl
    | succ k ih =>
      change 0 + interpretModule (fun i => basis i.succ) LinearCertificates.zero = 0
      rw [ih, zero_add]
  induction n with
  | zero => exact hz basis
  | succ n ih =>
    change interpretModule basis (LinearCertificates.add (fun i => a i 0 && x 0)
      (eval (fun i j => a i j.succ) (fun j => x j.succ))) = _
    rw [interpretModule_add (R:=R), ih]
    cases hx : x 0
    · simp only [hx, Bool.and_false, interpretModule, Bool.false_eq_true, ite_false, zero_add]
      change interpretModule basis LinearCertificates.zero + _ = _
      rw [hz, zero_add]
    · simp [hx, interpretModule] 
end ModuleToModuleCertificates

namespace ModuleToModuleCertificates
open NamedElementCertificates LinearCertificates
open ModuleMapCertificates (interpretModule)

def checkMatrix (images : Fin a → ModuleExpressions.Expression b)
    (relations : List (ModuleExpressions.Expression b))
    (source : Fin n → ModuleExpressions.Expression a) (target : Fin m → ModuleExpressions.Expression b)
    (mat : Matrix m n) (terms : Fin n → List Term) : Bool :=
  (List.finRange n).all fun j => check images relations (source j) (decode target (fun i => mat i j)) (terms j)

theorem interpret_linear {R M N : Type} [CommRing R] [AddCommGroup M] [Module R M]
    [AddCommGroup N] [Module R N] (f : M →ₗ[R] N) (basis : Fin n → M) (x : Vec n) :
    interpretModule (fun i => f (basis i)) x = f (interpretModule basis x) := by
  induction n with
  | zero => simp [interpretModule]
  | succ n ih =>
    simp only [interpretModule]
    rw [ih]
    cases hx : x 0 <;> simp [hx, map_add]

theorem checkMatrix_linear {R M N : Type} [CommRing R] [CharP R 2]
    [AddCommGroup M] [Module R M] [AddCommGroup N] [Module R N]
    (f : M →ₗ[R] N) (v : Nat → R) (srcGen : Fin a → M) (tgtGen : Fin b → N)
    (images : Fin a → ModuleExpressions.Expression b) (relations : List (ModuleExpressions.Expression b))
    (source : Fin n → ModuleExpressions.Expression a) (target : Fin m → ModuleExpressions.Expression b)
    (mat : Matrix m n) (terms : Fin n → List Term) (h : checkMatrix images relations source target mat terms = true)
    (compatible : ∀ i, f (srcGen i) = ModuleExpressions.evaluate v tgtGen (images i))
    (hr : ∀ r ∈ relations, ModuleExpressions.evaluate v tgtGen r = 0) (x : Vec n) :
    interpretModule (fun i => ModuleExpressions.evaluate v tgtGen (target i)) (eval mat x) =
      f (interpretModule (fun j => ModuleExpressions.evaluate v srcGen (source j)) x) := by
  rw [interpretModule_matrix (R:=R)]
  have columns (j : Fin n) : interpretModule (fun i => ModuleExpressions.evaluate v tgtGen (target i)) (fun i => mat i j) =
      f (ModuleExpressions.evaluate v srcGen (source j)) := by
    rw [← decode_evaluate, substitute_linear f v srcGen tgtGen images compatible]
    exact (check_sound images relations _ _ (terms j) (List.all_eq_true.mp h j (List.mem_finRange j)) R N v tgtGen hr).symm
  rw [funext columns]
  exact interpret_linear f _ x
end ModuleToModuleCertificates
