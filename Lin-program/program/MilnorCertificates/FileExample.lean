import MilnorCertificates.Import

open MilnorCertificates

def importedFile : Bundle := milnor_bundle% "MilnorCertificates/example.json"

example : IsMilnorProduct importedFile.certificate.window
    importedFile.left importedFile.right importedFile.output := by
  milnor_cert using importedFile.certificate
