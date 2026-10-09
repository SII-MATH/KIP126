import PageTransitionCertificates.InducedImport
namespace PageTransitionCertificates
open LinProgramCertificates

def importedInduced : WireInducedMap := induced_map% "PageTransitionCertificates/induced_sample.json"
example : importedInduced.Valid := by lin_cert using ()
example : checkInducedWire { importedInduced with version := 2 } = false := by decide
example : checkInducedWire { importedInduced with middle := [] } = false := by decide
example : checkInducedWire { importedInduced with lower := [false] } = false := by decide
example : checkInducedWire { importedInduced with upper := [false] } = false := by decide
example : checkInducedWire { importedInduced with
    source := { importedInduced.source with up := [false,false,false,false] } } = false := by decide
example : checkInducedWire { importedInduced with
    target := { importedInduced.target with inclusion := [] } } = false := by decide

private def fails (s : String) : Bool := match parseInduced s with | .error _ => true | .ok _ => false
#eval do
  let text ← IO.FS.readFile "PageTransitionCertificates/induced_sample.json"
  let text := text.trimAscii.toString
  if fails text then throw (IO.userError "valid induced map rejected")
  for bad in [text.replace "\"version\":1" "\"version\":1,\"version\":1",
      text.replace "\"version\":1" "\"extra\":false,\"version\":1",
      text.replace "\"lower\":[true]" "\"lower\":[]",
      text.replace "\"upper\":[true]" "\"upper\":[1]"] do
    if !fails bad then throw (IO.userError "malformed induced map accepted")

#print axioms checkInducedWire_sound
#print axioms WireInducedMap.coordinates
end PageTransitionCertificates
