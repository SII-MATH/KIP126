import KIP126.Main.Solution.Computation.LinProgram.Interpretation.Differentials.Predicates
namespace KIP126.Computation.LinProofs
variable [KIP126.Classical.Adams.LinE2Presentation]
/-- Explicit hypothesis for reusing the historical full-table proofs.
No global instance is supplied; the route consumes its own exact atomic C. -/
class SphereTableCertificate : Prop where
  sound : ∀ (shard offset : Nat) (row : DifferentialRow),
    RawData.lookup shard offset = some row → DifferentialStatement row
def sphereTable_sound [SphereTableCertificate] (shard offset : Nat)
    (row : DifferentialRow) (h : RawData.lookup shard offset = some row) :
    DifferentialStatement row := SphereTableCertificate.sound shard offset row h
end KIP126.Computation.LinProofs
