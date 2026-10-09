import RealMapCertificates.MatrixImport
namespace RealMapCertificates.SemanticExamples
open LinProgramCertificates
def s1t1 : WireMatrixSemantics := semantic_map% "RealMapCertificates/semantic/s1t1.json"
theorem s1t1valid : s1t1.Valid := by lin_cert using ()
def s2t4 : WireMatrixSemantics := semantic_map% "RealMapCertificates/semantic/s2t4.json"
theorem s2t4valid : s2t4.Valid := by lin_cert using ()
def s21t147 : WireMatrixSemantics := semantic_map% "RealMapCertificates/semantic/s21t147.json"
theorem s21t147valid : s21t147.Valid := by lin_cert using ()
def s25t150 : WireMatrixSemantics := semantic_map% "RealMapCertificates/semantic/s25t150.json"
theorem s25t150valid : s25t150.Valid := by lin_cert using ()
#print axioms RealMapCertificates.matrixValid_hom
end RealMapCertificates.SemanticExamples
