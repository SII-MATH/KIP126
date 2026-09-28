import KIP126.Def.Synthetic.Sphere.Data
import KIP126.Def.Synthetic.QuotientMap.Data

/-! Actual operations on bigraded homotopy groups. No arbitrary product,
quotient-vanishing predicate, or differential is supplied as a field. -/
namespace KIP126.Synthetic.Context

open CategoryTheory KIP126.StableHomotopy
universe u v
variable {Syn : Type u} [SyntheticCategory.{u, v} Syn]

/-- Composition product of sphere classes, using the specified suspensions.
Associativity and comparison with a chosen monoidal product are separate laws. -/
noncomputable def sphereProduct {m n k l : ℤ}
    (x : BiHom m n (S00 : Syn)) (y : BiHom k l (S00 : Syn)) :
    BiHom (m + k) (n + l) (S00 : Syn) :=
  (SyntheticCategory.biShift_comp (m, n) (k, l)).inv.app S00 ≫
    (SyntheticCategory.biShift (k, l)).map x ≫ y

/-- Change only the target of a homotopy class through a specified iso. -/
noncomputable def biHomTargetIso (m n : ℤ) {X Y : Syn} (e : X ≅ Y) :
    BiHom m n X ≃+ BiHom m n Y where
  toFun x := x ≫ e.hom
  invFun y := y ≫ e.inv
  left_inv x := by simp
  right_inv y := by simp
  map_add' x y := by simp [Preadditive.add_comp]

variable [HasFunctorialCofiber (C := Syn)]

/-- Reduction is postcomposition with the actual chosen cofiber inclusion. -/
noncomputable def quotientClass {m n : ℤ} {X : Syn} (r : ℕ)
    (x : BiHom m n X) : BiHom m n (XModLambdaN X r) :=
  x ≫ XModLambdaN.incl X r

/-- The boundary of the first actual λ-power cofiber, with its landing
rewritten to S^(1,-1). It is not a separately postulated total differential. -/
noncomputable def sphereTotalBoundary : XModLambdaN (S00 : Syn) 1 ⟶ Smn 1 (-1) :=
  XModLambdaN.proj S00 1 ≫
    (SyntheticCategory.biShift_compat (Syn := Syn) 1).inv.app
      ((SyntheticCategory.biShift (0, -1)).obj S00) ≫
    (SyntheticCategory.biShift_comp (0, -1) (1, 0)).hom.app S00

/-- The total boundary on the bidegree of h₆², desuspended using the same
specified bigraded suspension equivalence. -/
noncomputable def h6TotalBoundary
    (x : BiHom 126 128 (XModLambdaN (S00 : Syn) 1)) : BiHom 125 129 (S00 : Syn) :=
  (susp_invariance 125 129 1 (-1) (S00 : Syn)).symm (x ≫ sphereTotalBoundary)

end KIP126.Synthetic.Context
