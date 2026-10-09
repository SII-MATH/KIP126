import Fact713DC2h6ComparisonFamily.GraphData

open Fact713DC2h6ComparisonFamily.GraphCoverage

/-- Runtime parser tests produce no mathematical theorem. -/
def main : IO Unit := do
  let text ← IO.FS.readFile "Fact713DC2h6ComparisonFamily/graph-proof.json"
  let canonical := text.trimAscii.toString
  match parseEnvelope canonical with
  | .error error => throw (IO.userError error)
  | .ok input =>
    if input.requested.length != 1420 then throw (IO.userError "valid graph count")
  let bad := [
    ("duplicate", "{\"version\":1," ++ (canonical.drop 1).toString),
    ("unknown", "{\"unknown\":0," ++ (canonical.drop 1).toString),
    ("version", canonical.replace "\"version\":1" "\"version\":2"),
    ("noncanonical", " " ++ canonical)]
  for (label,candidate) in bad do
    match parseEnvelope candidate with
    | .error _ => pure ()
    | .ok _ => throw (IO.userError s!"accepted {label} graph input")
  IO.println "PASS: canonical graph accepted; duplicate, unknown, version, noncanonical rejected"
