import KIP126.Def.Comparison.Proofs.FiniteCoherentPageExtension
import KIP126.Def.Comparison.Proofs.CoherentPageExtension
import KIP126.Def.References.Literature.StandardSphere.Proofs
import KIP126.LinProgram.Interpretation.Differential.LongLayer.Lifting.Proofs
import KIP126.Main.Solution.Computation.Vanishing
import KIP126.Main.Solution.Computation.Nonvanishing
import KIP126.Main.Solution.Computation.Dimension
import KIP126.Main.Solution.Computation.Comparisons.Classes
import KIP126.Main.Solution.Computation.Comparisons.SecondDifferential
import KIP126.Main.Solution.Computation.Reduction
import KIP126.LinProgram.Certificates.SquareDetection.Certificate
import KIP126.Def.Comparison.Proofs.InternalPages
import KIP126.Def.Comparison.Proofs.InternalNaturality
import KIP126.Def.Comparison.Proofs.Cobar
import KIP126.Def.Comparison.Proofs.PageExtensionSolutions
import KIP126.Main.Solution.Literature.LowDimensionalPermanence
import KIP126.Def
import KIP126.Def.Foundation.Interfaces
import KIP126.Def.Comparison.Interfaces
import KIP126.Def.AdamsE2
import KIP126.Interface
import KIP126.Main
import KIP126.Main.Solution
import KIP126.Mathlib
import KIP126.LinProgram.Examples.AdamsE2Table
import KIP126.LinProgram.Examples.AdamsE2LowDegrees
import KIP126.Def.Foundation.Proofs.FoundationConsequences
import KIP126.Def.Foundation.Proofs.Toda
import KIP126.Def.Foundation.Proofs.Synthetic.Completion
import KIP126.Def.Comparison.Proofs.CertifiedBasis
import KIP126.Def.References.Evidence
import KIP126.Def.References.Literature.Adams.OneLine
import KIP126.Def.References.Literature.AppendixTable.Rows.Catalogue.Proofs
import KIP126.Def.References.Literature.Near126
import KIP126.Def.References.Literature.InternalGeometry
import KIP126.Def.References.Literature.Kervaire
import KIP126.Def.References.Literature.BJMOriginal
import KIP126.Def.References.Literature.May
import KIP126.Def.References.Literature.SyntheticBockstein
import KIP126.LinProgram.Interpretation.Basis.Proofs
import KIP126.LinProgram.Interpretation.Differentials.Proofs
import KIP126.Def.AdamsE2.LinAutomation.Proofs
import KIP126.Def.AdamsE2.LinCompute.Data
import KIP126.Main.Solution.Literature.AdamsOneLine
import KIP126.Main.Solution.Literature.MossSpecialization
import KIP126.Main.Solution.Literature.Tmf

/-! Library entry for shared definitions, stage inputs and open statements.
Main's paper deductions are exported from Solution, without intermediate
Challenge mirrors. The stage Solution tracks also have separate entry modules.
Previously exposed helper results remain re-exported here for compatibility. Importing a Challenge
never establishes proof completion. Regression modules live in `KIP126.Checks`. -/
