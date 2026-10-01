import KIP126.Def.AdamsE2.LinBasisTable.Predicates
namespace KIP126.Main.Axiom.Computation
/-- Fixed v126.3.cw49 quotient-basis certification, exactly the Interface target.
This is an explicit accepted computation. It is not a theorem or a default instance. -/
axiom basisTable_correct (s t : ℕ) (ht : t ≤ 261) :
    KIP126.LinE2.BasisTableCorrect s t
end KIP126.Main.Axiom.Computation
