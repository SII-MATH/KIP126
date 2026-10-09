import SemilinearMapCertificates.AllVectors
import SemilinearMapCertificates.Actual
namespace SemilinearMapCertificates
example : diagnose { Actual.basis0 with terms := [⟨9,[]⟩] } = some "relation index out of range" := by decide
example : diagnose { Actual.basis0 with output := [] } = some "coefficient substitution/module image/relation equality failed" := by decide
#print axioms allVectors
end SemilinearMapCertificates
