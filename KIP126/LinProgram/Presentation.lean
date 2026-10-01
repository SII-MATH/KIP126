import KIP126.Def.Comparison.Interfaces
/-! A conditional comparison API. There is no fixed or default archive
presentation here. Consumers must supply its complete mathematical proof. -/
namespace KIP126.Classical.Adams
noncomputable def linE2Presentation [P : LinE2Presentation] : LinE2Presentation := P
end KIP126.Classical.Adams
