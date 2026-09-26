import KIP126.External.Computation.LinProofs.Axiom

namespace KIP126.Computation.LinProofs

/-- The downstream API: prove a finite lookup, then use the same soundness
assumption for every record. No per-record external hypothesis is needed. -/
theorem differential_of_lookup (shard offset : Nat) (row : DifferentialRow)
    (h : RawData.lookup shard offset = some row) : DifferentialStatement row :=
  sphereTable_sound shard offset row h

set_option maxRecDepth 2048 in
/-- Regression example, not another axiom: database row 5541 records the
d₂ from the sole CSV vector at (1,64) to the sole CSV vector at (3,65).
Identification with named monomials is a separate E₂ algebra calculation. -/
theorem row5541 : DifferentialStatement ⟨5541, "d2", 1, 64, 2, [0], [0]⟩ :=
  differential_of_lookup 0 69 _ (by rfl)

end KIP126.Computation.LinProofs
