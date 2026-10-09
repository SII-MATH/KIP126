import PageTransitionCertificates.Import
namespace PageTransitionCertificates
private def rejects (s : String) : Bool :=
  match parse s with | .error _ => true | .ok _ => false
private def emptyJson : String := "{\"down\":[],\"h\":0,\"inclusion\":[],\"incoming\":[],\"k\":0,\"m\":0,\"n\":0,\"outgoing\":[],\"projection\":[],\"up\":[],\"version\":1}"
#eval if rejects emptyJson then throwError "canonical empty comparison rejected" else pure ()
#eval if rejects (emptyJson.replace "\"h\":0" "\"h\":0,\"h\":0") then pure () else throwError "duplicate accepted"
#eval if rejects (emptyJson.replace "\"h\":0" "\"extra\":0,\"h\":0") then pure () else throwError "unknown accepted"
#eval if rejects (emptyJson.replace "\"h\":0" "\"h\":-1") then pure () else throwError "negative dimension accepted"
#eval if rejects (emptyJson.replace "\"inclusion\":[]" "\"inclusion\":[true]") then pure () else throwError "shape mismatch accepted"
#eval if rejects (emptyJson.replace "\"inclusion\":[]" "\"inclusion\":[1]") then pure () else throwError "numeric bit accepted"
end PageTransitionCertificates
