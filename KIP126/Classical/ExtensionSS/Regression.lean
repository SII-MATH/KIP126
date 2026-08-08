import KIP126.Classical.ExtensionSS.Basic

/-!
# Regression checks for the concrete classical eta-ESS
-/

namespace KIP126.Classical.ExtensionSS.Regression

open CategoryTheory

example (n : ℕ) : differentialDegree n = (n, n) := rfl

example (D : EtaESSInput) :
    E₀ D = fun b => D.X∞ b ⊞ D.Y∞ b := rfl

example (D : EtaESSInput) (b : Index) :
    abutment D b = kernel (D.etaMap b) ⊞ cokernel (D.etaMap b) :=
  abutment_component D b

example (D : EtaESSInput) (n : ℤ) (b : Index) :
    (etaESSShape n).Rel b (b + differentialDegree n.toNat) := by
  simp [differentialDegree, etaESSShape]

example (D : EtaESSInput) (row : EtaDifferential) :
    FExtension D row ↔ DetectedBy D row :=
  extension_iff_detected D row

example (D : EtaESSInput) :
    etaD₄ ∈ D.differentials :=
  etaD₄_has_degree D

example : etaD₁.locator.artifact = some "aimpaper/main.tex" :=
  etaD₁_has_locator

example (D : EtaESSInput) :
    Crossing D etaD₄ ↔ ∃ row, row ∈ D.differentials ∧
      row.sourceFiltration > etaD₄.sourceFiltration ∧
      row.targetFiltration ≤ etaD₄.targetFiltration :=
  etaD₄_has_crossing D

example (D : EtaESSInput) :
    KIP126.Classical.Regression.etaEss D.differentials :=
  differential_claim D

#print axioms KIP126.Classical.ExtensionSS.etaESS
#print axioms KIP126.Classical.ExtensionSS.extension_iff_detected
#print axioms KIP126.Classical.ExtensionSS.differential_claim
#print axioms KIP126.Classical.ExtensionSS.etaD₄_has_degree

end KIP126.Classical.ExtensionSS.Regression
