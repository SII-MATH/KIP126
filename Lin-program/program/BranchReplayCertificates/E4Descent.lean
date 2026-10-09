import PageTransitionCertificates.InducedMap
import BranchReplayCertificates.MapRefutation

namespace BranchReplayCertificates.E4Descent
open LinearCertificates PageTransitionCertificates

/-!
These matrices model the final database's finite page-4 selection. The
comparison theorems do not identify them with the topological Adams page.
Unknown d4 values at level 9996 are not assigned zero: only survival BEFORE
d4 is represented. Unknown values at an earlier page would prevent this
selection from representing all page-4 cycles without further evidence.
-/

def sphereOut : Matrix 1 4 := fun _ j => j.val < 2
def sphereIn : Matrix 4 0 := fun _ j => Fin.elim0 j
def sphereComparison : Comparison 1 4 0 3 where
  inclusion := fun i j => if j.val = 0 then i.val < 2 else i.val == j.val + 1
  projection := fun i j => if i.val = 0 then j.val == 0 else j.val == i.val + 1
  up := fun i _ => Fin.elim0 i
  down := fun i _ => i.val == 1

def tmfOut : Matrix 0 2 := fun i _ => Fin.elim0 i
def tmfIn : Matrix 2 1 := fun _ _ => true
def tmfComparison : Comparison 0 2 1 1 where
  inclusion := fun i _ => i.val == 1
  projection := fun _ _ => true
  up := fun _ j => j.val == 0
  down := fun _ j => Fin.elim0 j

theorem sphere_checked : HomologyComparison sphereOut sphereIn sphereComparison := by lin_cert using ()
theorem tmf_checked : HomologyComparison tmfOut tmfIn tmfComparison := by lin_cert using ()

def upper : Matrix 0 1 := fun i _ => Fin.elim0 i
def lower : Matrix 1 0 := fun _ j => Fin.elim0 j

theorem descent_checked : CompatibleMap sphereOut sphereIn tmfOut tmfIn
    MapRefutation.targetMap upper lower := by lin_cert using ()

def onQuotients : Homology sphereOut sphereIn → Homology tmfOut tmfIn :=
  inducedMap descent_checked

theorem quotient_coordinates (x : Homology sphereOut sphereIn) :
    (homologyEquivalence tmfOut tmfIn tmfComparison tmf_checked).toCoordinates (onQuotients x) =
    eval (coordinateMap sphereComparison tmfComparison MapRefutation.targetMap)
      ((homologyEquivalence sphereOut sphereIn sphereComparison sphere_checked).toCoordinates x) :=
  induced_coordinates_all descent_checked sphereComparison tmfComparison sphere_checked tmf_checked x

-- The induced map is [1,1,0] on the three finite selected quotient coordinates.
example : coordinateMap sphereComparison tmfComparison MapRefutation.targetMap =
    (fun (_ : Fin 1) (j : Fin 3) => decide (j.val < 2)) := by
  funext i j
  have hi : i = 0 := by apply Fin.ext; have := i.isLt; omega
  subst i
  obtain ⟨j,hj⟩ := j
  have hh : j=0 ∨ j=1 ∨ j=2 := by omega
  rcases hh with h|h|h <;> subst j <;> rfl

-- Stored source selection at (21,147): all vectors, with local2 an incoming d3 boundary.
def sourceOut : Matrix 0 3 := fun i _ => Fin.elim0 i
def sourceIn : Matrix 3 1 := fun i _ => i.val == 2
def sourceComparison : Comparison 0 3 1 2 where
  inclusion := fun i j => i.val == j.val
  projection := fun i j => i.val == j.val
  up := fun _ j => j.val == 2
  down := fun _ j => Fin.elim0 j
theorem source_checked : HomologyComparison sourceOut sourceIn sourceComparison := by lin_cert using ()

end BranchReplayCertificates.E4Descent
