import Fact715TrajectoryCertificates.ConditionalData
import Fact715TrajectoryCertificates.Naturality
namespace Fact715TrajectoryCertificates.Conditional
open LinearCertificates PageTransitionCertificates ConditionalData Naturality

def Matches (ds : SS → ST) : Prop := ds sphereClass = zeroS ∧
  (fun i => matrixOf 1 2 b15_139_3.outgoing i ⟨1,by decide⟩) =
    eval b18_141_2.comparison.projection zero

theorem finite_E5_from_naturality (dc : CS → CT) (ds : SS → ST)
    (hn : ∀ x, ds (f x) = ft (dc x)) :
    Matches ds ∧ TrajectoryValid stages := by
  refine ⟨⟨sphere_d3_zero dc ds hn, ?_⟩, constructed_trajectory_checked⟩
  rw [eval_zero]
  funext i
  exact (show ∀ i, matrixOf 1 2 b15_139_3.outgoing i ⟨1,by decide⟩ = zero i from by decide) i
end Fact715TrajectoryCertificates.Conditional
