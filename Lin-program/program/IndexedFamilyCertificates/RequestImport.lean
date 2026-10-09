import IndexedFamilyCertificates.Results

namespace IndexedFamilyCertificates

def parseRequest (text : String) : Except String Request := do
  let request : Request ← Lean.fromJson? (← Lean.Json.parse text)
  if (Lean.toJson request).compress != text then
    throw "request: noncanonical JSON or unknown/duplicate field"
  return request

elab "family_request% " path:str : term => do
  let text ← IO.FS.readFile path.getString
  match parseRequest text.trimAscii.toString with
  | .error error => throwError "{path.getString}: {error}"
  | .ok request => return Lean.toExpr request

end IndexedFamilyCertificates
