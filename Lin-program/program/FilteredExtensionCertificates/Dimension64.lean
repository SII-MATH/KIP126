import FilteredExtensionCertificates.Import

namespace FilteredExtensionCertificates.Dimension64
open LinearCertificates RepresentativeSquareCertificates
set_option maxRecDepth 100000
set_option maxHeartbeats 32000000

elab "dimension64_data%" : term => do
  let text ← IO.FS.readFile "FilteredExtensionProducer/case_dimension64.json"
  match parse text.trimAscii.toString with
  | .ok w => return Lean.toExpr w
  | .error e => throwError "{e}"

def wire : WireCertificate := dimension64_data%
#check wire


end FilteredExtensionCertificates.Dimension64
