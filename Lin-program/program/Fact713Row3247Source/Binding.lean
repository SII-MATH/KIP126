import Fact713Row3247Source.Actual

namespace Fact713Row3247Source.Binding
open LinearCertificates PageTransitionCertificates JointDetection Comparison

def rawSphere : Vec 3 := fun i => i.val == 0 || i.val == 1
def historySphere : Vec 3 := fun _ => true
def boundaryCorrection : Vec 3 := fun i => i.val == 2
theorem raw_cycle : InKernel (out S0_18_141) rawSphere := by
  change eval (out S0_18_141) rawSphere = zero
  decide
theorem history_cycle : InKernel (out S0_18_141) historySphere := by
  change eval (out S0_18_141) historySphere = zero
  decide
theorem correction_boundary : InImage (inc S0_18_141) boundaryCorrection := by
  exact (show ∃ x : Vec S0_18_141.n, eval (inc S0_18_141) x = boundaryCorrection from by decide)

def rawClass : Q S0_18_141 := Quot.mk _ (⟨rawSphere,raw_cycle⟩ : PageTransitionCertificates.Cycle _)
def historyClass : Q S0_18_141 := Quot.mk _ (⟨historySphere,history_cycle⟩ : PageTransitionCertificates.Cycle _)
theorem raw_history_same : rawClass = historyClass := by
  apply Quot.sound
  change InImage (inc S0_18_141) (add rawSphere historySphere)
  obtain ⟨x,hx⟩ := correction_boundary
  exact ⟨x,hx.trans (show boundaryCorrection = add rawSphere historySphere from by decide)⟩

theorem raw_named : rawClass = namedSphere := by
  have coord : (coordinates _ S0_18_141_valid).toCoordinates rawClass =
      (coordinates _ S0_18_141_valid).toCoordinates namedSphere := by decide
  exact ((coordinates _ S0_18_141_valid).leftInverse _).symm.trans
    ((congrArg (coordinates _ S0_18_141_valid).fromCoordinates coord).trans
      ((coordinates _ S0_18_141_valid).leftInverse _))

def rawH0Product : Vec 9 := fun i => i.val == 3
def rawD0Product : Vec 3 := fun i => i.val == 0
theorem products_raw_coordinates :
    eval Cnu_19_146.comparison.projection rawH0Product = (fun i => i.val == 2) ∧
    eval Cnu_22_163.comparison.projection rawD0Product = (fun i => i.val == 0) := by decide

def row3247 : Nat × String × Option String × Nat := ⟨3247,"0,1",none,9000⟩
def row7669 : Nat × String × Option String × Nat := ⟨7669,"0",none,9000⟩
def row5286 : Nat × String × Option String × Nat := ⟨5286,"3",some "2",7⟩
theorem raw_nulls : row3247.2.2.1 = none ∧ row7669.2.2.1 = none := by decide

#print axioms correction_boundary
#print axioms raw_history_same
#print axioms raw_named
#print axioms products_raw_coordinates
#print axioms raw_nulls
end Fact713Row3247Source.Binding
