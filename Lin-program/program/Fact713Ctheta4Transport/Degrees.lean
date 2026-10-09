import Fact713Ctheta4Transport.Comparison

namespace Fact713Ctheta4Transport.Degrees
open LinearCertificates NamedElementCertificates ModuleToModuleCertificates

def sourceGeneratorDegree : Fin 2 → Int := fun i => if i.val = 0 then 0 else 31
def targetGeneratorDegree : Fin 1 → Int := fun _ => 0

def GeneratorDegreeValid (filtration suspension : Int) : Prop :=
  filtration = 0 ∧ sourceGeneratorDegree 1 + filtration - suspension = targetGeneratorDegree 0
instance (f s : Int) : Decidable (GeneratorDegreeValid f s) := inferInstanceAs (Decidable (_ ∧ _))

theorem top_cell_degree : GeneratorDegreeValid 0 31 := by decide
theorem reject_database_metadata : ¬ GeneratorDegreeValid 0 30 := by decide
theorem forced_suspension (s : Int) (h : GeneratorDegreeValid 0 s) : s = 31 := by
  simp [GeneratorDegreeValid,sourceGeneratorDegree,targetGeneratorDegree] at h
  omega

def sourceRaw : Nat × String × Option String × Nat := ⟨8810,"0,1,2",none,9995⟩
def sphereRaw : Nat × String × Option String × Nat := ⟨2994,"0,1,2",none,9000⟩
theorem source_null : sourceRaw.2.2.1 = none := rfl
theorem sphere_null : sphereRaw.2.2.1 = none := rfl

theorem generator_map : Maps.m17_169.algebra.images = [[[]],[[[]]]] := rfl
theorem named_degrees : Maps.m17_169.sourceT = 169 ∧ Maps.m17_169.targetT = 138 ∧
    Maps.m17_169.suspension = 31 := ⟨rfl,rfl,rfl⟩

#print axioms top_cell_degree
#print axioms reject_database_metadata
#print axioms forced_suspension
#print axioms generator_map
end Fact713Ctheta4Transport.Degrees
