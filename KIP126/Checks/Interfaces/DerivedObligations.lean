import KIP126.Def.Solution.FoundationConsequences
import KIP126.Def.Solution.Toda
import KIP126.Interface.Solution.InternalPages
import KIP126.Interface.Solution.InternalNaturality
import KIP126.Interface.Solution.Cobar
import KIP126.Def.ClassicalAdams.SphereClasses.Hi.Internal.Proofs
import KIP126.Def.ClassicalAdams.MilnorCohomology.Proofs
import KIP126.Def.Synthetic.QuotientTower.Proofs
import Lean.Elab.Command

/-! These particular generic obligations are proved from explicit mathematical
data. They must not acquire a Challenge placeholder, a fixed-model axiom or a
native computation axiom through a future migration. This is deliberately not
a claim that the whole Challenge package has been constructed. -/

open Lean Elab Command in
run_cmd do
  for name in [``KIP126.Classical.Adams.AdamsFiltrationAtLeast.hasMod2ZeroFactorization,
      ``KIP126.Def.Solution.cobar_square_zero,
      ``KIP126.Def.Solution.adams_filtration_decomposition,
      ``KIP126.Def.Solution.todaInterface,
      ``KIP126.Interface.Solution.pageCalculus,
      ``KIP126.Interface.Solution.representativeCalculus,
      ``KIP126.Interface.Solution.internalNaturality,
      ``KIP126.Interface.Solution.cobarE2Comparison,
      ``KIP126.Interface.Solution.cobarCupCalculus,
      ``KIP126.Classical.Adams.MilnorCohomology.comparison_hi,
      ``KIP126.Classical.Adams.MilnorCohomology.comparison_hiSquare,
      ``KIP126.Synthetic.Context.lambdaPow_naturality,
      ``KIP126.Synthetic.Context.XModLambdaN.incl_naturality,
      ``KIP126.Synthetic.Context.XModLambdaN.proj_naturality,
      ``KIP126.Classical.Adams.Sphere.Internal.hi,
      ``KIP126.Classical.Adams.Sphere.Internal.hiSquare,
      ``KIP126.Classical.Adams.MilnorCohomology.boundaries_le_cycles,
      ``KIP126.Classical.Adams.MilnorCohomology.classOf_eq_iff,
      ``KIP126.Classical.Adams.MilnorCohomology.hiSquare_six_ne_zero] do
    let axioms ← liftCoreM (collectAxioms name)
    for axiomName in axioms do
      unless [``propext, ``Classical.choice, ``Quot.sound].contains axiomName do
        throwError "derived interface used an unproved input: {name}: {axiomName}"
