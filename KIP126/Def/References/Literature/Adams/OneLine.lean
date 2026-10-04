import KIP126.Def.ClassicalAdams.H4D2.Predicates

namespace KIP126.Classical

/-- The source-backed one-line input used by this slice. Its h₄ instance is
the `j=4` specialization of the located classical one-line calculation. -/
def adamsOneLineDifferentials {stable : Adams.StableHomotopyContext}
    {A : Adams.ClassicalAdamsSS stable stable.sphere}
    (P : Adams.SphereAdamsPresentation A) : Prop :=
  Adams.h₄D₂ P

end KIP126.Classical
