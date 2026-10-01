import KIP126.Def.Comparison.Interfaces
import KIP126.Def.AdamsE2.LinBasisTable.Certification.Proofs

namespace KIP126.Interface.Solution

open KIP126.LinE2

/-- Transport the same certified CSV basis through the specified comparison.
The only certification debt is the Interface helper; no Main consumer axiom
or Challenge placeholder is used. -/
theorem sphereBasis_of_basisTable (P : KIP126.Classical.Adams.LinE2Presentation)
    (cert : ∀ (s t : ℕ), t ≤ 261 → BasisTableCorrect s t) :
    Nonempty (KIP126.Comparison.SphereBasisInterface P) := by
  refine ⟨{
    coordinates := fun s t ht => (P.comparison s t ht).symm.trans
      ((coordinatesOfCertification s t
        (cert s t ht)).restrictScalars ℤ)
    csv_values := ?_ }⟩
  intro s t ht i
  change ((P.comparison s t ht).symm
    ((P.comparison s t ht)
      ((coordinatesOfCertification s t (cert s t ht)).symm
        (Finsupp.single i 1)))).val = basisValue (basisRowAt s t i)
  rw [LinearEquiv.symm_apply_apply,
    ← coordinatesOfCertification_basis s t (cert s t ht) i,
    LinearEquiv.symm_apply_apply]
  exact basisOfCertification_val s t (cert s t ht) i

end KIP126.Interface.Solution
