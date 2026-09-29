import KIP126.Main.Axiom.Challenge2
import KIP126.Main.Axiom.LinProgram.Interpretation.Differentials.Predicates

namespace KIP126.Computation.LinProofs

/-- Soundness of a row in the pinned differential table.  This public theorem
is a projection from the single Challenge 2 witness; it is not an independent
assumption and it uses the presentation stored in that same witness. -/
theorem sphereTable_sound (shard offset : Nat) (row : DifferentialRow)
    (h : RawData.lookup shard offset = some row) : DifferentialStatement row :=
  KIP126.Main.Axiom.computationInterface.sphereTable_sound shard offset row h

end KIP126.Computation.LinProofs
