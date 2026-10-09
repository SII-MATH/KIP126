import AllClaimConditionalZeroCertificates.Data
namespace AllClaimConditionalZeroCertificates.Matches
open LinearCertificates PageTransitionCertificates
open Fact715TrajectoryCertificates.Naturality
open Data

/-- The local naturality premise determines the exact generated column. -/
def CetaMatches (ds : SS → ST) : Prop :=
  ds sphereClass = zeroS ∧ ∀ i : Fin 1,
    matrixOf 1 2 b_S0_15_139_d3.outgoing i ⟨1,by decide⟩ =
      Fact713TrajectoryCertificates.Row3076.targetCoordinates (ds sphereClass) i

theorem ceta_matches (dc : CS → CT) (ds : SS → ST)
    (hn : ∀ x, ds (f x) = ft (dc x)) : CetaMatches ds := by
  have h := Fact713TrajectoryCertificates.Row3076.from_ceta_naturality dc ds hn
  refine ⟨h.quotientZero, ?_⟩
  exact h.columnMatches

/-- Both semantic column compatibility and complete finite comparison are retained. -/
theorem conditional_block (dc : CS → CT) (ds : SS → ST)
    (hn : ∀ x, ds (f x) = ft (dc x)) :
    CetaMatches ds ∧ b_S0_15_139_d3.Valid :=
  ⟨ceta_matches dc ds hn, b_S0_15_139_d3_complete⟩

#print axioms conditional_block
end AllClaimConditionalZeroCertificates.Matches
