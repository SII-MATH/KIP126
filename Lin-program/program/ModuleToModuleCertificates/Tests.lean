import ModuleToModuleCertificates.Actual
namespace ModuleToModuleCertificates
open Actual
example : checkWire { s0t0 with entries := [false] } = false := by decide
example : checkWire { s0t0 with images := [] } = false := by decide
example : checkWire { s0t0 with targetT := 1 } = false := by decide
example : checkWire { s0t0 with target := [] } = false := by decide
#eval do
  let text ← IO.FS.readFile "ModuleToModuleCertificates/s0t0.json"
  for bad in [text.trimAscii.toString.replace "\"version\":1" "\"version\":1,\"version\":1",
      text.trimAscii.toString.replace "\"version\":1" "\"extra\":1,\"version\":1"] do
    match parse bad with
    | .error _ => pure ()
    | .ok _ => throw (IO.userError "malformed module-to-module map accepted")
example : checkWire { s2t10 with terms := [[]] } = false := by decide
end ModuleToModuleCertificates
