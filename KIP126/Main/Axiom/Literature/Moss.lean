import KIP126.Def.ClassicalAdams.Moss.StandardSource

/-! Moss convergence on the actual fixed sphere mapping resolution.
Moss (1970), Theorem 1.2; independently accessible formulation:
Belmont--Kong, arXiv:2112.08689v2, Theorem 1.1 (=4.10), Definitions
2.3--2.4, Section 1.2 and Example 5.1. The current v2 primary text was
read directly; the original Moss scan remains unavailable. This is not a
claim that coherence of arbitrary page products implies Moss's theorem:
the pairing and its comparison are the fixed standard source construction.
-/
namespace KIP126.Main.Axiom.Literature
open KIP126.Classical.Adams KIP126.StableHomotopy

/-- Explicit external acceptance. Weak convergence, two null products,
two actual null composites and both crossing conditions remain in the
statement; no specified Massey value or permanence is supplied. -/
axiom sphere_moss
    (c : TowerDetection.Convergence standardFoundation.hf2.unit
      (SphereSpectrum (C := standardFoundation.Spectrum))) :
    Moss.SphereStatement standardFoundation.hf2 standardMod2Ring
      (Moss.standardMossModel c).composition (Moss.standardMossModel c).convergence

end KIP126.Main.Axiom.Literature
