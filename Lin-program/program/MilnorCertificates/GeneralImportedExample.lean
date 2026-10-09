import MilnorCertificates.GeneralTactic

namespace MilnorCertificates

def allDegreeImported : Bundle := milnor_bundle% "MilnorCertificates/example.json"

theorem imported_all_degrees : IsMilnorProductAll 2
    allDegreeImported.left allDegreeImported.right allDegreeImported.output := by
  milnor_cert_all using allDegreeImported.inferAllCertificate

example : diagnoseAll 2 [[1, 0]] [[1, 0]] []
    ⟨generate ⟨2, 1⟩, 1, 1⟩ =
      ["window does not cover the sum of input degrees"] := by decide

end MilnorCertificates
