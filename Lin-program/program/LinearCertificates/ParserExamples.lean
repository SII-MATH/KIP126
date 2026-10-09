import LinearCertificates.Import

namespace LinearCertificates
private def rejected (text : String) : Bool :=
  match parseCertificate text with | .error _ => true | .ok _ => false

#eval if rejected "{\"kind\":\"image\",\"kind\":\"image\",\"matrix\":{\"cols\":0,\"entries\":[],\"rows\":0},\"target\":[],\"witness\":[]}" = true then pure () else throwError "parser regression"
#eval if rejected "{\"extra\":1,\"kind\":\"image\",\"matrix\":{\"cols\":0,\"entries\":[],\"rows\":0},\"target\":[],\"witness\":[]}" = true then pure () else throwError "parser regression"
#eval if rejected "{\"kind\":\"image\",\"matrix\":{\"cols\":1,\"entries\":[1],\"rows\":1},\"target\":[true],\"witness\":[true]}" = true then pure () else throwError "parser regression"
#eval if rejected "{\"kind\":\"image\",\"matrix\":{\"cols\":-1,\"entries\":[],\"rows\":0},\"target\":[],\"witness\":[]}" = true then pure () else throwError "parser regression"
#eval if rejected "{\"kind\":\"image\",\"matrix\":{\"cols\":0,\"entries\":[],\"rows\":0},\"target\":[],\"witness\":[]}" = false then pure () else throwError "parser regression"

#print axioms checkWire_sound
end LinearCertificates
