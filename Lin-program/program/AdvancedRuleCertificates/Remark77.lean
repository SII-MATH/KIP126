import AdvancedRuleCertificates.Affine
import NamedElementCertificates.Generated

namespace AdvancedRuleCertificates.Remark77
open LinearCertificates LinProgramCertificates

/-- Actual local coordinates from the named-expression source audit at (s,t)=(9,134). -/
def knownPart : Vec 5 := fun i => i.val == 3
def possiblePart : Matrix 5 1 := fun i _ => i.val == 2

/-- Every member of the permitted affine set is nonzero, not just the displayed term. -/
theorem all_values_nonzero : Affine.Excludes possiblePart knownPart zero := by
  lin_cert using knownPart

theorem known_value_allowed : Affine.Member possiblePart knownPart knownPart := by
  lin_cert using (fun (_ : Fin 1) => false)

theorem possible_value_allowed : Affine.Member possiblePart knownPart
    (add knownPart (fun i => i.val == 2)) := by
  lin_cert using (fun (_ : Fin 1) => true)

end AdvancedRuleCertificates.Remark77
