import KIP126.Def.AdamsE2
import Mathlib.Data.Int.Interval

/-!
# A sourced, nontrivial Adams E₂ table

Source: Weinan Lin, *Cohomology of the Mod 2 Steenrod algebra*, t261.2,
https://doi.org/10.5281/zenodo.7865526, `S0_AdamsE2_csv.zip`.
SHA-256: bb53d84a3450d58535f7119d3a4fa2123688f9574c396d592763c37be89de470.

The chart rectangle is 0 ≤ s ≤ 8 and 0 ≤ stem = t-s ≤ 8. We also retain
(1,64) and (2,128), and add (1,16), (4,18), (5,20) to exhibit a two-dimensional
cell. All stored degrees are INTERNAL (s,t), not (stem,s).
The source basis IDs are preserved, and the product rows are reduced using
the published relations, not inferred merely from the dimensions.

Reproduce the marked block with `scripts/extract_adams_e2_low.py`.
These numerical data do not prove their interpretation on the sphere page:
that remains an explicit `ExternalEvidence (Nonempty (Presentation table A))`.
-/

namespace KIP126.Examples.AdamsE2LowDegrees

open KIP126.AdamsE2 KIP126.Core.Algebra

-- Kernel-checked decisions unfold the finite region and its coordinate lists.
set_option maxRecDepth 4096

-- BEGIN LIN CSV EXTRACT
/-- CSV basis IDs, internal bidegrees, and readable monomials. -/
def basisRows : List (Nat × Degree × String) :=
  [
    (0, (0, 0), "1"),
    (1, (1, 1), "h_0"),
    (2, (2, 2), "h_0^2"),
    (3, (1, 2), "h_1"),
    (4, (3, 3), "h_0^3"),
    (5, (4, 4), "h_0^4"),
    (6, (2, 4), "h_1^2"),
    (7, (1, 4), "h_2"),
    (8, (5, 5), "h_0^5"),
    (9, (2, 5), "h_0 * h_2"),
    (10, (6, 6), "h_0^6"),
    (11, (3, 6), "h_0^2 * h_2"),
    (12, (7, 7), "h_0^7"),
    (13, (8, 8), "h_0^8"),
    (14, (2, 8), "h_2^2"),
    (15, (1, 8), "h_3"),
    (17, (2, 9), "h_0 * h_3"),
    (19, (3, 10), "h_0^2 * h_3"),
    (20, (2, 10), "h_1 * h_3"),
    (22, (4, 11), "h_0^3 * h_3"),
    (23, (3, 11), "c_0"),
    (35, (1, 16), "h_4"),
    (42, (4, 18), "d_0"),
    (50, (5, 20), "h_1 * d_0"),
    (51, (5, 20), "h_0^4 * h_4"),
    (401, (1, 64), "h_6"),
    (2314, (2, 128), "h_6^2")
  ]

/-- All nonzero non-unit products with covered target; IDs refer to basisRows. -/
def productRows : List (Nat × Nat × List Nat) :=
  [
    (1, 1, [2]),
    (1, 2, [4]),
    (1, 4, [5]),
    (1, 5, [8]),
    (1, 7, [9]),
    (1, 8, [10]),
    (1, 9, [11]),
    (1, 10, [12]),
    (1, 12, [13]),
    (1, 15, [17]),
    (1, 17, [19]),
    (1, 19, [22]),
    (2, 2, [5]),
    (2, 4, [8]),
    (2, 5, [10]),
    (2, 7, [11]),
    (2, 8, [12]),
    (2, 10, [13]),
    (2, 15, [19]),
    (2, 17, [22]),
    (3, 3, [6]),
    (3, 6, [11]),
    (3, 15, [20]),
    (3, 42, [50]),
    (4, 4, [10]),
    (4, 5, [12]),
    (4, 8, [13]),
    (4, 15, [22]),
    (5, 5, [13]),
    (5, 35, [51]),
    (7, 7, [14]),
    (401, 401, [2314])
  ]
