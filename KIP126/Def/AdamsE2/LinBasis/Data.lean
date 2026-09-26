import KIP126.Def.AdamsE2.LinBasisTable.Proofs

namespace KIP126.LinE2
open KIP126.Core.Algebra

/-- Additive basis with the actual CSV values, conditional on the unfinished
table certification. No new arbitrary basis is postulated. -/
noncomputable def dataBasis (s t : ℕ) (ht : t ≤ 261) :
    Module.Basis (BasisIndex s t) F2 (E2At s t) :=
  Classical.choose (basisTable_correct s t ht)

noncomputable def dataCoordinates (s t : ℕ) (ht : t ≤ 261) :
    E2At s t ≃ₗ[F2] (BasisIndex s t →₀ F2) :=
  (dataBasis s t ht).repr

/-- Reference an additive generator by its (s,t,CSV index), with safe failure. -/
noncomputable def basisByCSV? (s t : ℕ) (ht : t ≤ 261) (index : ℕ) :
    Option (E2At s t) :=
  (findBasisIndex? s t index).map (dataBasis s t ht)

end KIP126.LinE2
