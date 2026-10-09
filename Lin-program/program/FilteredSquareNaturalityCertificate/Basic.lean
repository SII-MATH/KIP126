import FilteredTwoTermNaturality.Basic
import FiniteFilteredSquareCertificateCompleteness.Basic
import LinProgramCertificates.Tactic

namespace FilteredSquareNaturalityCertificate
open FiniteFilteredSquareCertificates FilteredTwoTermSequence

/-- The page maps are constructed from the exact four supplied finite maps. -/
def square (D : Data) (h : WellFormed D) :
    FilteredTwoTermNaturality.Square (mapF D h) (mapG D h) :=
  ⟨mapP D h,mapQ D h,h.commutes⟩

def ResultValid (D : Data) : Prop := ∃ h : WellFormed D,
  ∀ n t, ∀ x : Page (filtrationA D h) (filtrationB D h) (mapF D h) n t,
    FilteredTwoTermNaturality.pageMap (square D h) n (t+n)
        (pageD (filtrationA D h) (filtrationB D h) (mapF D h) n t x) =
      pageD (filtrationC D h) (filtrationD D h) (mapG D h) n t
        (FilteredTwoTermNaturality.pageMap (square D h) n t x)

theorem of_wellFormed (D : Data) (h : WellFormed D) : ResultValid D :=
  ⟨h,fun n t x => FilteredTwoTermNaturality.pageD_natural (square D h) n t x⟩

theorem check_sound (D : Data) (cert : Certificate D)
    (accepted : FiniteFilteredSquareCertificates.check D cert = true) : ResultValid D :=
  of_wellFormed D
    (FiniteFilteredSquareCertificateCompleteness.check_premises D cert accepted).wellFormed

instance (D : Data) : LinProgramCertificates.CertificateVerifier (ResultValid D) where
  Cert := Certificate D
  check := FiniteFilteredSquareCertificates.check D
  sound := check_sound D

/-- This interface reuses the square certificate; its extra extension
premises are sufficient but unnecessary for naturality alone. -/
macro "filtered_naturality_cert" " using " cert:term : tactic => `(tactic| lin_cert using $cert)

#print axioms of_wellFormed
#print axioms check_sound
end FilteredSquareNaturalityCertificate
