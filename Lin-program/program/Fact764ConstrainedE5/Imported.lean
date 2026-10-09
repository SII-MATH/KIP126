import Fact764ConstrainedE5.Obstructions
import UniqueHomologyCertificates.Import

namespace Fact764ConstrainedE5.Imported
open LinearCertificates PageTransitionCertificates UniqueHomologyCertificates
open Conclusion Coordinates

def wire0 : Wire := unique_homology% "Fact764ConstrainedE5/certificate0.json"
def wire1 : Wire := unique_homology% "Fact764ConstrainedE5/certificate1.json"

theorem batch_valid : ∀ w ∈ [wire0,wire1], w.Valid :=
  checkBatch_sound [wire0,wire1] (by decide)

def certificate0 : Certificate outgoing (incoming false) named := ⟨wire0.comparison.comparison⟩
def certificate1 : Certificate outgoing (incoming true) named := ⟨wire1.comparison.comparison⟩

theorem case0 : IsUniqueNonzeroClass outgoing (incoming false) named := by
  unique_homology_cert using certificate0

theorem case1 : IsUniqueNonzeroClass outgoing (incoming true) named := by
  unique_homology_cert using certificate1

example : checkWire { wire0 with named := [true,false,false] } = false := by decide
example : checkWire { wire1 with comparison :=
    { wire1.comparison with outgoing := [false,true,true] } } = false := by decide

#print axioms case0
#print axioms case1
end Fact764ConstrainedE5.Imported
