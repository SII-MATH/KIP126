import KIP126.Def.SpectralSequence.Computation.Predicates
import KIP126.External.Provenance

/-! General semantic interface for the Cν facts. The Fixed/Data specialization
now constructs the cofiber sequence and bottom-cell classes from a map on the
fixed sphere, with explicit h₂ detection evidence. This general interface is
NOT permission to instantiate an unrelated sequence as the sphere's Cν.
The remaining Hopf input, top-cell comparison and no-crossing inputs are
tracked in docs/NEAR126_COMPUTATION_FACTS.md. -/
namespace KIP126.Computation.Near126
open KIP126.Core KIP126.Core.SpectralSequence KIP126.External

/-- Semantic two-fact slice for the eighth pictured differential and the last
contradiction. The caller must provide the cofiber and the displayed classes:
xbar = X[4] + x126,8[0] + x126,8,2[0], ybar = Y[0], tbar = T[0].
No existence, geometric identification, or no-crossing theorem is asserted. -/
structure HopfCofiberFacts (E : SpectralSequence (ModuleCat ℤ) (ℤ × ℤ))
    (xbar : E.Page 2 (8, 134)) (ybar : E.Page 2 (11, 136))
    (tbar : E.Page 2 (14, 139)) where
  /-- lem:nuext125, aimpaper/main.tex:2648. -/
  d3_xbar : ExternalEvidence
    (HasNonzeroDifferential E 3 (8, 134) (11, 136) xbar ybar)
  /-- prop:state5false, aimpaper/main.tex:2776; Table:Cnu126.
  Universal quantification includes arbitrary linear combinations of sources. -/
  tbar_short_incoming : ExternalEvidence
    (∀ r : ℤ, 2 ≤ r → r ≤ 5 → ¬ HitOnPage E r (14, 139) tbar)

end KIP126.Computation.Near126
