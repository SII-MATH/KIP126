import Fact715TrajectoryCertificates.Conditional

namespace Fact713TrajectoryCertificates.Row3076
open LinearCertificates PageTransitionCertificates
open Fact715TrajectoryCertificates
open Naturality

abbrev block := ConditionalData.b15_139_3
abbrev rawRow := ConditionalData.b15_139_3_outgoing_row_1

theorem raw_unknown : rawRow.diff = none := by decide
theorem selected_row : rawRow.row = 3076 ∧ rawRow.base = [1,3] ∧
    rawRow.level = 9000 := by decide

def targetCoordinates : ST → Vec MapComparison.upperTarget.h :=
  (homologyEquivalence _ _ MapComparison.upperTarget.comparison
    MapComparison.upperTarget_complete.2).toCoordinates

/-- The dependency records both the quotient value and its matrix-column use.
It does not assert any of Fact713's other unknown differential values. -/
structure DependencyValid (ds : SS → ST) : Prop where
  quotientZero : ds sphereClass = zeroS
  columnMatches : ∀ i : Fin 1,
    matrixOf 1 2 block.outgoing i ⟨1,by decide⟩ =
      targetCoordinates (ds sphereClass) i

theorem from_ceta_naturality (dc : CS → CT) (ds : SS → ST)
    (naturality : ∀ x, ds (f x) = ft (dc x)) : DependencyValid ds := by
  have hz := sphere_d3_zero dc ds naturality
  refine ⟨hz, ?_⟩
  rw [hz]
  intro i
  change matrixOf 1 2 block.outgoing i ⟨1,by decide⟩ =
    eval MapComparison.upperTarget.comparison.projection zero i
  rw [eval_zero]
  exact (show ∀ i : Fin 1,
    matrixOf 1 2 block.outgoing i ⟨1,by decide⟩ = zero i from by decide) i

theorem reused_block_checked : block.Valid :=
  ConditionalData.b15_139_3_complete

#print axioms from_ceta_naturality
end Fact713TrajectoryCertificates.Row3076
