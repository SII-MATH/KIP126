import KIP126.Def.AdamsE2
import Mathlib.Algebra.Polynomial.Basic
import Mathlib.Algebra.Polynomial.AlgebraMap

/-!
# A small, replaceable E₂ table

Read this file first. `table` is the only numerical input: three one-dimensional
cells with basis names `1`, `x`, `y`, and the product `x * x = y`.
The table does NOT assert `x * y = 0`: that target is outside its coverage.

`Table.Model table` is a presentation by all covered multiplication relations.
We independently map it to `F₂[X]` to check that `y` is not accidentally killed.
Then `myAdams` shows exactly how to attach this table to an EXISTING Adams-shaped
spectral sequence, conditional on its provenance-carrying presentation evidence.
No external witness is fabricated, and this table is not claimed to describe
the sphere's actual Adams E₂ page.
-/

namespace KIP126.Examples.AdamsE2Table

open KIP126.AdamsE2 KIP126.Core.Algebra KIP126.Classical.Adams
open scoped BigOperators

/-- Replace this definition by a generated table when real data is available. -/
def table : Table where
  region := {(0, 0), (1, 64), (2, 128)}
  dim := fun _ => 1
  mulCoeff := fun _ _ _ _ _ _ _ _ => 1
  zero_mem := by simp
  unitCoeff := fun _ => 1

theorem h6_covered : (1, 64) ∈ table.region := by simp [table]
theorem square_covered : (2, 128) ∈ table.region := by simp [table]
theorem cube_not_covered : (3, 192) ∉ table.region := by simp [table]

private theorem filtration_nonneg (p : Degree) (hp : p ∈ table.region) : 0 ≤ p.1 := by
  simp only [table, Finset.mem_insert, Finset.mem_singleton] at hp
  rcases hp with rfl | rfl | rfl <;> norm_num

noncomputable section

def x : table.Model := table.generator (1, 64) h6_covered (0 : Fin 1)
def y : table.Model := table.generator (2, 128) square_covered (0 : Fin 1)

/-- The relation comes from the input table, with no computation of Ext. -/
theorem x_mul_x : x * x = y := by
  have h := table.generator_mul (1, 64) (1, 64)
    h6_covered h6_covered square_covered (0 : Fin 1) (0 : Fin 1)
  change x * x = ∑ k : Fin 1, (1 : F2) • table.generator (2, 128) square_covered k at h
  rw [Fintype.sum_unique, one_smul] at h
  have hi : (default : Fin 1) = 0 := Subsingleton.elim _ _
  simpa only [hi, y] using h

def polynomialEvaluation : table.Poly →ₐ[F2] Polynomial F2 :=
  MvPolynomial.aeval (fun g => Polynomial.X ^ g.1.val.1.toNat)

private theorem evaluate_symbol (p : Degree) (hp : p ∈ table.region)
    (i : Fin (table.dim p)) :
    polynomialEvaluation (table.symbol p hp i) = Polynomial.X ^ p.1.toNat := by
  exact MvPolynomial.aeval_X (fun g : table.Generator => Polynomial.X ^ g.1.val.1.toNat)
    (⟨⟨p, hp⟩, i⟩ : table.Generator)

theorem relations_vanish :
    table.relationIdeal ≤ RingHom.ker polynomialEvaluation.toRingHom := by
  apply Ideal.span_le.mpr
  rintro f (rfl | ⟨p, q, hp, hq, hpq, i, j, rfl⟩)
  · change polynomialEvaluation
      ((∑ i : Fin 1, (1 : F2) • table.symbol (0, 0) table.zero_mem i) - 1) = 0
    simp only [map_sub, map_sum, map_one, evaluate_symbol,
      one_smul, Int.toNat_zero, pow_zero, Finset.sum_const, Finset.card_univ,
      Fintype.card_fin, sub_self]
  · change polynomialEvaluation
      (table.symbol p hp i * table.symbol q hq j -
        ∑ k : Fin 1, (1 : F2) • table.symbol (p + q) hpq k) = 0
    simp only [map_sub, map_mul, map_sum, evaluate_symbol,
      one_smul, Finset.sum_const, Finset.card_univ, Fintype.card_fin]
    change Polynomial.X ^ p.1.toNat * Polynomial.X ^ q.1.toNat -
      Polynomial.X ^ (p.1 + q.1).toNat = (0 : Polynomial F2)
    rw [Int.toNat_add (filtration_nonneg p hp) (filtration_nonneg q hq), pow_add, sub_self]

