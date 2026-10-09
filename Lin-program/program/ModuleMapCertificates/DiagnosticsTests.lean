import ModuleMapCertificates.MatrixDiagnostics
import ModuleMapCertificates.MatrixActual

namespace ModuleMapCertificates
open MatrixActual

example : diagnoseMatrix s2t9 = [] := by decide
example : (diagnoseMatrix { s2t9 with images := [] }).contains
    "column 0: missing module generator 3" = true := by decide

end ModuleMapCertificates
