import Fact764TrajectoryAudit.C2Naturality
import BranchReplayCertificates.D154545
namespace Fact764TrajectoryAudit.LaterDetector
open LinearCertificates

/-- A later-page detector must annihilate every earlier boundary. This is the
precise cross-page compatibility needed to use an independently proved d4
as an obstruction to a d3 candidate; its truth is not read from D221209. -/
theorem earlier_boundary_detection (earlier : Matrix 3 n) (later : Matrix m 3)
    (coherent : ∀ u, eval later (eval earlier u) = zero)
    (row : Fin m) (detects : ∀ v, eval later v row = v 0)
    (u : Vec n) : eval earlier u 0 = false := by
  have h := congrFun (coherent u) row
  rw [detects] at h
  exact h

-- In this three-dimensional coordinate space the desired detector is local0.
-- This definition does not claim that it is an actual higher differential.
def candidateDetector : Matrix 1 3 := fun _ j => j.val == 0

theorem candidateDetector_coordinate (v : Vec 3) :
    eval candidateDetector v 0 = v 0 := by
  change xor (v 0) false = v 0
  simp

theorem earlier_column_in_map_kernel (earlier : Matrix 3 n)
    (coherent : ∀ u, eval candidateDetector (eval earlier u) = zero) (u : Vec n) :
    InImage (PageTransitionCertificates.matrixOf
      MapComparison.upperTarget.m MapComparison.upperTarget.n MapComparison.upperTarget.incoming)
      (eval MapComparison.upperMiddleMap (eval earlier u)) := by
  apply (C2Naturality.target_kernel_iff _).mpr
  exact earlier_boundary_detection earlier candidateDetector coherent 0
    candidateDetector_coordinate u
/-- Compose the existing conditional D154545 reduction with earlier-boundary
coherence and the actual rank-one C2->S0 target map. No D log is trusted. -/
theorem from_D154545_conditions (earlier : Matrix 3 n) (later : Matrix 4 3)
    (cycle : eval later (fun i => i.val == 1) 0 = eval later (fun i => i.val == 1) 1)
    (refuted : eval later (fun i => i.val == 1) ∉ BranchReplayCertificates.D154545.excluded)
    (coherent : ∀ u, eval later (eval MapComparison.upperMiddleMap (eval earlier u)) = zero)
    (u : Vec n) : eval earlier u 0 = false := by
  have known := BranchReplayCertificates.D154545.exhaustive_reduction _ cycle refuted
  have hz := congrFun (coherent u) ⟨3,by decide⟩
  by_contra hv
  have ht : eval earlier u 0 = true := by cases h : eval earlier u 0 <;> simp_all
  have mapped : eval MapComparison.upperMiddleMap (eval earlier u) = (fun i => i.val == 1) := by
    change (_ : Vec 3) = _
    funext i
    have hi : i = 0 ∨ i = 1 ∨ i = 2 := by omega
    rcases hi with hi|hi|hi
    all_goals subst i
    · rfl
    · change xor (eval earlier u 0) false = true
      simp [ht]
    · rfl
  rw [mapped, known] at hz
  change true = false at hz
  contradiction

end Fact764TrajectoryAudit.LaterDetector
