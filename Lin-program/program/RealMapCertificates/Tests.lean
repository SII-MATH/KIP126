import RealMapCertificates.Substitution
namespace RealMapCertificates
open NamedElementCertificates
example : NamedElementCertificates.check [] (substituteMonomial (fun _ => [[0]]) [0]) [[1]] [] = false := by decide
example : NamedElementCertificates.check [] (substituteMonomial (fun _ => [[0]]) [0,0]) [[0,0]] [] = true := by decide
#print axioms substitute_hom
#print axioms mapEvaluation_hom
end RealMapCertificates
