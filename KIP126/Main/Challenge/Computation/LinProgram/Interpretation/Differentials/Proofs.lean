import KIP126.LinProgram.Interpretation.Differentials.Proofs

/-! Statement track for the preserved consumer API; every goal remains open. -/

namespace KIP126.Computation.LinProofs

variable [KIP126.Classical.Adams.LinE2Presentation]
variable [KIP126.Computation.LinProofs.SphereTableCertificate]

/-- The downstream API: prove a finite lookup, then use the same soundness
assumption for every record. No per-record external hypothesis is needed. -/
theorem Challenge.differential_of_lookup (shard offset : Nat) (row : DifferentialRow)
    (h : RawData.lookup shard offset = some row) : DifferentialStatement row := by
  sorry

/-- Consume a database result through the shared differential interface.
The coordinate witnesses remain explicit; a row name alone is not an
identification with a paper's chosen polynomial expression. -/
theorem Challenge.DifferentialStatement.hasDifferential {row : DifferentialRow}
    (h : DifferentialStatement row) :
    ∃ (hx : row.t ≤ 261) (hy : row.t + row.r - 1 ≤ 261)
      (x : LinE2.E2At row.s row.t)
      (y : LinE2.E2At (row.s + row.r) (row.t + row.r - 1)),
      HasCoordinates x row.x ∧ HasCoordinates y row.dx ∧
      Core.SpectralSequence.HasDifferential Classical.Adams.sphereAdamsData row.r
        (row.s, row.t) (((row.s + row.r : Nat) : ℤ), ((row.t + row.r - 1 : Nat) : ℤ))
        (Classical.Adams.linToSphereE2 row.s row.t hx x)
        (Classical.Adams.linToSphereE2 (row.s + row.r) (row.t + row.r - 1) hy y) := by
  sorry

set_option maxRecDepth 2048 in
/-- Regression example, not another axiom: database row 5541 records the
d₂ from the sole CSV vector at (1,64) to the sole CSV vector at (3,65).
Identification with named monomials is a separate E₂ algebra calculation. -/
theorem Challenge.row5541 : DifferentialStatement ⟨5541, "d2", 1, 64, 2, [0], [0]⟩ := by
  sorry

end KIP126.Computation.LinProofs
