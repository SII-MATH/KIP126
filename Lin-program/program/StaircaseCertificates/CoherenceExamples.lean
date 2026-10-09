import StaircaseCertificates.Coherence
import StaircaseCertificates.FiniteClaims

namespace StaircaseCertificates.Named
open LinProgramCertificates

example : CoherentThrough case0Filtered 6 := by lin_cert using ()
example : CoherentThrough case5Filtered 12 := by lin_cert using ()
example : CoherentThrough case10Filtered 5 := by lin_cert using ()
example : CoherentThrough case11Filtered 6 := by lin_cert using ()

-- A boundary outside the cycle subspace is rejected even with an invertible basis.
def inconsistent : FilteredModel 1 :=
  ⟨case11Basis, fun _ _ => false, fun _ _ => true⟩
example : checkCoherent inconsistent 2 = false := by decide

#print axioms checkCoherent_sound
end StaircaseCertificates.Named