/-- This map checks the model without assuming any Adams computation. -/
def modelEvaluation : table.Model →ₐ[F2] Polynomial F2 :=
  Ideal.Quotient.liftₐ table.relationIdeal polynomialEvaluation
    (fun _ h => relations_vanish h)

theorem evaluate_generator (p : Degree) (hp : p ∈ table.region)
    (i : Fin (table.dim p)) :
    modelEvaluation (table.generator p hp i) = Polynomial.X ^ p.1.toNat := by
  simp [modelEvaluation, Table.generator, Table.quotient,
    Ideal.Quotient.liftₐ_apply, polynomialEvaluation, Table.symbol]

theorem y_ne_zero : y ≠ 0 := by
  intro h
  have hh := congrArg modelEvaluation h
  simp [y, evaluate_generator] at hh

/-- The missing product stays nonzero in this model, rather than being
silently zero-filled at the edge of the table. -/
theorem x_mul_y_ne_zero : x * y ≠ 0 := by
  intro h
  have hh := congrArg modelEvaluation h
  simp [x, y, map_mul, evaluate_generator] at hh

variable (E : ClassicalAdamsSpectralSequence) (A : PageAlgebra E)

/-- A SINGLE input bundles the existing sequence and the table's external
interpretation. The evidence is a parameter, not a new Lean axiom. -/
def myAdams
    (evidence : KIP126.External.ExternalEvidence (Nonempty (Presentation table A))) :
    Input where
  sequence := E
  algebra := A
  table := table
  tableCorrect := evidence
  h6_mem := h6_covered
  h6_dim := rfl

/-- The presentation theorem turns the numerical table entry into an equality
in the actual E₂ page of `E`. -/
theorem page_square (P : Presentation table A) :
    A.product (1, 64) (1, 64)
        (P.basis (1, 64) h6_covered (0 : Fin 1))
        (P.basis (1, 64) h6_covered (0 : Fin 1)) =
      P.basis (2, 128) square_covered (0 : Fin 1) := by
  have h := P.basis_mul (1, 64) (1, 64)
    h6_covered h6_covered square_covered (0 : Fin 1) (0 : Fin 1)
  change A.product (1, 64) (1, 64)
      (P.basis (1, 64) h6_covered (0 : Fin 1))
      (P.basis (1, 64) h6_covered (0 : Fin 1)) =
    ∑ k : Fin 1, (1 : F2) • P.basis (2, 128) square_covered k at h
  rw [Fintype.sum_unique, one_smul] at h
  have hi : (default : Fin 1) = 0 := Subsingleton.elim _ _
  simpa only [hi] using h

theorem imported_h6_square
    (evidence : KIP126.External.ExternalEvidence (Nonempty (Presentation table A))) :
    (myAdams E A evidence).h6Square =
      (myAdams E A evidence).presentation.basis (2, 128) square_covered (0 : Fin 1) := by
  exact page_square E A (myAdams E A evidence).presentation

theorem imported_h6_square_ne_zero
    (evidence : KIP126.External.ExternalEvidence (Nonempty (Presentation table A))) :
    (myAdams E A evidence).h6Square ≠ 0 := by
  rw [imported_h6_square]
  exact ((myAdams E A evidence).presentation.basis (2, 128) square_covered).ne_zero (0 : Fin 1)

#print axioms x_mul_x
#print axioms y_ne_zero
#print axioms x_mul_y_ne_zero
#print axioms imported_h6_square
#print axioms imported_h6_square_ne_zero

end
end KIP126.Examples.AdamsE2Table
