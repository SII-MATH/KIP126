import KIP126.Main.Solution.Computation.LinProgram.Interpretation.Differentials.Certificate

namespace KIP126.Computation.LinProofs

/-- Soundness supplied by the sole Challenge2 witness, using its presentation. -/
theorem Challenge.sphereTable_sound (shard offset : Nat) (row : DifferentialRow)
    (h : RawData.lookup shard offset = some row) : DifferentialStatement row := by
  sorry

end KIP126.Computation.LinProofs
