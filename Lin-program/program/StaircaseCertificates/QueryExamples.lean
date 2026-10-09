import StaircaseCertificates.Basic

namespace StaircaseCertificates
open LinearCertificates LinProgramCertificates

def changeBasis : BasisCertificate 2 :=
  ⟨fun i j => i.val == j.val || j.val == 1,
   fun i j => i.val == j.val || j.val == 1⟩
def firstOnly : Fin 2 → Bool := fun i => i.val == 0

def e0 : Vec 2 := fun i => i.val == 0
def e1 : Vec 2 := fun i => i.val == 1

example : IsBasis changeBasis := by lin_cert using ()
example : InSelectedSpan changeBasis.basis firstOnly e0 := by lin_cert using ()
example : ¬ InSelectedSpan changeBasis.basis firstOnly e1 :=
  checkNotSelected_sound changeBasis firstOnly e1 ⟨1, by decide⟩ (by decide)
example : checkSelected changeBasis firstOnly e1 = false := by decide
#print axioms checkBasis_sound
#print axioms selected_iff_coordinates
#print axioms checkNotSelected_sound
end StaircaseCertificates
