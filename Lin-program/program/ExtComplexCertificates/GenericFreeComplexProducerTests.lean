import ExtComplexCertificates.GenericFreeComplexImport

open ExtComplexCertificates.GenericFreeComplex

private def rejectFile (path : String) : IO Unit := do
  let text ← IO.FS.readFile path
  match decodeWire text.trimAscii.toString with
  | .ok _ => throw (IO.userError s!"accepted malformed fixture: {path}")
  | .error e => IO.println s!"rejected {path}: {e}"

#eval rejectFile "GenericFreeComplexProducer/tampered_product.json"
#eval rejectFile "GenericFreeComplexProducer/tampered_grading.json"
#eval rejectFile "GenericFreeComplexProducer/tampered_dimensions.json"
