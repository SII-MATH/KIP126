import ExtComplexCertificates.Equivariant

namespace ExtComplexCertificates
open LinearCertificates ResolutionCertificates

/-- A nonzero square-zero operator on a two-dimensional space. -/
def nilpotent : Matrix 2 2 := fun i j => decide (i.val = 0 ∧ j.val = 1)
def action : Actions 1 2 := fun _ => nilpotent

theorem nilpotent_complex : EquivariantComplex action action action nilpotent nilpotent := by
  lin_cert using ()

theorem identity_equivariant : Equivariant action action (identityMatrix 2) := by
  lin_cert using ()

def identityHom : EquivariantHom action action := ⟨identityMatrix 2, identity_equivariant⟩

example : Equivariant action action (homDifferential action action action nilpotent
    nilpotent_complex.2.1 identityHom).val :=
  (homDifferential action action action nilpotent nilpotent_complex.2.1 identityHom).property

example (x : Vec 2) : eval (compose (compose (identityMatrix 2) nilpotent) nilpotent) x = zero :=
  homDifferential_squared nilpotent nilpotent nilpotent_complex.1 (identityMatrix 2) x

def projection : Matrix 2 2 := fun i j => decide (i.val = 0 ∧ j.val = 0)
example : checkEquivariant action action projection = false := by decide

#print axioms ExtComplexCertificates.checkEquivariant_sound
#print axioms ExtComplexCertificates.equivariant_precompose
#print axioms ExtComplexCertificates.homDifferential_squared

end ExtComplexCertificates
