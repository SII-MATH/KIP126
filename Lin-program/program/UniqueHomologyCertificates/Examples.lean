import UniqueHomologyCertificates.Import
import BranchReplayCertificates.QuotientConclusion

namespace UniqueHomologyCertificates.Examples
open LinearCertificates PageTransitionCertificates
open BranchReplayCertificates.QuotientConclusion

def certificate (optional : Bool) : Certificate outgoing (incoming optional) survivor :=
  ⟨comparison optional⟩

/-- These are the two explicit finite boundary choices from the existing
Fact 7.6(4) reduction. Their actual Adams meanings remain separate. -/
theorem both_boundary_choices (optional : Bool) :
    IsUniqueNonzeroClass outgoing (incoming optional) survivor := by
  cases optional <;> unique_homology_cert using certificate _

def imported : Wire := unique_homology% "UniqueHomologyCertificates/sample.json"

example : imported.Valid := by lin_cert using ()

example : checkWire { imported with named := [false, false, false, true] } = false := by decide
example : checkWire { imported with named := [] } = false := by decide
example : checkWire { imported with comparison :=
    { imported.comparison with incoming := [false,false,false,false,false,false,false,false] } } = false := by decide

#print axioms both_boundary_choices
end UniqueHomologyCertificates.Examples
