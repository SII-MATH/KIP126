import Row2916D4Search.Comparison
import Fact713Row2916Search.CoordinateBridge

namespace Row2916D4Search.Finite
open LinearCertificates PageTransitionCertificates Comparison

def namedGenerator : Vec 2 := fun i => i.val == 0
def namedModule : Vec 1 := fun _ => true
def namedSphere : Vec 3 := fun i => i.val == 1

theorem source_name : eval source_5_38_E3 namedGenerator = namedModule := by decide
theorem top_name : eval top_13_139_E3 namedModule = namedSphere := by decide
theorem right_zero : ∀ x : Vec 1, eval right_8_40_E3 x = zero := by decide
theorem left0_zero : ∀ x : Vec 2, eval left0_5_38_E3 x = zero := by decide
theorem left1_zero : ∀ x : Vec 2, eval left1_5_38_E3 x = zero := by decide

def leftProduct (x y : Vec 2) : Vec 2 :=
  add (if x 0 then eval left0_5_38_E3 y else zero)
      (if x 1 then eval left1_5_38_E3 y else zero)
theorem whole_left_zero : ∀ x y : Vec 2, leftProduct x y = zero := by decide

abbrev sphereD3 := Fact713Row2916Search.CoordinateBridge.conditionalD3
theorem sphereD3_valid : sphereD3.Valid :=
  Fact713Row2916Search.CoordinateBridge.conditionalD3_valid
theorem sphere_name_next : eval sphereD3.comparison.projection namedSphere = namedModule := by decide
theorem sphere_name_cycle : eval (matrixOf sphereD3.k sphereD3.m sphereD3.outgoing) namedSphere = zero := by decide
theorem sphere_name_nonboundary : ¬ InImage (matrixOf sphereD3.m sphereD3.n sphereD3.incoming) namedSphere := by
  unfold InImage
  decide
theorem empty_d4_target : Ceta_17_142.h = 0 := rfl

def moduleD3 : WireComparison :=
  { version := 1, k := 2, m := 1, n := 2, h := 1,
    outgoing := [false,false], incoming := [false,false],
    inclusion := [true], projection := [true], up := [false,false], down := [false,false] }
theorem moduleD3_valid : moduleD3.Valid := by lin_cert using ()
theorem moduleD3_projection : ∀ x : Vec 1, eval moduleD3.comparison.projection x = x := by decide

def rawSphere : Nat × String × Option String × Nat := ⟨2916,"1",none,9000⟩
def rawCeta : Nat × String × Option String × Nat := ⟨4891,"1",none,9000⟩
theorem nulls_preserved : rawSphere.2.2.1 = none ∧ rawCeta.2.2.1 = none := ⟨rfl,rfl⟩

#print axioms source_name
#print axioms top_name
#print axioms right_zero
#print axioms whole_left_zero
#print axioms sphere_name_next
#print axioms sphere_name_cycle
#print axioms sphere_name_nonboundary
#print axioms nulls_preserved
#print axioms moduleD3_valid
end Row2916D4Search.Finite
