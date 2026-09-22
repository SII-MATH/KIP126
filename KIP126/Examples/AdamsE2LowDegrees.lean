import KIP126.Examples.AdamsE2LowDegrees.Data
import Mathlib.Tactic.Ring

/-!
# Using Lin's low-degree table

The numerical input is in `AdamsE2LowDegrees/Data.lean`. Here the kernel checks
queries, then proves ring relations from the table, then transports products to
an EXISTING E₂ page under explicit presentation evidence. The first two steps
do not assert that a numerical table is the sphere's actual E₂ page.
-/

namespace KIP126.Examples.AdamsE2LowDegrees

open KIP126.AdamsE2 KIP126.Core.Algebra KIP126.Classical.Adams

-- Kernel-checked decisions unfold the finite region and its coordinate lists.
set_option maxRecDepth 4096

theorem region_size : table.region.card = 86 := by decide
theorem basis_count : basisRows.length = 27 := by decide

-- These are checks of imported dimensions, not new computations of Ext.
example : table.dim (1, 1) = 1 := by decide
example : table.dim (2, 3) = 0 := by decide
example : table.dim (3, 11) = 1 := by decide -- c₀, chart coordinate (8,3)
example : table.dim (2, 128) = 1 := by decide
example : table.dim (5, 20) = 2 := by decide

example : productCoordinates (1, 1) (1, 4) 0 0 = some [1] := by decide
example : productCoordinates (1, 2) (2, 4) 0 0 = some [1] := by decide
example : productCoordinates (1, 1) (1, 2) 0 0 = some [] := by decide
example : productCoordinates (1, 64) (1, 1) 0 0 = none := by decide
example : productCoordinates (1, 1) (1, 4) 1 0 = none := by decide
example : productCoordinates (1, 2) (4, 18) 0 0 = some [1, 0] := by decide
example : productCoordinates (4, 4) (1, 16) 0 0 = some [0, 1] := by decide
example : productCoordinates (2, 9) (3, 11) 0 0 = some [0, 0] := by decide

theorem h0_h1_zero : h0 * h1 = 0 := by
  apply table.generator_mul_eq_zero (1, 1) (1, 2) _ _ (by decide)
  decide

theorem h1_h2_zero : h1 * h2 = 0 := by
  apply table.generator_mul_eq_zero (1, 2) (1, 4) _ _ (by decide)
  decide

theorem h0_c0_zero : h0 * c0 = 0 := by
  apply table.generator_mul_eq_zero (1, 1) (3, 11) _ _ (by decide)
  decide

theorem h0_square : h0 * h0 = h0Sq := by
  apply table.generator_mul_eq_generator (1, 1) (1, 1)
  decide

theorem h1_square : h1 * h1 = h1Sq := by
  apply table.generator_mul_eq_generator (1, 2) (1, 2)
  decide

theorem h0_times_h2 : h0 * h2 = h0h2 := by
  apply table.generator_mul_eq_generator (1, 1) (1, 4)
  decide

theorem h0Sq_times_h2 : h0Sq * h2 = h0Sqh2 := by
  apply table.generator_mul_eq_generator (2, 2) (1, 4)
  decide

theorem h1_times_h1Sq : h1 * h1Sq = h0Sqh2 := by
  apply table.generator_mul_eq_generator (1, 2) (2, 4)
  decide

/-- A nontrivial relation identifying two different monomial expressions. -/
theorem h1_cube : h1 ^ 3 = h0 ^ 2 * h2 := by
  calc
    h1 ^ 3 = h1 * (h1 * h1) := by ring
    _ = h0Sqh2 := by rw [h1_square, h1_times_h1Sq]
    _ = h0 ^ 2 * h2 := by rw [pow_two, h0_square, h0Sq_times_h2]

theorem h1_times_h3 : h1 * h3 = h1h3 := by
  apply table.generator_mul_eq_generator (1, 2) (1, 8)
  decide

theorem h6_square : h6 * h6 = h6Sq := by
  apply table.generator_mul_eq_generator (1, 64) (1, 64)
  decide

theorem h1_times_d0 : h1 * d0 = b0 := by
  apply table.generator_mul_eq_generator (1, 2) (4, 18)
  decide

theorem h0Sq_square : h0Sq * h0Sq = h0Fourth := by
  apply table.generator_mul_eq_generator (2, 2) (2, 2)
  decide

theorem h0_fourth : h0 ^ 4 = h0Fourth := by
  calc
    h0 ^ 4 = (h0 * h0) * (h0 * h0) := by ring
    _ = h0Fourth := by rw [h0_square, h0Sq_square]

theorem h0Fourth_times_h4 : h0Fourth * h4 = b1 := by
  apply table.generator_mul_eq_generator (4, 4) (1, 16)
  decide

