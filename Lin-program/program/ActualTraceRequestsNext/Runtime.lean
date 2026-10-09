import ActualTraceRequestsNext.Tactic

open ActualTraceRequests ActualTraceRequestsNext

private def vectors : Nat → List (List Bool)
  | 0 => [[]]
  | n + 1 => (vectors n).flatMap fun xs => [false :: xs, true :: xs]

private def oracle (spec : Specification) (q : Request) : Option String :=
  if q.version = 1 then
    if q.claim = spec.claim then
      if q.source.length = spec.source.length then
        if q.source = spec.source then
          if q.output.length = spec.output.length then
            if q.output = spec.output then none else some "output"
          else some "output.length"
        else some "source"
      else some "source.length"
    else some "claim"
  else some "version"

def main : IO Unit := do
  let mut checked := 0
  let mut located := 0
  for spec in [Fact713.spec, Fact721.First.spec, Fact721.Second.spec, Prop79.spec] do
    let good : Request := ⟨1, spec.claim, spec.source, spec.output⟩
    for version in [0, 1, 2] do
      for claim in ["fact-7.13:E9", "fact-7.21:first:E5", "fact-7.21:second:E5", "prop-7.9:noHitThrough5", "fact-7.13:E12", ""] do
        for n in List.range 7 do
          for source in vectors n do
            for m in List.range 3 do
              for output in vectors m do
                let request : Request := ⟨version, claim, source, output⟩
                let expected := oracle spec request
                unless check spec request == expected.isNone do
                  throw (IO.userError "independent exact-request oracle mismatch")
                unless (diagnose spec request).map (·.location) == expected do
                  throw (IO.userError "diagnostic priority mismatch")
                unless checkBatch spec [good, request, good] == expected.isNone do
                  throw (IO.userError "batch acceptance mismatch")
                unless (diagnoseBatch spec [good, request, good] 1).map
                    (fun x => (x.1, x.2.location)) == expected.map (fun x => (2, x)) do
                  throw (IO.userError "batch line localization mismatch")
                checked := checked + 1
                if expected.isSome then located := located + 1
    unless checkBatch spec [] && (diagnoseBatch spec [] 1).isNone do
      throw (IO.userError "empty in-memory batch semantics mismatch")
    let canonical := (Lean.toJson good).compress
    let outputField := "\"output\":" ++ (Lean.toJson good.output).compress
    let bad := [
      "", "null", "[]", "true", "{}", " " ++ canonical, canonical ++ " ",
      "{\"claim\":\"ignored\"," ++ (canonical.drop 1).toString,
      (canonical.dropEnd 1).toString ++ ",\"claim\":\"ignored\"}",
      "{\"extra\":false," ++ (canonical.drop 1).toString,
      canonical.replace "\"version\":1" "\"version\":-1",
      canonical.replace "\"version\":1" "\"version\":1.0",
      canonical.replace "\"version\":1" "\"version\":\"1\"",
      canonical.replace "\"version\":1" "\"version\":true",
      canonical.replace "\"version\":1" "\"version\":2",
      canonical.replace outputField "\"output\":[1]",
      canonical.replace outputField "\"output\":[null]",
      canonical.replace outputField "\"output\":null"]
    for candidate in bad do
      if (parseRequest candidate).isOk then
        throw (IO.userError s!"accepted malformed record: {candidate}")
    for candidate in ["", "\n", "\r\n", canonical ++ "\n\n",
        canonical ++ "\r\n", "\n" ++ canonical] do
      if (parseBatch candidate).isOk then
        throw (IO.userError "accepted malformed/empty batch")
    for index in List.range 6 do
      let prior := String.intercalate "\n" (List.replicate index canonical)
      let text := (if index = 0 then "" else prior ++ "\n") ++ "{}"
      match parseBatch text with
      | .ok _ => throw (IO.userError "accepted malformed indexed record")
      | .error error =>
        unless error.startsWith s!"line {index + 1}:" do
          throw (IO.userError "parser line mismatch")
    for size in List.range 5 do
      let text := String.intercalate "\n" (List.replicate (size + 1) canonical)
      for suffix in ["", "\n"] do
        match parseBatch (text ++ suffix) with
        | .error error => throw (IO.userError error)
        | .ok batch =>
          unless batch.length == size + 1 && checkBatch spec batch do
            throw (IO.userError "valid batch mismatch")
  IO.println s!"PASS: {checked} exact requests; {located} rejected fields and line-2 locations; 72 malformed records; 24 malformed batches; 24 parser line locations; 40 valid batches"
