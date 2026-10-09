import Row3743Successor.Basic
import PageTransitionCertificates.Trajectory

namespace Row3743Successor.Links
open LinearCertificates PageTransitionCertificates Data

def source2 : Stage := ⟨b_S0_27_150_d2, [false,false,false,true]⟩
def source3 : Stage := ⟨b_S0_27_150_d3, [true]⟩
def target2 : Stage := ⟨b_S0_31_153_d2, [true,false,false]⟩
def target3 : Stage := ⟨b_S0_31_153_d3, [true]⟩

theorem source_E4 : TrajectoryValid [source2,source3] := by lin_cert using ()
theorem target_E4 : TrajectoryValid [target2,target3] := by lin_cert using ()

theorem source_endpoint :
    eval b_S0_27_150_d3.comparison.projection source3.vector =
      (fun _ : Fin 1 => true) := by
  funext i
  exact (show ∀ i, eval b_S0_27_150_d3.comparison.projection source3.vector i = true
    from by decide) i

theorem target_endpoint :
    eval b_S0_31_153_d3.comparison.projection target3.vector =
      (fun _ : Fin 1 => true) := by
  funext i
  exact (show ∀ i, eval b_S0_31_153_d3.comparison.projection target3.vector i = true
    from by decide) i

/-- The raw row3986 differential goes from local E2 basis 3 to local basis 0.
Both travel along checked cycle/nonboundary prefixes before the d4 equation. -/
theorem raw_successor_projection :
    eval successor (eval b_S0_27_150_d3.comparison.projection source3.vector) =
      eval b_S0_31_153_d3.comparison.projection target3.vector := by
  exact (successor_identity _).trans (source_endpoint.trans target_endpoint.symm)

theorem all_middle_coordinates (x : Vec 1) :
    x = zero ∨ x = eval b_S0_27_150_d3.comparison.projection source3.vector := by
  rw [source_endpoint]
  by_cases h : x 0 = false
  · left
    funext i
    have hi : i = 0 := Fin.ext (by omega)
    subst i
    exact h
  · right
    funext i
    have hi : i = 0 := Fin.ext (by omega)
    subst i
    exact Bool.eq_true_of_not_eq_false h

#print axioms source_E4
#print axioms target_E4
#print axioms raw_successor_projection
#print axioms all_middle_coordinates
end Row3743Successor.Links
