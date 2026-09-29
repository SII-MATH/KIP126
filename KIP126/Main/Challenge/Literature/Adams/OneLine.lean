import KIP126.Main.Solution.Literature.Adams.OneLine

/-! Statement track for the preserved consumer API; every goal remains open. -/

namespace KIP126.Classical

theorem Challenge.adamsOneLineDifferentials_h₄ {stable : Adams.StableHomotopyContext}
    {A : Adams.ClassicalAdamsSS stable stable.sphere}
    (P : Adams.SphereAdamsPresentation A) :
    adamsOneLineDifferentials P ↔ Adams.h₄D₂ P := by
  sorry

theorem Challenge.adamsOneLineDifferentials_h₄_degrees
    {stable : Adams.StableHomotopyContext}
    {A : Adams.ClassicalAdamsSS stable stable.sphere}
    (P : Adams.SphereAdamsPresentation A)
    (proof : adamsOneLineDifferentials P) :
    ∃ statement : Adams.AdamsD₂Statement A,
      statement.source = P.h 4 ∧
        statement.target = Adams.sphereProduct P (P.h 0)
          (Adams.sphereProduct P (P.h 3) (P.h 3)) ∧
        statement.source.degree = (1, 16) ∧
        statement.target.degree = (3, 17) := by
  sorry

end KIP126.Classical

namespace KIP126.Classical.Adams

/-- Consume a located one-line result.  Unlike `cataloguedAdamsOneLine`, this
direction starts from a catalogue value and extracts its supplied theorem. -/
theorem Challenge.cataloguedAdamsOneLine_proof (P : SphereAdamsPresentation A)
    (input : KIP126.External.CataloguedExternalResult
      (KIP126.Classical.adamsOneLineDifferentials P)) :
    KIP126.Classical.adamsOneLineDifferentials P := by
  sorry

/-- The h₄ degree calculation obtained by consuming the located external
result rather than asking the caller for an unlabelled proof. -/
theorem Challenge.cataloguedAdamsOneLine_h₄_degrees (P : SphereAdamsPresentation A)
    (input : KIP126.External.CataloguedExternalResult
      (KIP126.Classical.adamsOneLineDifferentials P)) :
    ∃ statement : AdamsD₂Statement A,
      statement.source = P.h 4 ∧
        statement.target = sphereProduct P (P.h 0)
          (sphereProduct P (P.h 3) (P.h 3)) ∧
        statement.source.degree = (1, 16) ∧
        statement.target.degree = (3, 17) := by
  sorry

theorem Challenge.cataloguedAdamsOneLine_h₄_degrees_bound
    {stable : StableHomotopyContext}
    {π₂ : TwoCompleteStableHomotopy stable}
    (system : SpectrumBoundClassicalAdamsSS π₂ stable.sphere)
    (P : SphereAdamsPresentation system.pageSlice)
    (algebra : SphereAdamsAlgebraPresentation P)
    (input : AdamsOneLineCatalogue P) :
    H₄D₂Bound system P algebra := by
  sorry

end KIP126.Classical.Adams
