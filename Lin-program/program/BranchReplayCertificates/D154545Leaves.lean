import LinearCertificates.Checker

namespace BranchReplayCertificates.D154545Leaves
open LinearCertificates

-- Exact columns from the released staircase with incoming length <4.
def sphereB3 : Matrix 3 2 := fun i j => i.val == j.val + 1
def sphereResidual : Vec 3 := fun i => i.val == 0
theorem sphere_obstruction : ¬ InImage sphereB3 sphereResidual := by
  lin_cert using sphereResidual

def cwB3 : Matrix 3 1 := fun i _ => i.val == 2
def cwResidual : Vec 3 := fun i => i.val == 1
theorem cw_obstruction : ¬ InImage cwB3 cwResidual := by
  lin_cert using cwResidual

def rpB3 : Matrix 6 3 := fun i j =>
  if j.val = 0 then i.val == 3 || i.val == 5
  else if j.val = 1 then i.val == 2
  else i.val == 4 || i.val == 5
def rpResidual : Vec 6 := fun i => i.val == 5
def rpSeparator : Vec 6 := fun i => i.val == 3 || i.val == 4 || i.val == 5
theorem rp_obstruction : ¬ InImage rpB3 rpResidual := by
  lin_cert using rpSeparator

-- Adding the actual incoming d4 destroys the old-page nonmembership.
def sphereB4 : Matrix 3 3 := fun i j => i.val == j.val
example : InImage sphereB4 sphereResidual := by lin_cert using sphereResidual

end BranchReplayCertificates.D154545Leaves
