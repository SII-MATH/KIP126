import Fact713ConstructedE8.Trace
import Fact713D4Branches.Branches

namespace Fact713ConstructedE8
open IndexedFamilyCertificates PageTransitionCertificates

theorem final_wire_in_both_branches (residual : Bool) :
    lookup (Fact713D4Branches.family residual) ⟨"S0",7,9,132⟩ = some wire7 :=
  Fact713D4Branches.named_d7_same residual

theorem common_finite_trajectory (residual : Bool) :
    Fact713D4Branches.stages residual = Fact713Row2994Branches.Data.residualStages ∧
    TrajectoryValid (Fact713D4Branches.stages residual) :=
  ⟨Fact713D4Branches.stages_common residual, Fact713D4Branches.both_finite_E8 residual⟩

/-- The families remain separate: the actual step needs a full interpretation
of the common wire, not an assertion that both source branches are realized. -/
theorem conditional_E8_with_family
    {S : ManualInputObligations.Reference.AdamsSpectralSequence}
    {pages : ManualInputObligations.Reference.CertifiedAdamsPages S}
    (P : Prefix8 S pages) (residual : Bool) :
    Coherent (Fact713D4Branches.family residual) ∧
    lookup (Fact713D4Branches.family residual) ⟨"S0",7,9,132⟩ = some wire7 ∧
    ∃ x : (S.element 8 Fact713ConstructedNamed.degree).carrier,
      Nonempty (ManualInputObligations.Trace S pages Fact713ConstructedNamed.degree 8 P.raw x) ∧
      x ≠ 0 ∧ P.page8.coordinates.equivalence x = vector8 :=
  ⟨Fact713D4Branches.family_coherent residual, final_wire_in_both_branches residual, P.named_E8⟩

#print axioms final_wire_in_both_branches
#print axioms common_finite_trajectory
#print axioms conditional_E8_with_family
end Fact713ConstructedE8
