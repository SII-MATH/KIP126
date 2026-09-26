import KIP126.External.Computation.LinProofs.Generated.Table
import KIP126.External.Computation.LinProofs.Predicates

namespace KIP126.Computation.LinProofs

/-- Single external soundness assumption for the pinned, mechanically exported
sphere differential table. Authorized as a development-stage external input:
Zenodo 14875701, v126.3.cw49, `proofs.db/log`; exact hashes and coverage are in
`Generated/manifest.json`. Importing rows is NOT a verification of the machine
proofs. Replacing this axiom requires validating their mathematical content
and their comparison with the fixed sphere Adams object.

Only the fixed table is trusted, not arbitrary caller-provided records. Branch
assumptions, unknowns, extension records and sentinel pages are excluded by the
documented exporter. This does not assert nonzero permanence of h₆². -/
axiom sphereTable_sound (shard offset : Nat) (row : DifferentialRow)
    (h : RawData.lookup shard offset = some row) : DifferentialStatement row

end KIP126.Computation.LinProofs
