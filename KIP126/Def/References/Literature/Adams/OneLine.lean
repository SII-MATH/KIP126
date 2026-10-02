import KIP126.Def.ClassicalAdams.H4D2.Predicates
import KIP126.Def.References.Literature.Claims

namespace KIP126.Classical

/-- The source-backed one-line input used by this slice. Its h₄ instance is
the `j=4` specialization of the located classical one-line calculation. -/
def adamsOneLineDifferentials {stable : Adams.StableHomotopyContext}
    {A : Adams.ClassicalAdamsSS stable stable.sphere}
    (P : Adams.SphereAdamsPresentation A) : Prop :=
  Adams.h₄D₂ P

end KIP126.Classical

namespace KIP126.Classical.Adams

private def adamsOneLineResult {stable : StableHomotopyContext}
    {A : ClassicalAdamsSS stable stable.sphere}
    (P : SphereAdamsPresentation A)
    (proof : KIP126.Classical.adamsOneLineDifferentials P) :
  KIP126.External.ExternalResult (KIP126.Classical.adamsOneLineDifferentials P) :=
  { proof := proof
    ref := (KIP126.External.externalClaimLedger.lookup
      .adamsOneLine).ref }

def cataloguedAdamsOneLine (P : SphereAdamsPresentation A)
    (proof : KIP126.Classical.adamsOneLineDifferentials P) :
    KIP126.External.CataloguedExternalResult
      (KIP126.Classical.adamsOneLineDifferentials P) :=
  { root := .adamsOneLine
    value := adamsOneLineResult P proof
    ref_eq := by rfl
    class_supported := by trivial }

structure AdamsOneLineCatalogue {stable : StableHomotopyContext}
    {A : ClassicalAdamsSS stable stable.sphere}
    (P : SphereAdamsPresentation A) where
  value : KIP126.External.ExternalResult
    (KIP126.Classical.adamsOneLineDifferentials P)
  ref_eq : value.ref =
    (KIP126.External.externalClaimLedger.lookup .adamsOneLine).ref

def cataloguedAdamsOneLineCanonical
    {stable : StableHomotopyContext}
    {A : ClassicalAdamsSS stable stable.sphere}
    (P : SphereAdamsPresentation A)
    (proof : KIP126.Classical.adamsOneLineDifferentials P) :
    AdamsOneLineCatalogue P :=
  { value := adamsOneLineResult P proof
    ref_eq := rfl }

end KIP126.Classical.Adams