-- 86 covered cells; dimension counts {0: 60, 1: 25, 2: 1}.
-- 27 basis vectors; 142 covered unordered products checked (including units).
-- END LIN CSV EXTRACT

/-- Include zero-dimensional cells explicitly; absence of a basis row is
zero only inside this declared, completely extracted region. -/
def region : Finset Degree :=
  ((Finset.Icc (0 : ℤ) 8 ×ˢ Finset.Icc (0 : ℤ) 8).image
    (fun p => (p.1, p.1 + p.2))) ∪ {(1, 64), (2, 128), (1, 16), (4, 18), (5, 20)}

def basisIds (p : Degree) : List Nat :=
  (basisRows.filter (fun row => row.2.1 == p)).map Prod.fst

def dim (p : Degree) : Nat := (basisIds p).length

/-- Internal lookup, called only after degree/index coverage has been checked.
The source extraction has checked ALL covered pairs before omitting zeros. -/
def productIds (left right : Nat) : List Nat :=
  if left = 0 then [right]
  else if right = 0 then [left]
  else ((productRows.find? (fun row =>
    row.1 == min left right && row.2.1 == max left right)).map (·.2.2)).getD []

def coefficient (p q : Degree) (i : Fin (dim p)) (j : Fin (dim q))
    (k : Fin (dim (p + q))) : F2 :=
  if (basisIds (p + q))[k] ∈ productIds (basisIds p)[i] (basisIds q)[j] then 1 else 0

def table : Table where
  region := region
  dim := dim
  mulCoeff := fun p q _ _ _ => coefficient p q
  zero_mem := by decide
  unitCoeff := fun i => if (basisIds (0, 0))[i] = 0 then 1 else 0

/-- User-facing query: `none` is unknown/out-of-range/invalid, while `some []`
is the zero vector in a covered zero-dimensional target. -/
def productCoordinates (p q : Degree) (i j : Nat) : Option (List Nat) :=
  if p ∈ region ∧ q ∈ region ∧ p + q ∈ region then
    if hi : i < dim p then
      if hj : j < dim q then
        some ((basisIds (p + q)).map (fun id =>
          if id ∈ productIds (basisIds p)[i] (basisIds q)[j] then 1 else 0))
      else none
    else none
  else none

noncomputable section

def h0 : table.Model := table.generator (1, 1) (by decide) ⟨0, by decide⟩
def h1 : table.Model := table.generator (1, 2) (by decide) ⟨0, by decide⟩
def h2 : table.Model := table.generator (1, 4) (by decide) ⟨0, by decide⟩
def h3 : table.Model := table.generator (1, 8) (by decide) ⟨0, by decide⟩
def c0 : table.Model := table.generator (3, 11) (by decide) ⟨0, by decide⟩
def h6 : table.Model := table.generator (1, 64) (by decide) ⟨0, by decide⟩
def h0Sq : table.Model := table.generator (2, 2) (by decide) ⟨0, by decide⟩
def h1Sq : table.Model := table.generator (2, 4) (by decide) ⟨0, by decide⟩
def h0h2 : table.Model := table.generator (2, 5) (by decide) ⟨0, by decide⟩
def h0Sqh2 : table.Model := table.generator (3, 6) (by decide) ⟨0, by decide⟩
def h1h3 : table.Model := table.generator (2, 10) (by decide) ⟨0, by decide⟩
def h6Sq : table.Model := table.generator (2, 128) (by decide) ⟨0, by decide⟩
def h4 : table.Model := table.generator (1, 16) (by decide) ⟨0, by decide⟩
def d0 : table.Model := table.generator (4, 18) (by decide) ⟨0, by decide⟩
def h0Fourth : table.Model := table.generator (4, 4) (by decide) ⟨0, by decide⟩
def b0 : table.Model := table.generator (5, 20) (by decide) ⟨0, by decide⟩
def b1 : table.Model := table.generator (5, 20) (by decide) ⟨1, by decide⟩

end

end KIP126.Examples.AdamsE2LowDegrees
