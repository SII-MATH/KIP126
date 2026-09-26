import KIP126.Def.AdamsE2.LinModel.Data
import KIP126.Def.AdamsE2.LinCompute.Data

namespace KIP126.LinE2

/-- Interpret the calculator's sparse output in the actual quotient algebra.
This only interprets a polynomial; it does not certify reduction soundness. -/
noncomputable def interpretComputedPolynomial (p : Compute.PolynomialF2) : E2 :=
  (p.map fun m => projection
    (polynomialOfPowers (m.flatMap fun (i, a) => [i, a]))).sum

end KIP126.LinE2
