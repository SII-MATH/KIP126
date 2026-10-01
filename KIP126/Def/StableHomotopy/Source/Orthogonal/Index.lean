import KIP126.Def.StableHomotopy.Source.Convenient
import Mathlib.Topology.Compactification.OnePoint.Basic
import Mathlib.Topology.Instances.RealVectorSpace
import Mathlib.Data.Fin.Basic

/-! The actual Thom-space indexing category for nonequivariant orthogonal
spectra. This is the skeleton R^n of Mandell--May, II Definition 4.1.
An arrow is infinity or an isometric real matrix together with a vector
orthogonal to its image. Composition and direct sum are displayed below.
Their topological properties, including properness at infinity, are proof
obligations concerning these formulas. -/
namespace KIP126.StableHomotopy.Source.Orthogonal
open CategoryTheory
open scoped BigOperators Topology unitInterval
noncomputable section

abbrev Vec (n : ℕ) := Fin n → ℝ
abbrev Mat (n m : ℕ) := Fin m → Fin n → ℝ
def dot {n : ℕ} (x y : Vec n) : ℝ := ∑ i, x i * y i
def eval {n m : ℕ} (A : Mat n m) (x : Vec n) : Vec m := fun i => ∑ j, A i j * x j
abbrev Embedding (n m : ℕ) := {A : Mat n m // ∀ x y, dot (eval A x) (eval A y) = dot x y}
abbrev Complement (n m : ℕ) :=
  {z : Embedding n m × Vec m // ∀ x : Vec n, dot z.2 (eval z.1.val x) = 0}

def J (n m : ℕ) : BasedSpace where
  carrier := OnePoint (Complement n m)
  topology := inferInstance
  point := OnePoint.infty

theorem j_convenient (n m : ℕ) : IsConvenient (J n m) := by sorry

def identityEmbedding (n : ℕ) : Embedding n n :=
  ⟨fun i j => if i = j then 1 else 0, by sorry⟩
def composeEmbedding {n m k : ℕ} (A : Embedding n m) (B : Embedding m k) :
    Embedding n k :=
  ⟨fun i j => ∑ l, B.val i l * A.val l j, by sorry⟩

def jId (n : ℕ) : J n n := some ⟨(identityEmbedding n, 0), by sorry⟩

def jCompose {n m k : ℕ} (a : J n m) (b : J m k) : J n k :=
  match a, b with
  | some a, some b => some ⟨(composeEmbedding a.val.1 b.val.1,
      eval b.val.1.val a.val.2 + b.val.2), by sorry⟩
  | _, _ => none

def jComposition (n m k : ℕ) : BasedBimap (J n m) (J m k) (J n k) where
  map := ⟨fun z => jCompose z.1 z.2, by sorry⟩
  left_point := by intro y; cases y <;> rfl
  right_point := by intro x; cases x <;> rfl

theorem jCompose_id {n m : ℕ} (a : J n m) : jCompose a (jId m) = a := by sorry
theorem jId_compose {n m : ℕ} (a : J n m) : jCompose (jId n) a = a := by sorry
theorem jCompose_assoc {n m k l : ℕ} (a : J n m) (b : J m k) (c : J k l) :
    jCompose (jCompose a b) c = jCompose a (jCompose b c) := by sorry

def directSumEmbedding {n m n' m' : ℕ} (A : Embedding n m) (B : Embedding n' m') :
    Embedding (n+n') (m+m') :=
  ⟨Fin.addCases (fun i => Fin.addCases (A.val i) (fun _ => 0))
      (fun i => Fin.addCases (fun _ => 0) (B.val i)), by sorry⟩

def jDirectSum {n m n' m' : ℕ} (a : J n m) (b : J n' m') : J (n+n') (m+m') :=
  match a, b with
  | some a, some b => some ⟨(directSumEmbedding a.val.1 b.val.1,
      Fin.addCases a.val.2 b.val.2), by sorry⟩
  | _, _ => none

def jSumPairing (n m n' m' : ℕ) :
    BasedBimap (J n m) (J n' m') (J (n+n') (m+m')) where
  map := ⟨fun z => jDirectSum z.1 z.2, by sorry⟩
  left_point := by intro y; cases y <;> rfl
  right_point := by intro x; cases x <;> rfl

def jReindex {n m : ℕ} (h : n = m) : J n m := by
  subst m
  exact jId n

/-- The permutation exchanging the two displayed coordinate blocks. -/
def swapEmbedding (n m : ℕ) : Embedding (n+m) (m+n) :=
  ⟨fun i j => if (Fin.addCases (Fin.natAdd n) (Fin.castAdd m) i) = j then 1 else 0,
    by sorry⟩
def jSwap (n m : ℕ) : J (n+m) (m+n) :=
  some ⟨(swapEmbedding n m, 0), by sorry⟩

def successorEmbedding (n : ℕ) : Embedding n (n+1) :=
  ⟨fun i j => if i.val = j.val then 1 else 0, by sorry⟩

/-- A positively oriented proper real coordinate on the open interval,
extended by infinity at both ends. It supplies the underlying prespectrum
bonding with the LAST coordinate as suspension coordinate. -/
def jLineValue (n : ℕ) (t : I) : J n (n+1) :=
  if t = 0 ∨ t = 1 then none else
    some ⟨(successorEmbedding n,
      fun i => if i = Fin.last n then (2*(t : ℝ)-1)/((t : ℝ)*(1-(t : ℝ))) else 0),
      by sorry⟩
def jLine (n : ℕ) : C(I, J n (n+1)) := ⟨jLineValue n, by sorry⟩
theorem jLine_zero (n : ℕ) : jLine n 0 = (J n (n+1)).point := by
  change jLineValue n 0 = none
  simp [jLineValue]
theorem jLine_one (n : ℕ) : jLine n 1 = (J n (n+1)).point := by
  change jLineValue n 1 = none
  simp [jLineValue]

end
end KIP126.StableHomotopy.Source.Orthogonal
