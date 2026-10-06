import KIP126.Def.References.Literature.Adams.OneLine

namespace KIP126.Classical

theorem adamsOneLineDifferentials_h₄ {stable : Adams.StableHomotopyContext}
    {A : Adams.ClassicalAdamsSS stable stable.sphere}
    (P : Adams.SphereAdamsPresentation A) :
    adamsOneLineDifferentials P ↔ Adams.h₄D₂ P := Iff.rfl

theorem adamsOneLineDifferentials_h₄_degrees
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
  obtain ⟨statement, hSource, hTarget⟩ := proof
  refine ⟨statement, hSource, hTarget, ?_, ?_⟩
  · rw [hSource, P.h_degree]
    norm_num
  · rw [statement.target_degree, hSource, P.h_degree]
    norm_num [Adams.classicalAdamsTarget, Adams.classicalAdamsShift,
      KIP126.Core.SpectralSequence.AdamsPage.two,
      KIP126.Core.SpectralSequence.AdamsPage.toInt]

end KIP126.Classical

namespace KIP126.Classical.Adams

theorem adamsOneLineDifferentials_h₄_degrees_bound
    {stable : StableHomotopyContext}
    {π₂ : TwoCompleteStableHomotopy stable}
    (system : SpectrumBoundClassicalAdamsSS π₂ stable.sphere)
    (P : SphereAdamsPresentation system.pageSlice)
    (algebra : SphereAdamsAlgebraPresentation P)
    (input : KIP126.Classical.adamsOneLineDifferentials P) :
    H₄D₂Bound system P algebra := by
  exact ⟨⟨system.strongConvergence, rfl, algebra, rfl,
    KIP126.Classical.adamsOneLineDifferentials_h₄_degrees P
      input⟩⟩

end KIP126.Classical.Adams
