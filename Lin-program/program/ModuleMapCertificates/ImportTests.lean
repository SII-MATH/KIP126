import ModuleMapCertificates.Imported
namespace ModuleMapCertificates
open Imported
example : checkWire { basis9 with output := [] } = false := by decide
example : checkWire { basis9 with images := [] } = false := by decide
example : checkWire { basis9 with targetT := 3 } = false := by decide
example : checkWire { basis9 with images := basis9.images ++ basis9.images } = false := by decide
example : diagnose { basis9 with images := [] } = some "missing module-generator image 1" := by decide
#eval do
  let text ← IO.FS.readFile "ModuleMapCertificates/wire/basis9.json"
  let text := text.trimAscii.toString
  for bad in [text.replace "\"version\":1" "\"version\":1,\"version\":1",
      text.replace "\"version\":1" "\"extra\":1,\"version\":1"] do
    match parse bad with
    | .error _ => pure ()
    | .ok _ => throw (IO.userError "bad module map accepted")
end ModuleMapCertificates