theorem two_products_sum : h1 * d0 + h0Fourth * h4 = b0 + b1 := by
  rw [h1_times_d0, h0Fourth_times_h4]

theorem two_monomials_sum : h1 * d0 + h0 ^ 4 * h4 = b0 + b1 := by
  rw [h0_fourth, two_products_sum]

variable (E : ClassicalAdamsSpectralSequence) (A : PageAlgebra E)

/-- Attach this larger table without rebuilding E₂ or the spectral sequence. -/
def myAdams
    (evidence : KIP126.External.ExternalEvidence (Nonempty (Presentation table A))) :
    Input where
  sequence := E
  algebra := A
  table := table
  tableCorrect := evidence
  h6_mem := by decide
  h6_dim := by decide

theorem page_h0_h1_zero (P : Presentation table A) :
    A.product (1, 1) (1, 2)
      (P.basis (1, 1) (by decide) ⟨0, by decide⟩)
      (P.basis (1, 2) (by decide) ⟨0, by decide⟩) = 0 := by
  apply P.basis_mul_eq_zero _ _ _ _ (by decide)
  decide

/-- The entry h₁·h₁² = h₀²h₂, now in the actual E₂ component at (3,6). -/
theorem page_h1_times_h1Sq (P : Presentation table A) :
    A.product (1, 2) (2, 4)
      (P.basis (1, 2) (by decide) ⟨0, by decide⟩)
      (P.basis (2, 4) (by decide) ⟨0, by decide⟩) =
      P.basis (3, 6) (by decide) ⟨0, by decide⟩ := by
  apply P.basis_mul_eq_basis
  decide

theorem page_h1_times_d0 (P : Presentation table A) :
    A.product (1, 2) (4, 18)
      (P.basis (1, 2) (by decide) ⟨0, by decide⟩)
      (P.basis (4, 18) (by decide) ⟨0, by decide⟩) =
      P.basis (5, 20) (by decide) ⟨0, by decide⟩ := by
  apply P.basis_mul_eq_basis
  decide

theorem page_h0Fourth_times_h4 (P : Presentation table A) :
    A.product (4, 4) (1, 16)
      (P.basis (4, 4) (by decide) ⟨0, by decide⟩)
      (P.basis (1, 16) (by decide) ⟨0, by decide⟩) =
      P.basis (5, 20) (by decide) ⟨1, by decide⟩ := by
  apply P.basis_mul_eq_basis
  decide

/-- The two different products are independent, not two names for one class.
Applying the basis-coordinate map gives the actual vector [1,1]. -/
theorem page_two_products_sum_ne_zero (P : Presentation table A) :
    Add.add (α := Page E (5, 20))
      (A.product (1, 2) (4, 18)
        (P.basis (1, 2) (by decide) ⟨0, by decide⟩)
        (P.basis (4, 18) (by decide) ⟨0, by decide⟩))
      (A.product (4, 4) (1, 16)
        (P.basis (4, 4) (by decide) ⟨0, by decide⟩)
        (P.basis (1, 16) (by decide) ⟨0, by decide⟩)) ≠ 0 := by
  rw [page_h1_times_d0, page_h0Fourth_times_h4]
  let b : Module.Basis (Fin 2) F2 (Page E (5, 20)) := P.basis (5, 20) (by decide)
  change b 0 + b 1 ≠ 0
  intro h
  have hc := congrArg (fun x => b.repr x 0) h
  simp at hc

theorem imported_h6_square
    (evidence : KIP126.External.ExternalEvidence (Nonempty (Presentation table A))) :
    (myAdams E A evidence).h6Square =
      (myAdams E A evidence).presentation.basis (2, 128)
        (by change (2, 128) ∈ region; decide)
        ⟨0, by change 0 < dim (2, 128); decide⟩ := by
  apply (myAdams E A evidence).presentation.basis_mul_eq_basis (1, 64) (1, 64)
  change ∀ l : Fin (dim (2, 128)),
    coefficient (1, 64) (1, 64) ⟨0, by decide⟩ ⟨0, by decide⟩ l =
      if l = ⟨0, by decide⟩ then 1 else 0
  decide

theorem imported_h6_square_ne_zero
    (evidence : KIP126.External.ExternalEvidence (Nonempty (Presentation table A))) :
    (myAdams E A evidence).h6Square ≠ 0 := by
  rw [imported_h6_square]
  exact ((myAdams E A evidence).presentation.basis (2, 128)
    (by change (2, 128) ∈ region; decide)).ne_zero _

#print axioms h1_cube
#print axioms page_h1_times_h1Sq
#print axioms page_two_products_sum_ne_zero
#print axioms imported_h6_square_ne_zero

end KIP126.Examples.AdamsE2LowDegrees
