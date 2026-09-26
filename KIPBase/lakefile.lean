import Lake

open Lake DSL

package KIPBase where
  version := v!"0.1.0"
  /-
  The sources already live in the directory named `KIPBase`, because this
  standalone project is also embedded in the parent KIP126 checkout.  Using
  the parent as the Lean source root preserves the existing module names
  `KIPBase.*` without duplicating or moving source files.
  -/
  srcDir := ".."

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.32.2"

@[default_target]
lean_lib KIPBase where
  roots := #[
    `KIPBase.Mathlib,
    `KIPBase.SpectralSequence.Basic,
    `KIPBase.SpectralSequence.BoundedExtension,
    `KIPBase.SpectralSequence.Commutativity,
    `KIPBase.SpectralSequence.Completion,
    `KIPBase.SpectralSequence.Convergence,
    `KIPBase.SpectralSequence.Crossing,
    `KIPBase.SpectralSequence.FilteredComplex,
    `KIPBase.SpectralSequence.Truncation,
    `KIPBase.SpectralSequence.UnboundedExtension,
    `KIPBase.StableHomotopy.Adams,
    `KIPBase.StableHomotopy.Basic,
    `KIPBase.StableHomotopy.Cohomology,
    `KIPBase.StableHomotopy.TensorTriangulatedCategory,
    `KIPBase.Synthetic.Adams,
    `KIPBase.Synthetic.Basic,
    `KIPBase.Synthetic.ExtensionSS,
    `KIPBase.Synthetic.QuotientTower,
    `KIPBase.Synthetic.SolutionTower,
    `KIPBase.Synthetic.QuotientExtensionSS,
    `KIPBase.Synthetic.PageExtension,
    `KIPBase.Synthetic.Lift,
    `KIPBase.Synthetic.Nu,
    `KIPBase.Synthetic.Rigidity,
    `KIPBase.Synthetic.Sphere,
    `KIPBase.multiplicativeSS.Adams,
    `KIPBase.multiplicativeSS.AdamsDetection,
    `KIPBase.multiplicativeSS.AdamsEnriched,
    `KIPBase.multiplicativeSS.AdamsMasseyProduct,
    `KIPBase.multiplicativeSS.Basic,
    `KIPBase.multiplicativeSS.CategoricalTodaBracket,
    `KIPBase.multiplicativeSS.DGA,
    `KIPBase.multiplicativeSS.MasseyProduct,
    `KIPBase.multiplicativeSS.ModuleCat,
    `KIPBase.multiplicativeSS.Monoidal,
    `KIPBase.multiplicativeSS.Moss,
    `KIPBase.multiplicativeSS.MossCrossing,
    `KIPBase.multiplicativeSS.TodaBracket,
    `KIPBase.multiplicativeSS.TriangulatedTodaBracket,
    `KIPBase.multiplicativeSS.adamsdata.adamsE2,
    `KIPBase.multiplicativeSS.adamsdata.homotopy,
    `KIPBase.Basic,
    `KIPBase.Standalone]
  leanOptions := #[
    ⟨`pp.unicode.fun, true⟩,
    ⟨`relaxedAutoImplicit, false⟩,
    ⟨`weak.linter.mathlibStandardSet, true⟩,
    ⟨`backward.defeqAttrib.useBackward, true⟩,
    ⟨`backward.isDefEq.respectTransparency, false⟩,
    ⟨`maxSynthPendingDepth, .ofNat 3⟩]
