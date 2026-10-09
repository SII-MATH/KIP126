import ExtComplexCertificates.Basic

namespace ExtComplexCertificates
open LinearCertificates ResolutionCertificates

theorem dualOneClass : NonzeroHomClass oneOut oneIn oneSurvivor := by
  lin_cert using oneSurvivor

example : checkNonzeroHomClass oneOut oneIn (fun i => decide (i.val = 0)) oneSurvivor = false := by
  decide

/-- The functional describing a nonzero dual class vanishes on every chain boundary. -/
example (x : Vec 1) : dot oneSurvivor (eval oneIn x) = false :=
  homCycle_vanishes oneOut oneIn oneSurvivor dualOneClass.2.1 x

#print axioms ExtComplexCertificates.dual_pairing
#print axioms ExtComplexCertificates.checkNonzeroHomClass_sound

end ExtComplexCertificates
