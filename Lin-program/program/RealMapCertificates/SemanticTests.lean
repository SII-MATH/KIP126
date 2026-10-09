import RealMapCertificates.SemanticExamples
namespace RealMapCertificates
open SemanticExamples
example : checkSemanticWire { s1t1 with entries := [false] } = false := by decide
example : checkSemanticWire { s1t1 with source := [] } = false := by decide
example : checkSemanticWire { s1t1 with target := [] } = false := by decide
example : checkSemanticWire { s1t1 with images := [] } = false := by decide
example : checkSemanticWire { s1t1 with images := s1t1.images ++ s1t1.images } = false := by decide
example : checkSemanticWire { s1t1 with images := [(0, [[1]])] } = false := by decide
end RealMapCertificates
