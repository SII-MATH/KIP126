import ModuleToModuleCertificates.WireSemantics
import ModuleToModuleCertificates.Actual
namespace ModuleToModuleCertificates
open Actual
example : diagnose { s0t0 with terms := [[⟨3,[]⟩]] } = some "column 0: relation index 3 out of bounds" := by decide
example : diagnose { s0t0 with entries := [false] } = some "column 0: target generator 0 polynomial coefficients disagree" := by decide
#print axioms Wire.allVectors
end ModuleToModuleCertificates
