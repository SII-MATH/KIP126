import ActualTraceRequests.Basic

namespace ActualTraceRequests

def parseRequest (text : String) : Except String Request := do
  let request : Request ← Lean.fromJson? (← Lean.Json.parse text)
  if request.version != 1 then throw "actual_trace: unsupported version"
  if (Lean.toJson request).compress != text then
    throw "actual_trace: noncanonical JSON or unknown/duplicate field"
  return request

def parseBatch (text : String) : Except String (List Request) := do
  let lines := text.splitOn "\n"
  let lines := if text.endsWith "\n" then lines.dropLast else lines
  if lines.isEmpty then throw "actual_trace: empty request batch"
  let mut requests := []
  for (line, index) in lines.zipIdx do
    match parseRequest line with
    | .error error => throw s!"line {index + 1}: {error}"
    | .ok request => requests := request :: requests
  return requests.reverse

elab "actual_trace_request% " path:str : term => do
  let text ← IO.FS.readFile path.getString
  match parseRequest text.trimAscii.toString with
  | .error error => throwError "{path.getString}: {error}"
  | .ok request => return Lean.toExpr request

elab "actual_trace_batch% " path:str : term => do
  let text ← IO.FS.readFile path.getString
  match parseBatch text with
  | .error error => throwError "{path.getString}: {error}"
  | .ok requests => return Lean.toExpr requests

end ActualTraceRequests
