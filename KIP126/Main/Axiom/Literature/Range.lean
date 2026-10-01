import KIP126.Def.ClassicalAdams.StandardSphere.Classes.Data
import KIP126.LinProgram.Route.Consequences

/-! The two infinite-range background results used to pass from the
finite Lin window to the actual sphere.  Both concern the fixed completed
topological sphere, its specified HF2 tower and its specified Milnor E2.
They are independent of the selected records and of LWX's new rules.

Source directly checked: Ravenel, Complex cobordism and stable homotopy
groups of spheres, author PDF ravenel2.pdf, Theorem 3.4.5(a), printed p.87
(proof p.89), and Section 2.1, Theorem 2.1.1, Lemma 2.1.12 and its
completion argument, printed pp.41--47.  The latter is used only for the
finite-type sphere; no general assertion for an arbitrary unbounded
spectrum or arbitrary associated-graded identification is made.

The source realization and the same sphere/cobar and Adams-tower
comparisons in Def are the model-adaptation obligations for these direct
specializations. They do not depend on any particular differential.
-/
namespace KIP126.Main.Axiom.Literature
open KIP126.Classical.Adams KIP126.Computation.Route

/-- Uniform weaker form of Adams' line; the zero stem is excluded. -/
axiom sphere_vanishing_line : SphereVanishingLine standardFoundation.hf2

/-- The intersection of the actual sphere Adams filtration is zero. -/
axiom sphere_separated : ClassicalSphereSeparated standardFoundation.hf2

end KIP126.Main.Axiom.Literature
