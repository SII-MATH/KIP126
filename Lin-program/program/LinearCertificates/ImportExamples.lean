import LinearCertificates.Import

namespace LinearCertificates
open LinProgramCertificates

def importedImage : WireCertificate :=
  ⟨⟨3, 2, [true, false, false, true, true, true]⟩,
    [true, true, false], [true, true], "image"⟩

def importedNonimage : WireCertificate :=
  ⟨⟨3, 2, [true, false, false, true, true, true]⟩,
    [true, false, false], [true, true, true], "nonimage"⟩
example : checkWire importedImage = .ok true := by rfl
example : checkWire importedNonimage = .ok true := by rfl
example : (match (WireMatrix.mk 1 2 [true]).toMatrix with | .error _ => true | .ok _ => false) = true := by rfl
example : (match decodeVector 2 [false] with | .error _ => true | .ok _ => false) = true := by rfl
example : checkWire { importedImage with witness := [false, false] } = .ok false := by rfl
example : (match checkWire { importedImage with kind := "unknown" } with | .error _ => true | .ok _ => false) = true := by rfl

/-- Import success remains connected to exact dimensions, values and result kind. -/
example : WireValid importedImage := by lin_cert using ()
example : WireValid importedNonimage := by lin_cert using ()

def fromFile : WireCertificate := linear_certificate% "LinearCertificates/sample_image.json"
example : WireValid fromFile := by lin_cert using ()

end LinearCertificates
