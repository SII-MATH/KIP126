import Fact713E12Search.Data
import PageTransitionCertificates.Trajectory
import Fact713PageCertificates.Survivor

namespace Fact713E12Search.Prefix
open LinearCertificates PageTransitionCertificates Data

def stage2 : Stage := ⟨b_S0_9_132_d2, [true,true]⟩
def stage3 : Stage := ⟨b_S0_9_132_d3, [true,false]⟩
def stages : List Stage := [stage2,stage3]

/-- This finite trajectory uses the stored row2569 zero-prefix interpretation.
It does not prove that interpretation for any actual Adams differential. -/
theorem finite_E4 : TrajectoryValid stages := by lin_cert using ()

theorem original_named_vector : stage2.vector = Fact713PageCertificates.target := by
  funext i
  exact (show ∀ i, stage2.vector i = Fact713PageCertificates.target i from by decide) i

theorem same_d2_matrices :
    b_S0_9_132_d2.outgoing = Fact713PageCertificates.wire.outgoing ∧
    b_S0_9_132_d2.incoming = Fact713PageCertificates.wire.incoming := by decide

theorem named_E3_coordinates :
    eval b_S0_9_132_d2.comparison.projection Fact713PageCertificates.target =
      stage3.vector := by
  funext i
  exact (show ∀ i, eval b_S0_9_132_d2.comparison.projection
    Fact713PageCertificates.target i = stage3.vector i from by decide) i

theorem named_E4_coordinate :
    eval b_S0_9_132_d3.comparison.projection stage3.vector =
      (fun _ : Fin 1 => true) := by
  funext i
  exact (show ∀ i, eval b_S0_9_132_d3.comparison.projection stage3.vector i = true from by decide) i

/-- The first unknown value itself remains NULL in the raw source audit.
Only a caller-supplied cycle theorem identifies this selected finite column. -/
theorem stored_first_column_requires_cycle (actualD3 : Vec 2 → Vec 2)
    (cycle : actualD3 stage3.vector = zero) :
    actualD3 stage3.vector =
      eval (matrixOf 2 2 b_S0_9_132_d3.outgoing) stage3.vector := by
  rw [cycle]
  funext i
  exact (show ∀ i : Fin 2, zero i =
    eval (matrixOf 2 2 b_S0_9_132_d3.outgoing) stage3.vector i from by decide) i

#print axioms finite_E4
#print axioms named_E3_coordinates
#print axioms named_E4_coordinate
#print axioms stored_first_column_requires_cycle
end Fact713E12Search.Prefix
