import KIP126.Solution.Final.h6_sq_permanent_computational
import KIP126.Mathlib.ClassicalAdams.FinalComparison.Axiom

/-!
# The fixed standard permanent h₆² statement

All standard objects are fixed in the foundation layer. The statement has no
category, coefficient-object, coordinate, table, or presentation parameters.
The proof below transports the computational Solution. It has no local sorry,
but still depends on that Solution's sorryAx and the named comparison axioms.
It is not a completed proof of permanence.
-/
namespace KIP126.Solution.Final.H6SquarePermanent

open KIP126.Classical.Adams KIP126.Core.SpectralSequence

/-- The standard h₆² ∈ E₂^(2,128)(S⁰) has compatible nonzero descendants on
all later pages of the fixed tower-constructed sphere Adams sequence. -/
theorem h6_sq_permanent :
    IsPermanent sphereAdams 2 (by decide) (2, 128) sphereH6Square := by
  have hcomp := KIP126.Solution.Final.H6SquarePermanent.h6_sq_permanent_computational
  have htower := (survival_comparison (2, 128) computedH6Square).mp hcomp
  simpa only [h6Square_comparison] using htower

end KIP126.Solution.Final.H6SquarePermanent
