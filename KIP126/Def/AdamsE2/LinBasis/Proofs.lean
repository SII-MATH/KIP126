import KIP126.Def.AdamsE2.LinBasis.Data
import Mathlib.LinearAlgebra.Dimension.StrongRankCondition

namespace KIP126.LinE2
open KIP126.Core.Algebra

theorem dataBasis_val (s t : ℕ) (ht : t ≤ 261) (i : BasisIndex s t) :
    (dataBasis s t ht i).val = basisValue (basisRowAt s t i) :=
  Classical.choose_spec (basisTable_correct s t ht) i

theorem dataBasis_ne_zero (s t : ℕ) (ht : t ≤ 261) (i : BasisIndex s t) :
    dataBasis s t ht i ≠ 0 := (dataBasis s t ht).ne_zero i

theorem dataCoordinates_basis (s t : ℕ) (ht : t ≤ 261) (i : BasisIndex s t) :
    dataCoordinates s t ht (dataBasis s t ht i) = Finsupp.single i 1 :=
  (dataBasis s t ht).repr_self i

/-- The table is exhaustive: reconstruct any element from its unique coordinates. -/
theorem dataCoordinates_reconstruct (s t : ℕ) (ht : t ≤ 261) (x : E2At s t) :
    (dataCoordinates s t ht).symm (dataCoordinates s t ht x) = x :=
  (dataCoordinates s t ht).symm_apply_apply x

theorem data_finrank (s t : ℕ) (ht : t ≤ 261) :
    Module.finrank F2 (E2At s t) = (basisRowsAt s t).size := by
  simpa [BasisIndex] using Module.finrank_eq_card_basis (dataBasis s t ht)

end KIP126.LinE2
