import ModuleMapCertificates.Basic
namespace ModuleMapCertificates
open NamedElementCertificates
example : NamedElementCertificates.check [] (substitute (fun _ => [[1]]) ⟨[0],3⟩) [[0,1]] [] = true := by decide
example : NamedElementCertificates.check [] (substitute (fun _ => [[1]]) ⟨[0],3⟩) [[0,3]] [] = false := by decide
end ModuleMapCertificates
