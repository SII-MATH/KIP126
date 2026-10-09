import PageTransitionCertificates.TrajectoryImport
namespace PageTransitionCertificates
open LinProgramCertificates
def importedTrajectory : WireTrajectory := trajectory_bundle% "PageTransitionCertificates/trajectory_sample.json"
example : importedTrajectory.Valid := by lin_cert using ()
example : checkWireTrajectory {importedTrajectory with version := 2} = false := by decide
example : checkWireTrajectory {importedTrajectory with stages := []} = false := by decide
example : checkWireTrajectory {importedTrajectory with firstPage := 0} = false := by decide

#eval do
  let text ← IO.FS.readFile "PageTransitionCertificates/trajectory_sample.json"
  for bad in [text.replace "\"version\":1" "\"version\":1,\"version\":1",
      text.replace "\"representative\":[true,false]" "\"representative\":[false,true]"] do
    match parseTrajectory bad.trimAscii.toString with
    | .error _ => pure ()
    | .ok _ => throw (IO.userError "invalid trajectory accepted")
#print axioms checkWireTrajectory_sound
end PageTransitionCertificates
