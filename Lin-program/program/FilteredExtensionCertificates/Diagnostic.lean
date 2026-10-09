import FilteredExtensionCertificates.Import

namespace FilteredExtensionCertificates

instance (D : Data) : LinProgramCertificates.DiagnosticCertificateVerifier (ResultValid D) where
  Cert := Certificate D
  check := check D
  sound := check_sound D
  diagnose := diagnose D

end FilteredExtensionCertificates
