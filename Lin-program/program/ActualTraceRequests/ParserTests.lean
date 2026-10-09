import ActualTraceRequests.Fact715
import ActualTraceRequests.Fact719

open ActualTraceRequests

def main : IO Unit := do
  let good := (Lean.toJson (⟨1, "fact-7.15", [false,false,false,true,false], [true]⟩ : Request)).compress
  match parseRequest good with
  | .ok request =>
    if !check Fact715.spec request then throw (IO.userError "valid request rejected")
  | .error error => throw (IO.userError error)
  let bad := [
    ("duplicate", "{\"version\":1," ++ (good.drop 1).toString),
    ("unknown", "{\"unknown\":0," ++ (good.drop 1).toString),
    ("version", good.replace "\"version\":1" "\"version\":2"),
    ("whitespace", " " ++ good),
    ("type", good.replace "\"version\":1" "\"version\":true")]
  for (label, candidate) in bad do
    match parseRequest candidate with
    | .error _ => pure ()
    | .ok _ => throw (IO.userError s!"accepted malformed {label} request")
  for (text, size) in [(good,1), (good ++ "\n",1), (good ++ "\n" ++ good ++ "\n",2)] do
    match parseBatch text with
    | .error error => throw (IO.userError error)
    | .ok batch =>
      if batch.length != size then throw (IO.userError "batch size mismatch")
  for text in ["", "\n", good ++ "\n\n", good ++ "\n{}"] do
    match parseBatch text with
    | .error _ => pure ()
    | .ok _ => throw (IO.userError "accepted malformed batch")
  match parseBatch (good ++ "\n{}") with
  | .error message =>
    if !(message.startsWith "line 2:") then throw (IO.userError "missing line number")
  | .ok _ => throw (IO.userError "accepted corrupt second line")
  IO.println "PASS: canonical request and batches; five malformed records and four malformed batches rejected; line 2 located"
