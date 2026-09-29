import KIP126.Interface.Solution.FiniteCoherentPageExtension
import KIP126.Interface.Solution.CoherentPageExtension
import KIP126.Main.Axiom.Literature.StandardSphere.Proofs
import KIP126.Main.Axiom.LinProgram.Interpretation.Differential.LongLayer.Lifting.Proofs
import KIP126.Main.Solution.Computation.Vanishing
import KIP126.Main.Solution.Computation.Nonvanishing
import KIP126.Main.Solution.Computation.Dimension
import KIP126.Main.Axiom.LinProgram.Interpretation.Classes.Comparison.Proofs
import KIP126.Main.Axiom.LinProgram.Interpretation.Tower.SecondDifferential.Proofs
import KIP126.Main.Solution.Computation.Reduction
import KIP126.LinProgram.Certificates.SquareDetection.Certificate
import KIP126.Interface.Solution.LinProgram.BasisTable
import KIP126.Interface.Solution.InternalPages
import KIP126.Interface.Solution.InternalNaturality
import KIP126.Interface.Solution.Cobar
import KIP126.Interface.Solution.LinProgram.Multiplication
import KIP126.Interface.Solution.PageExtensionSolutions
import KIP126.Interface.Solution.LowDimensionalPermanence
import KIP126.Def
import KIP126.Challenge1
import KIP126.Challenge2
import KIP126.Def.Challenge
import KIP126.Def.Solution
import KIP126.Def.AdamsE2
import KIP126.Interface
import KIP126.Main
import KIP126.Main.Solution
import KIP126.Mathlib
import KIP126.Main.Axiom.LinProgram.Examples.AdamsE2Table
import KIP126.Main.Axiom.LinProgram.Examples.AdamsE2LowDegrees

/-! Library entry for shared definitions, stage inputs and open statements.
Main's paper deductions are exported from Solution, without intermediate
Challenge mirrors. The stage Solution tracks also have separate entry modules.
Previously exposed helper results remain re-exported here for compatibility. Importing a Challenge
never establishes proof completion. Regression modules live in `KIP126.Checks`. -/
